DROP DATABASE IF EXISTS banco;
CREATE DATABASE banco;
USE banco;

CREATE TABLE IF NOT EXISTS cliente(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cpf VARCHAR(15),
    nome VARCHAR (45),
    endereco VARCHAR(45)
);
    
insert into cliente(cpf, nome, endereco) values ('70057836620',
'Leonardo', 'Comendador jose garcia');

insert into cliente(cpf, nome, endereco) values ('70077759647',
'Natália', 'Colina de Santa Barbara');
    
alter table cliente add anoNascimento int;

update cliente set anoNascimento = 2001 where id = 1;
update cliente set anoNascimento = 2005 where id = 2;

delete from cliente where id = 1;