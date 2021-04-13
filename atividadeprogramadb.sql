create database if not exists empresa
default charset = utf8
default collate = utf8_general_ci;

use empresa;

create table setores (
	id int not null auto_increment,
	nome varchar(30) not null unique,
	primary key (id)
);
create table funcionarios (
	id int not null auto_increment,
	nome varchar(60) not null,
	cpf varchar(11) not null unique,
	matricula varchar(4) not null unique,
	email varchar(60) not null unique,
	salario float(10,2) not null,
	setor_id int not null,
	constraint primary key (id),
	constraint FK_setores_funcionarios foreign key (setor_id) references setores (id)
);

select * from funcionarios;
select * from setores;
select * from veiculos;

#Para fazer um filtro na exibição da tabela: 
select nome, cpf from funcionarios; #(EXEMPLO)
#Para alterar/adicionar mais uma coluna ou outra coisa na tabela: 
alter table funcionarios add column exemplo1 int not null; #(EXEMPLO)

alter table funcionarios add column rg varchar(10) not null;

#Para modificar algo de uma coluna em específico:
alter table funcionarios modify column rg int not null; #(EXEMPLO)
#Para mudar o nome de uma coluna:
alter table funcionarios change column rg rg_funcionarios varchar(10) not null; #(EXEMPLO)
#Para dropar uma coluna:
alter table funcionarios drop column rg; #(EXEMPLO)

alter table funcionarios add column rg varchar(10) not null after cpf;

create table veiculos (
	id int not null auto_increment,
	modelo varchar(30) not null,
    placa varchar(7) not null unique,
    funcionario_id int not null,
	constraint primary key (id),
    constraint FK_funcionarios_veiculos foreign key (funcionario_id) references funcionarios (id)
);

select * from funcionarios;
select * from setores;
select * from veiculos;

insert into setores (id, nome) values (null, 'TI'); #O campo id não é necessário dar um valor por cause do auto_increment, mas se você der um valor ele prioriza o valor dado
insert into setores (nome) values ('RH'); #É possível também ignorar o id, já que ele vai estar com auto_increment
insert into setores values (null, 'Jurídico'); #Você também pode ignorar a order dos valores, porém ele segue a order da criação das colunas na tabela
insert into setores (id, nome) values (null, 'Vendas');

insert into funcionarios (id,nome,cpf,matricula,email,salario,setor_id)
values (null,'Ivan', '12345678900', '1222', 'ivan@gmail.com', 7500.00, 2);
insert into funcionarios (id,nome,cpf,matricula,email,salario,setor_id)
values (null, 'Sérgio', '12345678901', '1221', 'sergio@gmail.com', 15000.00, 1);
insert into funcionarios (id,nome,cpf,matricula,email,salario,setor_id)
values (null,'Ciro', '12345678902', '1223', 'ciro@gmail.com', 1100.00, 3);
insert into funcionarios (id,nome,cpf,matricula,email,salario,setor_id)
values (null,'Horlando', '12345678903', '1224', 'horlando@gmail.com', 1900.00, 4);
insert into funcionarios (id,nome,cpf,matricula,email,salario,setor_id)
values (null,'Marcos', '12345678904', '1225', 'marcos@gmail.com', 15000.00, 1);
insert into funcionarios (id,nome,cpf,matricula,email,salario,setor_id)
values (null,'Alex', '12345678905', '1226', 'alex@gmail.com', 7500.00, 2);

select * from veiculos;
select * from funcionarios;

insert into veiculos (id, modelo, placa, funcionario_id)
values (null, 'Kombi', "AAA001", 1);
insert into veiculos (id, modelo, placa, funcionario_id)
values (null, 'Evoque', "AAA002", 3);
insert into veiculos (id, modelo, placa, funcionario_id)
values (null, 'BMX X6', "AAA003", 7);
insert into veiculos (id, modelo, placa, funcionario_id)
values (null, 'Celta', "AAA004", 2);
insert into veiculos (id, modelo, placa, funcionario_id)
values (null, 'Civic', "AAA005", 5);
insert into veiculos (id, modelo, placa, funcionario_id)
values (null, 'Fusca', "AAA006", 4);
insert into veiculos (id, modelo, placa, funcionario_id)
values (null, 'Gol', "AAA007", 1);

select * from funcionarios;
select * from setores;
select * from veiculos;

#Para deletar um dado de uma coluna:
delete from veiculos where id = 11; #(EXEMPLO)
#Para mudar algo em um dado de uma coluna:
update setores set nome = 'Recursos Humanos' where id = 2; #(EXEMPLO)
update setores set nome = 'Tecnologia da Informação' where id = 1; #(EXEMPLO)




