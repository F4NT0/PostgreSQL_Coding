--
-- CRIANDO OU ALTERANDO UMA FUNÇÃO
--

-- Criamos uma Tabela com a coluna nome
CREATE TABLE a (nome VARCHAR(255) NOT NULL);

-- Agora iremos construir uma Função que cria ou altera
CREATE OR REPLACE FUNCTION cria_a(nome VARCHAR) RETURNS VARCHAR AS '
	INSERT INTO a(nome) VALUES(cria_a.nome);
	SELECT a.nome FROM a;
' LANGUAGE SQL;

-- ATENÇÃO: Não se pode alterar o tipo de retorno, mas de resto pode alterar.
-- Para alterar o retorno, deve fazer um DROP e depois Recriar a função acima
DROP FUNCTION cria_a;