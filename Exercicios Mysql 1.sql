-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionaries desta empresa. 
-- Crie uma tabela de funcionarios e determine 5 atributos relevantes dos funcionarios para se trabalhar com o serviço deste RH.
-- Faça um select que retorne os funcionarios com o salário maior do que 2000.
-- Faça um select que retorne os funcionarios com o salário menor do que 2000.
-- Ao término atualize um dado desta tabela através de uma query de atualização.

CREATE DATABASE db_rh;

use db_rh;
CREATE TABLE funcionarios (
id int not null auto_increment,
nome varchar (30) not null,
data_aniversario date not null,
salario double not null,
setor varchar (30) not null,
primary key (id)
);

INSERT INTO funcionarios (nome, data_aniversario, salario, setor) VALUES
 ('João Pé de Feijão', '1997-01-03', 3500, 'TI'),
 ('Jonas Borther', '2001-09-12', 2500, 'Almoxarifado'),
 ('Claudomiro', '1991-01-01', 1800, 'Portaria'),
 ('Pé na Cova', '2001-03-08', 4000, 'Financeiro'),
 ('Betania', '1980-01-06', '1500', 'Limpeza');
 
SELECT * FROM funcionarios WHERE salario > 2000;
SELECT * FROM funcionarios WHERE salario < 2000;




