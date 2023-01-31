CREATE DATABASE C207;
USE C207;

CREATE TABLE alunos(
	matricula INT,
    curso varchar(20),
    nome varchar(60),
    periodo int,
    primary key(matricula, curso)
);

/*
create user 'Monitor' identified by '111#GEC';
create user 'Professor' identified by '9999#GEC';

drop user 'Monitor';

grant all privileges on C207.* to 'Monitor';
grant select, insert, update, delete on C207.alunos to 'Professor';

revoke insert on C207.* from 'Monitor';
revoke select, insert on C207.alunos from 'Professor';

show grants for 'Monitor';

---------------------------------------------------

-- Exercício
*/

create user 'Monitor' identified by '1753#GEC';
create user 'Professor' identified by 'R3nz0inatel';

grant create, select, update, insert on C207.alunos to 'Monitor';
grant all privileges on C207.* to 'Professor';

revoke insert on C207.alunos from 'Monitor';
revoke create, drop on C207.* from 'Professor';

show grants for 'Monitor';