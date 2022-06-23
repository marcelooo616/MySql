CREATE DATABASE bd_ecomerce;

USE  bd_ecomerce;

CREATE TABLE tb_produtos(

id BIGINT auto_increment,
loja VARCHAR(255),
Produto VARCHAR(255),
marca VARCHAR(255),
linha VARCHAR(255),
cor VARCHAR(255),
tamanho VARCHAR(255),
valor DECIMAL(9,2),
serie INT(6),

PRIMARY KEY(id)
);

SELECT * FROM  tb_produtos;
SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

INSERT INTO  tb_produtos(loja,Produto,marca,linha,cor,tamanho,valor,serie)VALUES("DROPER","Tenis","NIKE","AirJordan","Verde e Branco","43",1499.00,56974);

