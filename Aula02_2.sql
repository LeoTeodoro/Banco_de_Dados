drop database if exists aula02;

create database aula02;

use aula02;

create table if not exists usuario(
id int not null auto_increment primary key,
nome varchar(50),
ano_nasc int,
pais varchar(50)
);

insert into usuario(nome,ano_nasc,pais)
values('Fulano',2001,'Brasil');

insert into usuario()
values (default, 'cicrano',1999,'Australia');

insert into usuario(nome,pais)
values('Beltrano','Alemanha');

#SELECT
select * from usuario;

update usuario
set nome = 'Usuario X'
where id = 2;

update usuario
set ano_nasc = 1999, pais = 'Italia'
where id = 1;
