-- Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
-- deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
-- informações dos produtos desta empresa.
-- O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
-- siga exatamente esse passo a passo:
-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
-- relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.
-- Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
-- relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
-- criar a foreign key de tb_categoria nesta tabela).
-- Popule esta tabela Categoria com até 5 dados.
-- Popule esta tabela pizza com até 8 dados.
-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
-- Faça um um select com Inner join entre tabela categoria e pizza.
-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
-- os produtos que são pizza doce).
-- salve as querys para cada uma dos requisitos o exercício

CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(10),
    tamanho VARCHAR(10)
);

CREATE TABLE tb_pizza(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(15),
    valor DECIMAL(5, 2),
    vegetariana BOOLEAN,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id)
);

INSERT INTO tb_categoria (categoria, tamanho) VALUES
("Salgada", "Grande"),
("Salgada", "Pequena"),
("Salgada", "Média"),
("Doce", "Grande"),
("Doce", "Pequena");

INSERT INTO tb_pizza (sabor, valor, vegetariana, id_categoria) VALUES
("Calabresa", 25.99, false, 1),
("Muçarela", 22.99, true, 1),
("Portuguesa", 29.99, false, 2),
("Marguerita", 17.99, true, 3),
("Frango", 29.99, false, 2),
("Requeijão", 39.90, true, 2),
("Prestígio", 60.00, true, 4),
("Chocolate", 29.99, true, 5);

SELECT * FROM tb_pizza WHERE valor > 45;
SELECT * FROM tb_pizza WHERE valor > 29 AND valor <= 60;
SELECT * FROM tb_pizza WHERE sabor LIKE "C%";
SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.id_categoria = tb_categoria.id;
SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.id_categoria = tb_categoria.id WHERE tb_categoria.tamanho = "Pequena";
