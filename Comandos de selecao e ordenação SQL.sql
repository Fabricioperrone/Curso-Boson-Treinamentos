-- Comandos SELECT simples --
select Nome_Autor 
from tbl_autores;

select * from tbl_autores;
select Nome_Livro from tbl_Livro;

-- Especifcando colunas --
Select  Nome_Livro, ID_Autor 
from tbl_Livro;

select Nome_Livro, ISBN, Data_Pub 
FROM tbl_Livro;

-- Consultas com ordenação  
select * from tbl_Livro 
order by Nome_Livro asc;
-- Ordem inversa
select * from tbl_Livro 
order by Nome_Livro desc;

-- select colunas from tabela order by coluna_a_ordenar

-- ex
select Nome_Livro , ID_editora 
from tbl_Livro 
order by ID_editora;

SELECT 
    Nome_Livro, Preco_Livro
FROM
    tbl_Livro
ORDER BY Preco_Livro ASC;

