-- Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
-- o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
-- informações dos personagens desse game.
-- O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.
-- siga exatamente esse passo a passo:
-- Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
-- relevantes da classe para se trabalhar com o serviço desse game Online.
-- Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
-- atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
-- (não esqueça de criar a foreign key de tb_classe nesta tabela).
-- Popule esta tabela classe com até 5 dados.
-- Popule esta tabela personagem com até 8 dados.
-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
-- Faça um select utilizando LIKE buscando os personagens com a letra C.
-- Faça um um select com Inner join entre tabela classe e personagem.
-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
-- os personagens que são arqueiros).

CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(15),
    poder BOOLEAN
);

INSERT INTO tb_classe (nome, poder) VALUES
("Guerreiro", false),
("Arqueiro", true),
("Lutador", false),
("Feiticeiro", false),
("Mago", true);

CREATE TABLE tb_personagens(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(15),
    ataque INT,
    defesa INT,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classe (id)
);

INSERT INTO tb_personagens (nome, ataque, defesa, id_classe) VALUES
("Falcão", 1000, 800, 1),
("Viuva Negra", 3000, 2500, 2),
("Harry Potter", 2000, 1800, 3),
("Huck", 1000, 1100, 4),
("Homem de Ferro", 900, 400, 5),
("Loke", 1500, 1200, 3),
("Shazam", 2900, 3000, 2),
("Alladin", 10000, 10000, 3);

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa > 1000 AND defesa < 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "G%";
SELECT * FROM tb_personagens INNER JOIN tb_classe ON tb_personagens.id_classe = tb_classe.id;
SELECT * FROM tb_personagens INNER JOIN tb_classe ON tb_personagens.id_classe = tb_classe.id WHERE tb_classe.nome = "Guerreiro";
