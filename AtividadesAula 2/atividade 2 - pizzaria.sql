create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar (255) not null,
bordaRecheada boolean not null,
tipo varchar (255) not null,
primary key (id)
);

select * from tb_categoria;

insert into tb_categoria (tamanho, bordaRecheada, tipo) values ("Grande", true, "Salgada");
insert into tb_categoria (tamanho, bordaRecheada, tipo) values ("Grande", false, "Doce");
insert into tb_categoria (tamanho, bordaRecheada, tipo) values ("Pequena", true, "Salgada");
insert into tb_categoria (tamanho, bordaRecheada, tipo) values ("Pequena", true, "Doce");
insert into tb_categoria (tamanho, bordaRecheada, tipo) values ("Brotinho", false, "Salgada ou Doce");

create table tb_pizza(
id bigint auto_increment,
nome varchar (255) not null,
preco decimal (8,2) not null,
azeitona boolean not null,
fatias int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

select * from tb_pizza;

insert into tb_pizza (nome, preco, azeitona, fatias, categoria_id) values ("Calabresa", 35.00, true, 8, 1);
insert into tb_pizza (nome, preco, azeitona, fatias, categoria_id) values ("4 Queijos", 45.00, true, 8, 1);
insert into tb_pizza (nome, preco, azeitona, fatias, categoria_id) values ("Marguerita", 67.00, true, 6, 3);
insert into tb_pizza (nome, preco, azeitona, fatias, categoria_id) values ("Brigadeiro", 15.00, false, 4, 5);
insert into tb_pizza (nome, preco, azeitona, fatias, categoria_id) values ("Frango c/ Catupiri", 55.60, true, 8, 1);
insert into tb_pizza (nome, preco, azeitona, fatias, categoria_id) values ("Vegetariana", 35.00, true, 6, 3);
insert into tb_pizza (nome, preco, azeitona, fatias, categoria_id) values ("Nutella", 80.00, false, 8, 2);
insert into tb_pizza (nome, preco, azeitona, fatias, categoria_id) values ("Prestigio",25.00, false, 6, 4);


-- Selecionando pizzas com preço mais que 45,00
select * from tb_pizza where preco > 45.00;

-- Selecionando pizzas com preço entre 29,00 e 60,00
select * from tb_pizza where preco between 29.00 and 60.00;

-- Selecionando pizzas com a letra C no nome
select * from tb_pizza where nome like "%c%";

-- Selecionando as duas tabelas
select * from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id;

-- Selecionando pizzas do mesmo tamanho
select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id 
where tamanho like "Grande";

