-- 1) Retorne em uma só consulta os valores de média, máximo, mínimo, contagem e soma do campo ‘total_price’ da tabela items.

select
  avg(total_price) as preco_medio,
  max(total_price) as preco_maximo,
  min(total_price) as preco_minimo,
  count(distinct total_price) as contagem_precos,
  sum(total_price) as soma_precos
from `sandbox.estudo_sql_analise_dados_big_query.items`;


-- 2) Retorne a quantidade de pedidos de cada status por dia, ordenando pelo dia, de forma decrescente.

select
  count(id) as pedidos,
  status,
  date(created_at) as dia
from `sandbox.estudo_sql_analise_dados_big_query.orders`
group by status, dia
order by dia desc;


-- 3) Retorne a quantidade total de itens por pedido.

select 
  sum(order_id) as total_items,
  order_id 
from `sandbox.estudo_sql_analise_dados_big_query.items`
group by order_id;


-- 4) Na base de dados ‘covid19_italy’ e tabela ‘data_by_region’ encontre a coluna ‘tests_performed’.
-- Retorne a soma de testes realizados por dia (considerando todas as regiões).

select 
  sum(tests_performed) as testes_realizados,
  date(date) as dia
from `bigquery-public-data`.covid19_italy.data_by_region
group by dia;


-- 5) DESAFIO: Retorne a diferença da soma de recuperados (coluna recovered) com
-- a soma de mortes (coluna deaths) por dia, apenas para a região Toscana.

select 
  sum(recovered) - sum(deaths) as diferenca,
  date(date) as dia
from `bigquery-public-data`.covid19_italy.data_by_region
where region_name = 'Toscana'
group by dia
order by dia;

