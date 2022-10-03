select id, first_name from `sandbox.estudo_sql_analise_dados_big_query.customers` limit 20;

-- Select Distinct

select distinct status
  from sandbox.estudo_sql_analise_dados_big_query.orders;

select distinct first_name, last_name from `sandbox.estudo_sql_analise_dados_big_query.customers`;

select distinct extract(year from created_at) as ano from `sandbox.estudo_sql_analise_dados_big_query.orders`;


-- Operadores

select * from `sandbox.estudo_sql_analise_dados_big_query.products`
where price between 20 and 80;

select first_name from `sandbox.estudo_sql_analise_dados_big_query.customers`
where first_name like 'M%';


select * from `sandbox.estudo_sql_analise_dados_big_query.customers`
where state like 'Rio%';


select * from `sandbox.estudo_sql_analise_dados_big_query.customers`
where state in ('Alagoas', 'Piauí');


-- Comandos de Restrição

select distinct quantity from `sandbox.estudo_sql_analise_dados_big_query.items`;

select * from `sandbox.estudo_sql_analise_dados_big_query.items`
where quantity > 3;