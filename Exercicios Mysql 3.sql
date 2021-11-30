-- Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce. 
-- Crie uma tabela produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
-- um select que retorne os produtos com o valor maior do que 20.
-- Faça um select que retorne os produtos com o valor menor do que 50.
-- Ao término atualize um dado desta tabela através de uma query de atualização.

CREATE DATABASE db_Boi_Gaucho;

use db_Boi_Gaucho;

CREATE TABLE tb_categoria(
	id_categoria int primary key not null auto_increment,
    tipo_categoria varchar (50) not null,
    qualidade_categoria varchar (50) not null
);

CREATE TABLE tb_produto(
	id_produto int primary key not null auto_increment,
    nome_produto varchar(30) not null,
    marca_produto varchar(30) not null,
    peso_produto float not null,
    preco_produto double not null,
    id_categoria int,
	CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id_categoria)
    );
    
INSERT INTO tb_categoria (tipo_categoria, qualidade_categoria) VALUES
	('Carne Vermelha', 'Primeira'),
    ('Carne Vermelha', 'Segunda'),
    ('Carne Vermelha', 'Terceira'),
    ('Carne Branca', 'Primeira'),
    ('Carne Branca', 'Segunda'),
    ('Carne Suina', 'Primeira'),
    ('Carne Suina', 'Segunda');


INSERT INTO tb_produto (nome_produto, marca_produto, peso_produto, preco_produto, id_categoria) VALUES
	('Filé mignon', 'Friboi', 30.54, 150.60, 1),
	('Alcatra', 'Seara', 15.00, 25.00, 2),
	('Acem com Osso', 'Novicarnes', 10.00, 15.00, 3),
	('Filé de Frango', 'Sadia', 15.00, 13.00, 4),
	('Asa', 'Perdigão', 25.00, 20.00, 5),
	('Picanha', 'Swift', 50.00, 160.00, 1),
	('Fraldinha', 'Angus', 30.00, 80.00, 2),
	('Carne Moida', 'Novicarnes', 10.00, 11.00, 3);

SELECT * FROM tb_produto WHERE tb_produto.preco_produto > 20;
SELECT * FROM tb_produto WHERE tb_produto.preco_produto >= 10 and tb_produto.preco_produto <= 50;
SELECT * FROM tb_produto WHERE tb_produto.nome_produto LIKE '%CA%';
    
    
