create database if not exists LAB2
default charset = utf8
default collate = utf8_general_ci;

use lab2;

create table tipo (
	codtipo int not null auto_increment,
    desctipo varchar(60) not null unique,
    primary key (codtipo)
);

create table animal (
	codanimal int not null auto_increment,
    nomeanimal varchar(60) not null unique,
    codtipoanimal int not null,
    constraint primary key (codanimal),
    constraint FK_tipo_animal foreign key (codtipoanimal) references tipo (codtipo)
);

create table funcionario (
	codfunc int not null auto_increment,
    nomefunc varchar(60) not null,
    especialidadefunc varchar(60) not null default 'tratador de animais',
    constraint primary key (codfunc)
);

create table responsavel (
	codfunc int not null,
    codanimal int not null,
    constraint primary key (codfunc),
    constraint FK_funcionario_responsavel foreign key (codfunc) references funcionario (codfunc),
	constraint FK_funcionario_animal foreign key (codanimal) references animal (codanimal)
);

select * from animal;
select * from funcionario;
select * from responsavel;
select * from tipo;
