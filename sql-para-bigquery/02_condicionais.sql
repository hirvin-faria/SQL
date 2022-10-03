# Comandos Condicionais

-- Case | Sintaxe: CASE WHEN condicao THEN valor ELSE valose END
SELECT 
  id,
  name,
  CASE
    WHEN name = 'Moda e Acessórios' THEN 'Sim, é moda e acessórios'
    WHEN name = 'Livros' THEN 'Sim, é livros'
    ELSE 'Não encontrado'
  END AS caso1
FROM `sandbox.estudo_sql_analise_dados_big_query.categories`;

SELECT DISTINCT
  state,
  CASE
    WHEN state in ('São Paulo', 'Rio de Janeiro', 'Minas Gerais', 'Espírito Santo') then 'Sudeste'
    ELSE ''
  END AS regiao
FROM `sandbox.estudo_sql_analise_dados_big_query.customers`;


-- if | Sintaxe: IF(condição, valor, else)
SELECT 
  id,
  name,
  IF(name = 'Moda e Acessórios', 'Sim, é moda e acessórios', null) AS if1
FROM `sandbox.estudo_sql_analise_dados_big_query.categories`;


-- coalese | retorna o primeiro argumento não nulo | Sintaxe: COALESCE(condicao não nula 1, condicao não nula 2, ...)
SELECT
  id,
  first_name,
  email,
  state,
  COALESCE(state, 'Opa, estado nulo') AS state_modificado
FROM `sandbox.estudo_sql_analise_dados_big_query.customers`;