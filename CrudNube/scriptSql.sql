create database projetoNube;
use projetoNube;

create table cliente(
id int not null auto_increment primary key,
nome varchar (255),
idade int,
email varchar (255),
telefone varchar (20)
);
