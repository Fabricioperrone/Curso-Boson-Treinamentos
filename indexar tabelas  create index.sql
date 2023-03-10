-- Criar índices 
-- Declaração: CREATE INDEX em uma tabela já exsitente:
-- Sintaxe 
-- create unique index nome_do_indice
-- on nome_tabela (
-- coluna1 [asc | desc],
-- [coluna2, [asc | desc]]
-- );
-- Criar índices
-- Declaração ALTER TABLE / INDEX em uma tabela já existente:
-- Sintaxe:
alter table nome_da_tabela  add index nome_índice(colunas);

-- Comandos
show index from tbl_Editoras;
-- comando explain irá trazer infos de como será feito o select

explain select * FROM  tbl_Editoras
where Nome_Editora = "Springer";

Create index idx_editora ON tbl_Editoras(Nome_Editora);
select * from tbl_Editoras;
DROP INDEX idx_editora ON tbl_editoras;

-- Cláurura WHERE
-- Permite filtar registros em uma consulta
-- Ex: select colunas FROM tabela WHERE coluna = valor;
-- ex
SELECT Nome_livro, Data_Pub 
FROM  tbl_Livro
WHERE ID_Autor = 2;

SELECT ID_Autor, Nome_Autor 
FROM tbl_Autores
WHERE Sobrenome_Autor = 'Stanek';

-- Operadores : AND, OR e NOT
select * from tbl_livro
where ID_Livro > 2 and ID_Autor <3;

select * from tbl_livro
where ID_Livro > 2 OR ID_Autor <3;

select * from tbl_livro
where ID_Livro > 2 AND NOT ID_Autor <3;

-- Operadore IN e NOT IN
-- Filtragem usando listas de valores no Mysql
# sintaxe
select colunas(s)
FROM tabela(s)
WHERE expressão | NOT IN (listas de valores);
-- Exemplos:
-- Exemplo 1:
select Nome_Livro, ID_editora
FROM tbl_Livro
where ID_editora in (2,4);

# Exemplo 2:
select Nome_livro, ID_editora
FROM tbl_livro
WHERE ID_editora NOT IN(1,2);

