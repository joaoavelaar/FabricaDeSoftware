CREATE DATABASE farmacia

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

CREATE TABLE produto (
    id int PRIMARY KEY,
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
	
	
	
INSERT INTO cliente values ('João','000.000.000.00','joao@unipe','AV.cabo branco','(83)00000-0000' )
INSERT INTO cliente values ('pedro','000.000.000.01','pedro@unipe','AV.Nego','(83)00000-0000' )
INSERT INTO cliente values ('rafael','000.000.000.02','rafael@unipe','AV.cabo branco','(83)00000-0000')
INSERT INTO cliente values ('suenia','000.000.000.03','suenia@unipe','AV.Nego','(83)00000-0000' )
INSERT INTO cliente values ('rafaela','000.000.000.04','rafaela@unipe','AV.cabo branco','(83)00000-0000' )


DELETE FROM cliente WHERE endereco = 'AV.Nego'

SELECT * FROM cliente

SELECT * FROM cliente where nome = 'João'

