-- Agrupamentos e Ordenacoes

# Group By | agrupar por | Sintaxe:

select
  customer_id,
from `sandbox.estudo_sql_analise_dados_big_query.orders`
group by customer_id;

select
  date(created_at) as dia,
  count(id) as quantidade_pedidos,
from `sandbox.estudo_sql_analise_dados_big_query.orders`
group by 1;
-- é o mesmo que
select
  date(created_at) as dia,
  count(id) as quantidade_pedidos,
from `sandbox.estudo_sql_analise_dados_big_query.orders`
group by dia;

select
  order_id as pedido,
  count(distinct product_id) as quantidade_produtos,
from `sandbox.estudo_sql_analise_dados_big_query.items`
group by pedido;