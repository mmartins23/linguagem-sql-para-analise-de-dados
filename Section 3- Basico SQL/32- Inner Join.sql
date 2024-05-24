-- Seleciona registros únicos combinando dados das tabelas 'acessos' e 'compras'
SELECT DISTINCT a.user_id AS table_acessos,  -- Seleciona o user_id da tabela 'acessos' e renomeia a coluna como 'table_acessos'
                a.name,                      -- Seleciona a coluna 'name' da tabela 'acessos'
                c.user_id AS table_compras   -- Seleciona o user_id da tabela 'compras' e renomeia a coluna como 'table_compras'
FROM relationship.acessos AS a               -- Especifica a tabela 'acessos' no banco de dados 'relationship' e a referencia como 'a'
JOIN relationship.compras AS c               -- Realiza uma junção com a tabela 'compras' no banco de dados 'relationship' e a referencia como 'c'
ON a.user_id = c.user_id;                    -- Define a condição de junção: somente combina os registros onde o user_id em 'acessos' é igual ao user_id em 'compras'