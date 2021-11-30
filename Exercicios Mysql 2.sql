-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionarios desta empresa. 
-- Crie uma tabela de funcionarios e determine 5 atributos relevantes dos funcionarios para se trabalhar com o serviço deste RH.
-- Faça um select que retorne os funcionarios com o salário maior do que 2000.
-- Faça um select que retorne os funcionarios com o salário menor do que 2000 e >= 1000
-- Faça um select que retorne os nomes com a letra C
-- Ao término atualize um dado desta tabela através de uma query de atualização.

CREATE DATABASE db_rh2;

use db_rh2;

CREATE TABLE tb_cargo (
id_cargo int primary key not null auto_increment,
nome_cargo varchar(30),
setor_cargo varchar(30)
);

CREATE TABLE tb_funcionarios (
re_func int primary key not null auto_increment,
nome_func varchar(30) not null,
nascimento_func date not null,
salario_func double not null,
sexo_func char (1),
id_cargo int,
CONSTRAINT fk_cargo FOREIGN KEY (id_cargo) REFERENCES tb_cargo (id_cargo)
);

INSERT INTO tb_cargo (nome_cargo, setor_cargo) VALUES
('Dev Junior', 'TI'),
('Suporte Técnico', 'TI'),
('Designer', 'Marketing'),
('Programador Python', 'TI'),
('Full stack', 'TI');

INSERT INTO tb_funcionarios (nome_func, nascimento_func, salario_func, sexo_func, id_cargo) VALUES
('Caetano Ambrósio', '1997-01-01', 6500, 'M', 3),
('Thor Ragnarok', '1997-06-26', 1800, 'M', 1),
('Hulck', '1995-04-15', 4500, 'M', 4),
('Viuva Negra', '1992-03-26', 3000, 'F', 5),
('Super Girl', '1987-05-01', 2000, 'F', 2),
('Cleiton Ortega', '1999-02-03', 2000, 'M', 1),
('Bruno Costa', '1996-01-06', 6500, 'M', 3),
('Sarah Braia', '1995-07-03', 3000, 'F', 5),
('Victor Tavares', '1994-03-02', 4500, 'M', 4),
('Gabriel Ritter', '1992-04-02', 2500, 'M', 2),
('Vivian Nakano', '1997-03-01', 3000, 'F', 5),
('Zaine Queiros', '1989-03-01', 1900, 'F', 1),
('Guilherme Silva', '2000-05-15', 6500, 'M', 3),
('Christian Garcia', '1996-04-10', 4500, 'M', 4),
('Matheus Fernandes', '1995-02-15', 1700, 'M', 2);


 SELECT * FROM tb_funcionarios WHERE salario_func > 2000;
 SELECT * FROM tb_funcionarios WHERE salario_func <= 2000 and salario_func >= 1000;
 SELECT * FROM tb_funcionarios WHERE nome_func LIKE 'C%';
