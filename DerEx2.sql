/*Para armazenar mais que um dado em um atributo basta apénas clocar [] na frente dele
e depois na hora de inseriros valors vc coloca os valores dentro dos []
EXEMPLO

create table teste (
 linguagem VRC[]
);

insert into teste values ('{"portugues","portugal"}');
insert into teste values (array['ingles','eua']);

*/

create domain VRC varchar(50);
-- criando esse dominio sempre quando vc usar VRC em um atributo ele vai ter o varchar especificado na criação
-- se vc mudar a quantidade do dominio do varchar , todos atributos que estão usando este dominio também vai mudar 


create table ator(
   id_ator int primary key not null,
   nomeA VRC,
   dataNsc date
);

insert into ator values (1,'victor','30/03/2005'),(2,'bianca','05/03/2005');

create table estrela(
	idaEstrela int primary key,
	codF int references filme(codF),
	id_ator int references ator(id_ator)
);

insert into estrela values (1,1,1),(2,2,2);

create table filme(
	codF int primary key not null,
	nomeF VRC,
	genero VRC,
	dataL date
);

insert into filme values (1,'bela e a fera','aventura','02-03-2000');
insert into filme values (2,'o atiradors','acao','12/05/1999');

create table exemplar(
	nroExemplar int primary key not null,
	codF int references filme(codF)
);

insert into  exemplar values (1,1),(2,2);

create table aluga(
	id_aluga int primary key not null,
	nroExemplar int references exemplar(nroExemplar),
	codC int references cliente(codC)
);

insert into aluga values (1,1,1),(2,2,2);

create table cliente(
	codC int primary key not null,
	nomeC VRC,
	id_end int references endereco(id_end),
	tel VRC[]
);

insert into cliente values (1,'Chaves',1,'{"portugues","portugal"}');
insert into cliente values (2,'Kiko',2,'{"123456","654321"}');

create table endereco(
	id_end int primary key not null,
	rua VRC,
	ciadade VRC,
	nro  int,
	cep varchar(9)
);

insert into endereco values (1,'Sao carlos','Sao Paulo',12,'123456789'),(2,'aguas claras','fernandopolis',34,'987654321');

drop table ator
drop table estrela
drop table exemplar
drop table aluga
drop table cliente
drop table endereco
drop table filme 


select * from ator
select * from estrela
select * from filme 
select * from exemplar 
select * from aluga
select * from cliente
select * from endereco