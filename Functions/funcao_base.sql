-- Criando a primeira Função em SQL
CREATE FUNCTION teste_func() RETURNS BOOLEAN AS 
	'SELECT TRUE and FALSE'
	LANGUAGE SQL;
	
-- Chamando uma Função
SELECT teste_func();

-- Podemos tratar o valor de uma Função como um valor normal, onde podemos
-- renomear o resultado como uma coluna
SELECT teste_func() AS booleano;