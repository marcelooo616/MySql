CREATE DATABASE db_escolar;

USE db_escolar;

CREATE TABLE tb_escolar(

id BIGINT auto_increment,
nome VARCHAR(255),
idade INT (2),
ano INT(1),
sala INT (1),
matricula INT(4),
nota INT (1),
professor VARCHAR(255),
curso VARCHAR(255),
PRIMARY KEY(id)

);

SELECT * FROM  tb_escolar;

SELECT * FROM tb_escolar WHERE nota > 7;
SELECT * FROM tb_escolar WHERE nota < 7;

INSERT INTO tb_escolar(nome,idade,ano,sala,matricula,nota,professor,curso)VALUES("Luana Artigas França Ferreira  ",14,1,1,55494,8,"Ana dos Santos","Ensino Medio");

UPDATE tb_escolar
SET nome = "Paulo Alexandre Monteiro Amarello"
WHERE id = 1;