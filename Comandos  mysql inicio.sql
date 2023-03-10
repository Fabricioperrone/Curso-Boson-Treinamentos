-- Criar banco de dados
-- if not exists é opcional, ele previne criar um banco de dados que já 
-- existe na no servido
create database  if not exists db_Biblioteca; 
-- ex create database db_Biblioteca;

-- Verificar banco de dados, podemos verificar os bancos de dados existentes com o comando show databases
show databases;

-- Comando use intrui o SGBD a usar o banco de dados especificado para rodar os comandos
-- sintaxe Use nome_do_banco_de_dados;
use db_Biblioteca;
-- Para visiualizar o banco de dados selecionado no momento do use o comando:
select database();

-- excluir banco de dados 
-- Podemos excluir um banco de dados com o comando: drop database;
drop database if exists nome_bd;

-- Criar tabelas 
-- Para criar tabelas , usamos  o comando CREATE table:
-- CREATE table if not exists nome_da_tabela (
 -- coluna tipo de dados CONSTRAINTS
-- );

-- Criar tabelas 
Use db_Biblioteca;

create table if not exists tbl_Livro (
ID_Livro smallint auto_increment primary key,
Nome_Livro varchar(50) NOT NULL,
ISBN varchar(30) NOT NULL,
ID_Autor smallint NOT NULL,
Data_Pub date NOT NULL,
Preco_Livro decimal NOT NULL
);

-- Auto incremento 
-- exemplo:
create table tbl_incremento (
Codigo smallint primary key auto_increment,
Nome varchar(20)NOT NULL
)auto_increment = 15;

insert into tbl_teste_incremento (Nome) values ('Ana');
insert into tbl_teste_incremento (Nome) values ('Maria');
insert into tbl_teste_incremento (Nome) values ('Julia');
insert into tbl_teste_incremento (Nome) values ('Joana');

-- veroficar se dados foram inseridos
select * from tbl_teste_incremento;

-- Verificar o valor atual do auto incremento
-- Podemos verificar o valor de incremento  mais atual armazenado
-- em uma tabela  no banco de dados  com o comando a seguir:
-- select max (nome_coluna)
-- from tabela
-- exemplo:
select max(ID_Livro)
from tbl_Livro;

-- Altera o próximo valor no campo de auto incremento
-- Para alterar o valor do incremento do próximo registro a ser 
-- armzenado em uma tabela, use o comando a seguir:
-- ALTER TABLE tabela AUTO_INCREMENT = valor;
-- exemplo: Usar o valor 90 a partir do próximo registro
alter table tbl_teste_incremento
auto_increment = 90;

-- Alter table
-- É possível alterar a estrutura de uma tabela após
-- ter sido criada, acrescentando ou
-- excluindo atributos(campos)
-- Usamos o comando ALTE TABLE

-- ALTER TABLE DROP
-- EX: 
-- ALTER TABLE tabela 
-- DROP colunm coluna
-- EX:
ALTER TABLE tbl_Livro
DROP ID_Autor;

-- Pode-se excluir uma chave primária
ALTER TABLE tabela
DROP primary key;

-- ALTER TABLE ADD
-- EX:

ALTER TABLE tbl_Livro
ADD ID_Autor SMALLINT NOT NULL;

ALTER TABLE tbl_Livro
ADD constraint fk_ID_Autor
foreign key(ID_Autor)
references tbl_autores(ID_Autor);

-- Alter table COLUNM 
-- Podemos alterar colunas, por exemplo
-- mudando o tipo de dados
-- alter table tbl_Livro
-- alter column ID_Autor smallint;

-- Alter table - ADD PK
-- Obs: A coluna ID_Cliente deve existir antes 
-- de ser transformada em chave primária
-- A coluna ID_Cliente receberá a CONSTRAINT (restrição)
-- PRIMARY KEY, e passará a ser a chave  primária da tabela

-- Inserir dados 
-- Inserir dados em uma tabela:
insert into tabela (coluna1, coluna2,coluna3) values ('coluna1','coluna2','coluna3');


