--
-- LIDANDO COM NOMES IGUAIS
--

-- Criamos uma Tabela com a coluna nome
CREATE TABLE a (nome VARCHAR(255) NOT NULL);

-- Podemos adicionar dados nessa tabela por Funções
-- Vamos utilizar o mesmo nome para poder pegar os dados
-- Sempre que precisar retor q	
CREATE FUNCTION cria_a(nome VARCHAR) RETURNS VARCHAR AS '
	INSERT INTO a(nome) VALUES(cria_a.nome);
	SELECT a.nome FROM a;
' LANGUAGE SQL;

-- cria_a.nome pega o valor do parâmetro de entrada nome e
-- a.nome é para armazenar na tabela
SELECT cria_a('Fanto');