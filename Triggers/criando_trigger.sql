--
-- CRIANDO UMA TRIGGER
-- 

-- Uma Trigger é um procedimento armazenado no banco de dados que é chamado
-- automaticamente sempre que ocorre um evento especial no banco de dados.

-- Triggers DML = Data Modification Language, o evento de disparo é uma
-- declaração de Inserção, atualização ou exclusão em uma tabela

-- Existem diferentes tipos de Tiggers:
-- AFTER [INSERT,UPDATE,DELETE] = O Trigger ocorre depois que é executado a instrução
-- BEFORE [INSERT,UPDADE,DELETE] = O Trigger ocorre antes que seja executado a instrução

-- pode ser feito mais de uma intrução na mesma trigger:
-- BEFORE INSERT OR UPDATE

--Exemplo de Trigger
-- CREATE TRIGGER nome_trigger
--    [BEFORE,AFTER] [INSERT,UPDATE,DELETE]
--    ON schema.tabela
--    FOR EACH ROW EXECUTE PROCEDURE nome_procedure();

-- Essa última linha serve para definirmos uma procedure para executar sempre que
-- ocorrer a Trigger

-- Exemplo em Código

CREATE TRIGGER viagens_data_conflitante
    BEFORE INSERT OR UPDATE 
    ON grp_dev.frotas.reservas_veiculos
    FOR EACH ROW EXECUTE PROCEDURE viagens_data_conflitante();

-- Para fazer DROP da Trigger
--DROP TRIGGER IF EXISTS nome_trigger 
--ON schema.tabela CASCADE;

-- Exemplo
DROP TRIGGER IF EXISTS viagens_data_conflitante 
ON frotas.reservas_veiculos CASCADE;