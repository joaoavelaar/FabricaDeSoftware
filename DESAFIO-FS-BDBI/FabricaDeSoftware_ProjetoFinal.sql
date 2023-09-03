CREATE DATABASE escola;
USE escola;

CREATE TABLE aluno (
    nome varchar(50),
    cpf varchar(14) PRIMARY KEY,
    telefone varchar(15),
    matricula int
);

CREATE TABLE professor (
    id int PRIMARY KEY,
    nome varchar(50),
    telefone varchar(15)
);

CREATE TABLE disciplina (
    id int PRIMARY KEY,
    nome varchar(50),
    carga_horaria float
);

CREATE TABLE estuda (
    fk_disciplina_id int,
    fk_aluno_cpf varchar(14)
);

CREATE TABLE ensinada (
    fk_disciplina_id int,
    fk_professor_id int
);
 
ALTER TABLE estuda ADD CONSTRAINT FK_estuda_1
    FOREIGN KEY (fk_disciplina_id)
    REFERENCES disciplina (id)
    ON DELETE RESTRICT;
 
ALTER TABLE estuda ADD CONSTRAINT FK_estuda_2
    FOREIGN KEY (fk_aluno_cpf)
    REFERENCES aluno (cpf)
    ON DELETE SET NULL;
 
ALTER TABLE ensinada ADD CONSTRAINT FK_ensinada_1
    FOREIGN KEY (fk_disciplina_id)
    REFERENCES disciplina (id)
    ON DELETE RESTRICT;
 
ALTER TABLE ensinada ADD CONSTRAINT FK_ensinada_2
    FOREIGN KEY (fk_professor_id)
    REFERENCES professor (id)
    ON DELETE RESTRICT;
    
--- INSERINDO OS DADOS NA TABELA ---
INSERT INTO aluno VALUES('João','000.000.000.01','(83)00000-0000','01');
INSERT INTO aluno VALUES('Rafael','000.000.000.02','(83)00000-1111','02');
INSERT INTO aluno VALUES('Julio','000.000.000.03','(83)00000-2222','03');
INSERT INTO aluno VALUES('Pedro','000.000.000.04','(83)00000-3333','04');
INSERT INTO aluno VALUES('Sergio','000.000.000.05','(83)00000-4444','05');

--- INSERINDO OS DADOS NA TABELA ---
INSERT INTO professor VALUES('01','Suenia','(85)00000-0011');
INSERT INTO professor VALUES('02','Sheila','(81)00000-0050');
INSERT INTO professor VALUES('03','Fernando','(11)00000-9889');
INSERT INTO professor VALUES('04','Adalberto','(83)00000-8282');
INSERT INTO professor VALUES('05','Odaci','(83)00000-2004');

--- INSERINDO OS DADOS NA TABELA ---
INSERT INTO disciplina VALUES('10','Português','200.0');
INSERT INTO disciplina VALUES('20','Matematica','400.0');
INSERT INTO disciplina VALUES('30','Biologia','300.0');
INSERT INTO disciplina VALUES('40','Fisica','90.0');
INSERT INTO disciplina VALUES('50','Quimica','250.0');

--- MOSTRANDO TODOS OS DADOS NAS TABELAS ---
SELECT * FROM 	aluno;
SELECT * FROM 	professor;
SELECT * FROM 	disciplina;



