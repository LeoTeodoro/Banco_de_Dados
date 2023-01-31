DROP DATABASE IF EXISTS Aula08;
CREATE DATABASE Aula08;
USE Aula08;

CREATE TABLE IF NOT EXISTS alunos(
	matricula INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    curso VARCHAR(45),
    nome VARCHAR (45),
    periodo int
    );
    
CREATE USER "Monitor" identified by '1234';

alter table alunos modify nome VARCHAR(100) not null;
alter table alunos add endereco VARCHAR(45);
alter table alunos drop periodo;

drop table alunos;
drop  user 'Monitor';

show databases;
show grants for 'Monitor';
show tables;