create domain VRC varchar(50);

create table medico(
	
	CRM INT NOT NULL PRIMARY KEY,
	nomeM VRC,
	endrecoM varchar(100),
	dataN DATE,
	especialidade VRC [],
	telefoneM VRC []
	
);

insert into medico values (123,'Jose','R:Sao Carlos N:48','10-05-2000','{"Cirurgia","Injeção"}','{"179956548","171111"}'),
(111,'Maria','R:Sao Pedro N:8','19-10-2005','{"Cirurgia","Medicação"}','{"179999999","1744444"}');

create table paciente(

	CPF INT NOT NULL PRIMARY KEY,
	nomeP VRC,
	enderecoP varchar(100),
	telefoneP VRC []
	
);


insert into paciente values (3,'Victor','R:Zé do milho N:10000','{"15555"}'),(2,'Daiel','R:Maria Doce N:1','{"555585"}');

create table consulta(

	data_Consulta DATE NOT NULL PRIMARY KEY,
	CPF INT references paciente(CPF),
	CRM INT references medico(CRM)
	
);

insert into consulta values ('14-02-2022',3,123),('12-06-20000',2,111);

drop table consulta

select * from medico
select * from paciente
select * from consulta