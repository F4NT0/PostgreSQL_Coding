-- Criando um Database
CREATE DATABASE exemplo;

-- Criando uma Tabela
-- obs: DECIMAL(10,2) são 10 casas antes e duas depois da virgula
CREATE TABLE instrutor (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	salario DECIMAL(10,2)
);

-- Adicionando um Instrutor
INSERT INTO instrutor (nome,salario)
VALUES ('Gabriel Fanto', 100);
