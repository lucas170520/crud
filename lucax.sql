create database lxbakery;
use lxbakery;
create table atendente(
	id_atendente int primary key auto_increment,
    nome_aten varchar(50) not null
);
create table cliente(
	id_cliente int primary key auto_increment,
	telefone varchar (20) not null,
    nome_cliente varchar (50) not null ,
    endereço_cliente varchar (50) not null unique
);
create table pedidos(
	id_pedido int primary key auto_increment,
	preço decimal(5,2) not null,
    id_cli int,
    endereço_cli varchar(50),
    foreign key (id_cli) references cliente(id_cliente)
);

drop database lxbakery;