CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT auto_increment,
Classe VARCHAR(255),
PRIMARY KEY(id)
);

INSERT INTO tb_classes (Classe)VALUES("Suporte"); -- 1
INSERT INTO tb_classes (Classe)VALUES("Tanke"); -- 2 
INSERT INTO tb_classes (Classe)VALUES("Flanco"); -- 3
INSERT INTO tb_classes (Classe)VALUES("Dano"); -- 4

CREATE TABLE habilidades(
id BIGINT auto_increment,
HABILIDADE1 VARCHAR(50),
HABILIDADE2 VARCHAR(50),
HABILIDADE3 VARCHAR(50),
PRIMARY KEY(id)
);

INSERT INTO habilidades (HABILIDADE1,HABILIDADE2,HABILIDADE3)VALUES("DEATH HASTENS","DISCOVERY","HEROISM");-- Lex
INSERT INTO habilidades (HABILIDADE1,HABILIDADE2,HABILIDADE3)VALUES("BATTERING RAM","FORTRESS BREAKER","
SLUG SHOT");-- Ash
INSERT INTO habilidades (HABILIDADE1,HABILIDADE2,HABILIDADE3)VALUES("DEJA VU","TEMPORAL DIVIDE","
UNSTABLE FISSURE");-- Atlas
INSERT INTO habilidades (HABILIDADE1,HABILIDADE2,HABILIDADE3)VALUES("ACCELERANT","
CHAIN REACTION","ROYAL SUBJECTS");-- Bomb King
INSERT INTO habilidades (HABILIDADE1,HABILIDADE2,HABILIDADE3)VALUES("CHERISH","EXTERMINATE","
SOLAR BLESSING");-- Furia
INSERT INTO habilidades (HABILIDADE1,HABILIDADE2,HABILIDADE3)VALUES("
CAT BURGLAR","
ROGUE'S GAMBIT","
STREET JUSTICE");-- Meave
INSERT INTO habilidades (HABILIDADE1,HABILIDADE2,HABILIDADE3)VALUES("
DEBILITATE","
PREPARATION","SMOKE AND DAGGER");-- Skye
INSERT INTO habilidades (HABILIDADE1,HABILIDADE2,HABILIDADE3)VALUES("BURN, MONSTER!","HUNTING PARTY","
MERCY KILL");-- Tyra
INSERT INTO habilidades (HABILIDADE1,HABILIDADE2,HABILIDADE3)VALUES("GUILLOTINE","SMOLDER","
YOMI");-- Zhin
SELECT * FROM habilidades;

CREATE TABLE tb_personagens(

id BIGINT auto_increment,
NOME VARCHAR(255),
HABILIDADE BIGINT,
ATK INT,
DEF INT,
FRAQUEZA VARCHAR (255), 
CLASSE BIGINT,

PRIMARY KEY (id),
FOREIGN KEY (CLASSE) REFERENCES tb_classes(id),
FOREIGN KEY (HABILIDADE) REFERENCES habilidades(id)

);

INSERT INTO tb_personagens(NOME,HABILIDADE,ATK,DEF,FRAQUEZA,CLASSE)VALUES("Lex",1,680,400,"Flanco",1);
INSERT INTO tb_personagens(NOME,HABILIDADE,ATK,DEF,FRAQUEZA,CLASSE)VALUES("Ash",2,600,6000,"Dano",2);
INSERT INTO tb_personagens(NOME,HABILIDADE,ATK,DEF,FRAQUEZA,CLASSE)VALUES("Atlas",3,2000,5500,"Dano",2);
INSERT INTO tb_personagens(NOME,HABILIDADE,ATK,DEF,FRAQUEZA,CLASSE)VALUES("Bomb King",4,680,2200,"Flanco",1);
INSERT INTO tb_personagens(NOME,HABILIDADE,ATK,DEF,FRAQUEZA,CLASSE)VALUES("Furia",5,2500,2000,"Dano",4);
INSERT INTO tb_personagens(NOME,HABILIDADE,ATK,DEF,FRAQUEZA,CLASSE)VALUES("Meave",6,2300,3600,"Tank",3);
INSERT INTO tb_personagens(NOME,HABILIDADE,ATK,DEF,FRAQUEZA,CLASSE)VALUES("Skye",7,1940,3450,"Tank",3);
INSERT INTO tb_personagens(NOME,HABILIDADE,ATK,DEF,FRAQUEZA,CLASSE)VALUES("Tyra",8,2100,2500,"Flanco",1);
INSERT INTO tb_personagens(NOME,HABILIDADE,ATK,DEF,FRAQUEZA,CLASSE)VALUES("Zhin",9,1900,1800,"Tank",3);
INSERT INTO tb_personagens(NOME,HABILIDADE,ATK,DEF,FRAQUEZA,CLASSE)VALUES("CASSIE",9,1900,1800,"Tank",3);

SELECT * FROM tb_classes;
DELETE FROM tb_personagens WHERE HABILIDADE;


SELECT * FROM tb_personagens;
-- 
SELECT * FROM tb_personagens WHERE ATK >= 2000;
SELECT * FROM tb_personagens WHERE DEF >= 999 AND DEF <= 2001 ;
SELECT * FROM tb_personagens
 WHERE DEF BETWEEN '1000' AND '2000';

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.CLASSE WHERE tb_classes.id = 1;
-- INNER JOIN habilidades ON habilidades.id = tb_personagens.HABILIDADE;



-- Buscando todos os personagens com a letra c no nome
SELECT * FROM tb_personagens
WHERE NOME  LIKE '%c%';


UPDATE tb_classes
SET Classe = "Suporte"
WHERE id = 5 ;

UPDATE tb_personagens
SET CLASSE = "Solar Blessing"
WHERE id = 5 ;