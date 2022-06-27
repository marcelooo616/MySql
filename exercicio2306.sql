-- criar um banco de dados
CREATE DATABASE db_rhgeneration;

-- dizendo para o mySql que esse banco de dados sera usado
USE db_rhgeneration;

-- criando tabela 'comando create table "tb"'
CREATE TABLE tb_funcionarios(

-- dizendo para o mySql ficara responsavem por incrementar os ids
    id BIGINT auto_increment,
    
    -- criando o campo nome 'VARCHAR', com o  numero mazimo de caracteres '255'
    nome VARCHAR(255),
    -- criando o campo de salario 'DECIMAL' com 9 casas antes da virgula e 2 casas depois da virgula
    -- DECIMAL e a melhor opção para trabalhar com dinheiro
    -- DECIMAL(antes da virgula,depois da virgula)
    salario DECIMAL(9,2),    
    matricula INT(5),
    
    setor_id BIGINT,
    -- criando nossa chave primaria !a chave primaria sempre sera o id por boas praticas
    PRIMARY KEY (id),
    FOREIGN KEY (setor_id) REFERENCES tb_setor(id)
   
    
);
-- creando segunda tabela
CREATE TABLE tb_setor(
id BIGINT auto_increment,
nome_setor VARCHAR(255),
PRIMARY KEY(id)
);


-- mostrando os toda a tabela
-- inner join
SELECT * FROM tb_funcionarios INNER JOIN tb_setor
ON tb_setor.id = tb_funcionarios.setor_id;
SELECT * FROM tb_setor;
INSERT INTO tb_setor(nome_setor)VALUES("DBA");
INSERT INTO tb_setor(nome_setor)VALUES("Financeiro");
INSERT INTO tb_setor(nome_setor)VALUES("Administração");


-- mostrando apenas o maior salario com id nome matricula
SELECT nome,matricula, MAX(salario)AS maiorSalario FROM tb_funcionarios ;
-- mostrando salarios maiores que 2000
SELECT * FROM tb_funcionarios WHERE salario > 2000;
-- mostrando salarios menores que 2000
SELECT * FROM tb_funcionarios WHERE salario < 2000;
-- inseindo dados na tabela

INSERT INTO tb_funcionarios(nome,salario,matricula,setor_id)VALUES("Calrs",15600.50,97846,1);
INSERT INTO tb_funcionarios(nome,salario,matricula,setor_id)VALUES("Marcos",9600.50,96486,2);
INSERT INTO tb_funcionarios(nome,salario,matricula,setor_id)VALUES("Maria",5600.50,94626,3);
-- fazendo atualizacao
UPDATE tb_funcionarios -- tabela
SET salario = 23000.54  -- escolhendo o campo
WHERE id = 4;  -- id para localizar a linha para a att
-- deletando alguma informacao
DELETE FROM tb_funcionarios WHERE id = 3;

