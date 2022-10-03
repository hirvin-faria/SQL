-- join

select 
  i.id as item_id,
  i.order_id,
  i.quantity,
  i.total_price,
  i.product_id,
  p.id,
  p.name
from `sandbox.estudo_sql_analise_dados_big_query.items` as i
join `sandbox.estudo_sql_analise_dados_big_query.products` as p
on i.product_id = p.id;