-- Order By | ordenar por | Sintaxe:
select * from `sandbox.estudo_sql_analise_dados_big_query.categories`
order by id desc;

select * from `sandbox.estudo_sql_analise_dados_big_query.orders`
order by customer_id asc, status desc;

select
  date(created_at) as dia,
  count(id) as quantidade_pedidos,
from `sandbox.estudo_sql_analise_dados_big_query.orders`
group by dia
order by quantidade_pedidos desc;

select
  order_id as pedido,
  count(distinct product_id) as quantidade_produtos,
from `sandbox.estudo_sql_analise_dados_big_query.items`
group by pedido
order by quantidade_produtos desc;