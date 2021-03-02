--
-- TEMPLATE BASE DE UMA PROCEDURE DO TIPO TRIGGER
--

create function nome_da_funcao() returns trigger
  language plpgsql
as
$$
declare
  -- aqui se declara as variaveis
begin
  -- aqui se coloca as funcionalidades
end
$$;

-- definir como owner o postgres
alter function nome_da_funcao() owner to postgres;