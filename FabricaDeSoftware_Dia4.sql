--- TEMA: FARMACIA---
CREATE DATABASE farmacia;
USE farmacia;

CREATE TABLE cliente (
    nome varchar(50),
    cpf_cliente varchar(14) PRIMARY KEY,
    email varchar(100),
    endereco varchar(100),
    telefone varchar(15)
);

CREATE TABLE funcionario (
    nome varchar(50),
    cpf_funcionario varchar(14) PRIMARY KEY,
    email varchar(100),
    endereco varchar(100),
    telefone varchar(15)
);

CREATE TABLE produto(
    id int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(50),
    tipo varchar(15),
    preco float,
    fk_cliente_cpf_cliente varchar(14)
);

CREATE TABLE vende (
    fk_funcionario_cpf_funcionario varchar(14),
    fk_produto_id int
);
 
ALTER TABLE produto ADD CONSTRAINT FK_produto_2
    FOREIGN KEY (fk_cliente_cpf_cliente)
    REFERENCES cliente (cpf_cliente)
    ON DELETE CASCADE;
 
ALTER TABLE vende ADD CONSTRAINT FK_vende_1
    FOREIGN KEY (fk_funcionario_cpf_funcionario)
    REFERENCES funcionario (cpf_funcionario)
    ON DELETE RESTRICT;
 
ALTER TABLE vende ADD CONSTRAINT FK_vende_2
    FOREIGN KEY (fk_produto_id)
    REFERENCES produto (id)
    ON DELETE SET NULL;
	
	
--- INSERINDO OS DADOS EM CADA TABELA ---	
INSERT INTO cliente values ('João','000.000.000.00','joao@unipe','AV.cabo branco','(83)00000-0000' );
INSERT INTO cliente values ('pedro','000.000.000.01','pedro@unipe','AV.Nego','(83)00000-0000' );
INSERT INTO produto (nome, tipo, preco) values ('Venvanse','tarja preta', '400');
INSERT INTO produto (nome, tipo, preco) values ('Amitriptilina','tarja vermelha','350');
INSERT INTO funcionario values ('renata','000.000.000.14','renata@unipe','AV.cabo branco','(83)00000-0000' );
INSERT INTO funcionario values ('rafaela','000.000.000.04','rafaela@unipe','AV.Nego','(83)00000-0000' );

--- SELECIONANDO OS DADOS EM CADA TABELA ---
SELECT * FROM cliente;
SELECT * FROM produto;
SELECT * FROM funcionario;


--- VENDO TUDO E SELECIONANDO COM CONDIÇÃO OS DADOS EM CADA TABELA ---
SELECT nome,cpf_cliente FROM cliente where nome = 'João';
SELECT preco FROM produto where tipo = 'tarja vermelha';
SELECT nome,telefone FROM funcionario where nome = 'AV.Nego';

--- DELETANDO UMA COLUNA DE CADA TABELA---
ALTER TABLE cliente DROP COLUMN telefone;
ALTER TABLE funcionario DROP COLUMN email;
ALTER TABLE produto DROP COLUMN tipo;
------------------------------------------------------------------------


--- IMPORTANDO UM DATASET DO KAGGLE ---
SELECT * FROM covid;




