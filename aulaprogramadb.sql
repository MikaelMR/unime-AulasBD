create database alunos; #cria um banco de dado

use alunos; #seleciona qual banco de dado está sendo utilizado

show char set; #apresenta os charsets disponiveis

show char set where charset like 'latin1'; #mostra um charset específico

show collation; #apresenta os collation disponiveis

show collation where collation like 'utf8_general_nopad_ci'; #mostra um collation específico

create database if not exists alunos; #cria um banco de dados se não houver um com o mesmo nome

create database if not exists exemplo1
default charset = utf8
default collate = utf8_general_ci;

show databases; #mostra os seus bancos de dados criados

drop database alunos; #deleta um banco de dados

alter database exemplo1 charset = latin1; #faz uma alteração no banco de dados, nesse caso o charset

create table subexem1 (
id int not null auto_increment primary key); #Primeiro é dito o nome do dado(id), depois o seu tipo(int), depois vem as suas restrições(not null e auto_increment
