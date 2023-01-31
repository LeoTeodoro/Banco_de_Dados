CREATE DATABASE IF NOT EXISTS procedureAula;

USE procedureAula;

DELIMITER $$
DROP PROCEDURE IF EXISTS soma $$
CREATE PROCEDURE soma(IN num1 INT, IN num2 INT)
BEGIN 
	SELECT (num1+num2) AS Soma;
END $$
DELIMITER ;

CALL Soma(4,5);

DROP PROCEDURE soma;

DELIMITER $$
DROP FUNCTION IF EXISTS mult $$
CREATE FUNCTION mult(a FLOAT, b FLOAT) RETURNS FLOAT
DETERMINISTIC
BEGIN 
	RETURN a*b;
END $$
DELIMITER ;

SELECT mult (2.4,4.3);

DROP FUNCTION mult;

CREATE DATABASE IF NOT EXISTS exemploFunction;

USE exemploFunction;

CREATE TABLE IF NOT EXISTS Aluno(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    curso VARCHAR(45),
    senha VARCHAR(45)
);

DELIMITER $$

DROP PROCEDURE IF EXISTS inserir $$
CREATE PROCEDURE inserir(IN nome VARCHAR(45), IN curso VARCHAR(45))
BEGIN
	INSERT INTO Aluno() VALUES (default, nome, curso, senha(nome, curso));
END $$
DELIMITER ;

DELIMITER  $$
DROP FUNCTION IF EXISTS senha $$
CREATE FUNCTION senha(nome VARCHAR(45), curso VARCHAR(45)) RETURNS VARCHAR(45) 
DETERMINISTIC
BEGIN 
	RETURN concat(nome, '#123', curso);
END $$
DELIMITER ;

CALL inserir('Leo','GEC');

SELECT * FROM Aluno;

/* ------------------------Exercicio-------------------------*/

DROP DATABASE IF EXISTS aula_procedure;
CREATE DATABASE aula_procedure;
USE aula_procedure;

DROP TABLE IF EXISTS Aluno;
CREATE TABLE Aluno(
	id INT NOT NULL auto_increment primary key,
    nome varchar(45),
    idade int,
    curso varchar(3),
    email varchar(100)
);
    
DELIMITER $$
DROP FUNCTION IF EXISTS criaEmail $$
CREATE FUNCTION criaEmail(nome VARCHAR(45), curso VARCHAR(45)) RETURNS VARCHAR(100) 
DETERMINISTIC
BEGIN 
	RETURN concat(nome, '@', curso, '.inatel.br');
END $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS insercao $$
CREATE PROCEDURE insercao(IN nome VARCHAR(45),IN idade INT, IN curso VARCHAR(45))
BEGIN
	INSERT INTO Aluno() VALUES (default, nome, idade, curso, criaEmail(nome, curso));
END $$
DELIMITER ;

CALL insercao('Leonardo', 21, 'gec');

SELECT * FROM aluno;
    