create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
tipo varchar (255) not null,
categoria varchar (255) not null,
fraqueza varchar (255) not null,
primary key (id)
);

insert into tb_classe (tipo, categoria, fraqueza) value ("Mago/Feiticeiro", "Mágico", "Tecnológico");
insert into tb_classe (tipo, categoria, fraqueza) value ("Soldado", "Super Força", "Tecnológico");
insert into tb_classe (tipo, categoria, fraqueza) value ("Deus", "Super Força", "Mágico");
insert into tb_classe (tipo, categoria, fraqueza) value ("Lutador", "Mágico", "Super Força");
insert into tb_classe (tipo, categoria, fraqueza) value ("Tecnológico", "Inventor", "Lutador");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar (255) not null,
ataque int not null,
defesa int not null,
energia int not null,
item varchar (255),
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);

select * from tb_personagem;
-- Adicionando valores na tabela Personagem
insert into tb_personagem (nome, ataque, defesa, item, energia, classe_id) 
values ("Doutor Estranho", 5000, 4700, "Manto de Levitação", 4500, 1);

insert into tb_personagem (nome, ataque, defesa, item, energia, classe_id) 
values ("Thor", 2900, 1900, "stormbreaker", 2700, 3);

insert into tb_personagem (nome, ataque, defesa, item, energia, classe_id) 
values ("Homem de Ferro", 1900, 1500, "Armadura", 2000, 5);

insert into tb_personagem (nome, ataque, defesa, item, energia, classe_id) 
values ("Feiticeira Escarlate", 2000, 2250, "Dark Hold", 3000, 1);

insert into tb_personagem (nome, ataque, defesa, item, energia, classe_id) 
values ("Capitão América", 2000, 1500, "Escudo", 2000, 2);

insert into tb_personagem (nome, ataque, defesa, item, energia, classe_id) 
values ("Shang-Chi", 1950, 1200, "Anéis", 2900, 4);

insert into tb_personagem (nome, ataque, defesa, item, energia, classe_id) 
values ("Capitã Marvel", 3000, 2400, "Pager", 3000, 3);

insert into tb_personagem (nome, ataque, defesa, item, energia, classe_id) 
values ("Soldado Invernal", 1000, 1995, "Manto de Levitação", 1000, 2);

-- Selecionando personagens com ataque maior que 2000
select * from tb_personagem where ataque > 2000;

-- Selecionando personagens com defesa entre 1000 e 2000
select * from tb_personagem where defesa between 1000 and 2000;

-- Selecionando personagens com inicial C no nome
select * from tb_personagem where nome like "C%";

-- Fazendo seleção entre as tabelas personagem e classe
select tb_personagem.id, tb_personagem.nome, tb_personagem.ataque, tb_personagem.defesa, tb_personagem.item, tb_personagem.energia,  
tb_classe.tipo, tb_classe.categoria, tb_classe.fraqueza from tb_personagem inner join tb_classe on
tb_classe.id = tb_personagem.classe_id;

-- Selecionando personagem do mesmo tipo
select tb_personagem.nome, tb_classe.tipo from tb_personagem inner join tb_classe on tb_personagem.classe_id =tb_classe.id
where tb_classe.id = 1 ;




  




