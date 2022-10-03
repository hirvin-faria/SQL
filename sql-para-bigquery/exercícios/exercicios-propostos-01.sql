-- 1) Quero como resultado uma tabela que contenha o id, país e estado de todos os nossos clientes.

select id, country, state from `sandbox.estudo_sql_analise_dados_big_query.customers`;


-- 2) Selecione os preços distintos de nossos produtos, mas ordenados de forma decrescente, utilizando o DISTINCT e ORDER BY.

select distinct price from `sandbox.estudo_sql_analise_dados_big_query.products` order by price desc;


-- 3) Retorne a data (naquele formato ANO-MÊS-DIA) de criação dos primeiros 5 registros da tabela customers.

select date(created_at) as data_criacao from `sandbox.estudo_sql_analise_dados_big_query.customers` limit 5;


-- 4) O time de marketing deseja fazer uma campanha em um estado específico. Para isso, eles te pedem os e-mails de todos os clientes que moram no Piauí.

select id, email from `sandbox.estudo_sql_analise_dados_big_query.customers` where state = 'Piauí';


-- 5) Vá até a tabela items e retorne o campo ‘total_price’ de forma distinta, mas utilizando o GROUP BY.

select total_price from `sandbox.estudo_sql_analise_dados_big_query.items` group by total_price;
select distinct total_price from `sandbox.estudo_sql_analise_dados_big_query.items`;


-- 6) Selecione todos os pedidos em que o status é cancelado OU entrega_pendente. Retorne também o mesmo resultado, mas utilizando o operador IN.

select id, status from `sandbox.estudo_sql_analise_dados_big_query.orders`
where status in ('cancelado', 'entrega_pendente');


-- 7) Retorne todos os registros em que o campo ‘additionals’ é nulo na tabela customers.

select id from `sandbox.estudo_sql_analise_dados_big_query.customers`
  where additionals is null
  order by id;


-- 8) Utilize o join para trazer a informação de status do pedido juntamente das informações (colunas) da tabela de itens.

select 
  itens.id,
  itens.order_id,
  itens.product_id,
  itens.quantity,
  itens.total_price,
  orders.status
from `sandbox.estudo_sql_analise_dados_big_query.items` as itens
join `sandbox.estudo_sql_analise_dados_big_query.orders` as orders
  on itens.order_id = orders.id;


-- 9) Na tabela de pedidos, além das colunas existentes, quero também informações de nome do cliente e seu telefone.

select
  orders.id,
  orders.customer_id,
  orders.status,
  orders.created_at,
  customers.first_name,
  customers.cell_phone
from `sandbox.estudo_sql_analise_dados_big_query.orders` as orders
join `sandbox.estudo_sql_analise_dados_big_query.customers` as customers
  on orders.customer_id = customers.id;


-- 10) DESAFIO: Pesquise sobre o comando like e retorne os nomes dos produtos que tenham somente 4 caracteres.

select name from `sandbox.estudo_sql_analise_dados_big_query.products` where name like '____';


