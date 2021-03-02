--
-- UTILIZANDO $$ NAS FUNÇÕES
--

-- $$ é o que chamamos de delimitador da Função

-- Criamos uma Tabela com a coluna nome
CREATE TABLE a (nome VARCHAR(255) NOT NULL);

-- Utilizamos $$ em Funções para podermos abrir e fechar o corpo da Função
-- Isso serve para podermos utilizar Strings dentro de nossa Função
-- onde com '' podia dar problemas
-- isso facilita a poder aceitar qualquer tipo de dado no corpo da Função
-- é opcional, mas pode colocar um nome para a estrutura nos $$
CREATE OR REPLACE FUNCTION cria_a() RETURNS VARCHAR AS $$
	INSERT INTO a (nome) VALUES('Frederico');
	SELECT a.nome FROM a;
$$ LANGUAGE SQL;

-- Se deseja deletar a Função
DROP FUNCTION cria_a;

-- Se deseja Ver a resposta
SELECT cria_a();