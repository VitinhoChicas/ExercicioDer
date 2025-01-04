create table curso(
 idCurso int primary key not null,
 nomeCurso varchar (50),
 numSemestre int, 
 dtFundacao varchar(10)
);

create table nome(
 idNome int primary key not null,
 Pnome varchar(50),
 Snome varchar(50)
);

create table aluno(
	prontuario_aluno int primary key not null,
	dataNscA varchar(10),
	sexo char(1),
	idNome int
);

alter table aluno add constraint fk_idNome foreign key (idNome) references nome(idNome);

create table professor(
 prontuario_professor int primary key not null,
 dataNscP varchar(10),
 idNome int 
);

alter table professor add constraint fk_idNome foreign key (idNome) references nome (idNome);

create table leciona (
    id_leciona int primary key not null,
    ano  int,
	semestre int,
	nota varchar (10),
	prontuario_aluno int,
	prontuario_professor int
);

alter table leciona add constraint fk_prontuario_aluno foreign key (prontuario_aluno) references aluno (prontuario_aluno);
alter table leciona add constraint fk_prontuario_professor foreign key (prontuario_professor) references professor (prontuario_professor);

select * from aluno
select * from professor
select * from nome
select * from curso

drop table aluno
drop table curso 
drop table professor
drop table nome

insert into curso values (1,'informatica',1,'10/02/2020'),
(2,'Enfermagem',1,'01/02/2020');

insert into aluno values (1,'20/02/2000','M',1),
(2, '01/01/2001','F',2); 

insert into nome values(1,'Marcos','Lopes'),
(2,'Bianca','Prado'),(3,'Guilherme','Silva'),(4,'José','Santos');

insert into professor values (1,'10/02/1990',3),(2,'19/08/1995',4);