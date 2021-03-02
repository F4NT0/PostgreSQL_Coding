-- Criando uma Função com dois parâmetros
CREATE FUNCTION soma_dois_numeros (numero_1 INTEGER, numero_2 INTEGER) RETURNS INTEGER AS '
	SELECT numero_1 + numero_2;
' LANGUAGE SQL;

-- Chamando a Função
SELECT soma_dois_numeros(2,2);

-- Podemos criar Funções sem passar parâmetros, mas passar o tipo que desejamos
-- Usamos $1 ou $2 para pegarmos as entradas dos parâmetros em ordem que são colocados
CREATE FUNCTION multiplica_dois_numeros (INTEGER, INTEGER) 
RETURNS INTEGER AS 
'SELECT $1 * $2;'
LANGUAGE SQL;

--Chamando a Função
SELECT multiplica_dois_numeros(2,3);

-- Para deletar as Funções utilize o DROP
DROP FUNCTION soma_dois_numeros;
DROP FUNCTION multiplica_dois_numeros;
