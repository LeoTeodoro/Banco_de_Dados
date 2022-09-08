use aula02;

create table if not exists Cliente(
cpf varchar(11) not null primary key,
nome varchar(50),
idade int,
telefone varchar(50),
cidade varchar(50),
TotalCompra float
);

insert into cliente(cpf,nome,idade,telefone,cidade,TotalCompra)
values('12379843256','João Lucas',24,'(35)9 9845-6952','Pouso Alegre',145);

insert into cliente(cpf,nome,idade,telefone,cidade,TotalCompra)
values('95487361584','Joana',45,'(35)9 9972-3348','Itajubá',130.25);

insert into cliente(cpf,nome,idade,telefone,cidade,TotalCompra)
values('65482751499','Pedro',33,'(35)9 9822-5316','Itajubá',78.9);

insert into cliente(cpf,nome,idade,telefone,cidade,TotalCompra)
values('57778462358','Beatriz',17,'(35)9 9735-4442','Extrema',113);

insert into cliente(cpf,nome,idade,telefone,cidade,TotalCompra)
values('26326578459','Mariana',28,'(35)9 8497-6659','Barbacena',42.5);

insert into cliente(cpf,nome,idade,telefone,cidade,TotalCompra)
values('76125894362','Jonathan',38,'(35)9 9233-7453','Pouso Alegre',85.4);

insert into cliente(cpf,nome,idade,telefone,cidade,TotalCompra)
values('46582739321','Ana Maria',57,'(35)9 9118-4742','Varginha',92);

#SELECT
select * from cliente;

#SELECT COM FILTRO
select nome, cidade, TotalCompra from cliente
where cidade = 'Itajubá';

#SELECT COM FUNÇÃO PRONTA
select max(TotalCompra) , nome from cliente;
select min(TotalCompra) , nome from cliente;

#SELECT COM FILTRO DE TEXTO
select nome, telefone from cliente
where nome like 'J___%';
select nome, telefone from cliente
where nome like '%ana';

#SELECT COM LIMITE DE LINHAS
select * from Cliente limit 3;

#SELECT SEM REPETIÇÃO 
select distinct cidade from Cliente;

