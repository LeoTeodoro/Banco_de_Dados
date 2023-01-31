/* 1. a*/

create database if not exists AV1;

use AV1;

create table if not exists alunos(
 Matricula int not null primary key,
 Nome varchar(50),
 Idade int,
 Curso varchar(50),
 Periodo int
 );
 
INSERT INTO alunos(Matricula,Nome,Idade,Curso,Periodo) VALUES ('1234','Camila','22','GEC','2');
INSERT INTO alunos(Matricula,Nome,Idade,Curso,Periodo) VALUES ('4567','Marcelo','25','GEB','3');
INSERT INTO alunos(Matricula,Nome,Idade,Curso,Periodo) VALUES ('9876','Felipe','19','GES','2');
INSERT INTO alunos(Matricula,Nome,Idade,Curso,Periodo) VALUES ('1594','Mariana','20','GEC','4');
INSERT INTO alunos(Matricula,Nome,Idade,Curso,Periodo) VALUES ('8462','Flávio','26','GEA','6');
INSERT INTO alunos(Matricula,Nome,Idade,Curso,Periodo) VALUES ('4866','Maria','18','GEC','3');

UPDATE alunos SET periodo = 4 WHERE matricula = 2;

SELECT * FROM alunos WHERE curso = 'GEC';
SELECT curso FROM alunos WHERE periodo = 2;
SELECT max(periodo) FROM alunos;
SELECT nome,idade,curso FROM alunos WHERE periodo = 3;