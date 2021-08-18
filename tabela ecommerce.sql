create database db_ecommerce;

use db_ecommerce;

create table produtos(
id bigint auto_increment,
nome varchar (255) not null,
categoria varchar (255) not null,
preco decimal (8,2) not null,
descricao varchar(255),
disponibilidade boolean,
primary key (id)
);

insert into produtos (nome, categoria, preco, descricao,disponibilidade)
values ("Chuveiro Elétrico","Banheiro",869.90,"Chuveiro Multitemperatura 220V 7800W",true);

insert into produtos (nome, categoria, preco, descricao,disponibilidade)
values ("Ofurô","Banheiro",7039.90,"Ofurô de Hidromassagem Oval Duplo",false);

insert into produtos (nome, categoria, preco, descricao,disponibilidade)
values ("Caixa de Som","Áudio e Vídeo",500.00,"Caixa Bluetooth",true);

insert into produtos (nome, categoria, preco, descricao,disponibilidade)
values ("Notebook","Áudio e Vídeo",4966.99,"Notebook Samsung Book X30",false);

insert into produtos (nome, categoria, preco, descricao,disponibilidade)
values ("Porta","Portas",325.00,"Porta com Batente de Giro",true);

insert into produtos (nome, categoria, preco, descricao,disponibilidade)
values ("Protetor Anti Deslizante","Acessórios para Móveis",6.50,"Adesivo anti derrapante",false);

insert into produtos (nome, categoria, preco, descricao,disponibilidade)
values ("Ponteira Redonda ","Acessórios para Móveis",14.75," Proteger o piso e os móveis de arranhões",true);

insert into produtos (nome, categoria, preco, descricao,disponibilidade)
values ("Luminária Externa","Iluminação",159.90,"indicado para resistir à chuva e jatos de água.",true);

select * from produtos;

-- Selecionando os produtos maiores que 500,00
select * from produtos where preco > 500.00;

-- Selecionando os produtos menos que 500,00
select * from produtos where preco < 500.00;

-- Atualizando o valor de um atributo
update produtos set nome = "Porta de Salão" where id = 5;

