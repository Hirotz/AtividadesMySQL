create database db_rh;

use  db_rh;

create table funcionarios(
id bigint auto_increment,
nome varchar (255) not null,
salario decimal(8,2) not null,
telefone int not null,
cargo varchar (255) not null,
email varchar (255) not null,
primary key (id)
);

-- Colocando dados na tabela
insert into funcionarios (nome, salario, telefone,cargo,email) 
values ("Adenia Chloe", 1985.00,40028922,"Secretaria","adenia0202@bol.com.br");

insert into funcionarios (nome, salario, telefone,cargo,email) 
values ("Shirley", 1500.00,987653244,"Contabilidade","shay_23@yahoo.com");

insert into funcionarios (nome, salario, telefone,cargo,email) 
values ("Galileu", 2300.00,984563726,"Motorista","galileucorridas@itelefonica.com.br");

insert into funcionarios (nome, salario, telefone,cargo,email) 
values ("Josecleide", 2570.00,55556755,"Advogado","josedireito@hotmail.com");

insert into funcionarios (nome, salario, telefone,cargo,email) 
values ("Antonieta", 2000.00,967654312,"Segurança","tonia12@outlook.com");

-- Seleciona os funcionarios com salario maior ou igual a 2.00,00
select * from funcionarios where salario > 2000.00 or salario = 2000.00;

-- Seleciona os funcionarios com salario menor que 2.00,00
select * from funcionarios where salario < 2000.00;







