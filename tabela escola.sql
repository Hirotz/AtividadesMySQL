create database db_escola;

use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar (255) not null,
idade int not null,
nota decimal (8,2) not null,
materia varchar (255) not null,
situacao varchar (255) not null,
primary key (id)
);

-- Inserindo valores na tabela
insert into tb_alunos(nome, idade, nota, materia, situacao)
values ("Murilo", 16, 8.3, "Português", "Aprovado");

insert into tb_alunos(nome, idade, nota, materia, situacao)
values ("Átila", 15, 10.00, "Ciências", "Aprovado");

insert into tb_alunos(nome, idade, nota, materia, situacao)
values ("Ariel", 16, 7.5, "História", "Aprovado");

insert into tb_alunos(nome, idade, nota, materia, situacao)
values ("Gabriela", 17, 5.3, "Geografia", "Recuperação");

insert into tb_alunos(nome, idade, nota, materia, situacao)
values ("Julia", 15, 4.9, "Português", "Reprovada");

insert into tb_alunos(nome, idade, nota, materia, situacao)
values ("Luisa", 16, 4.0, "Matemática", "Reprovada");

insert into tb_alunos(nome, idade, nota, materia, situacao)
values ("Jonathan", 17, 9.0, "Química", "Aprovado");

insert into tb_alunos(nome, idade, nota, materia, situacao)
values ("Amanda", 15, 5.7, "Inglês", "Recuperação");

-- Selecionando as notas maiores que 7
select * from tb_alunos where nota > 7;

-- Selecionando as notas menores que 7
select * from tb_alunos where nota < 7;

-- Atualizando dados nas colunas nota e situação.
update tb_alunos set nota = 6.0,  situacao = "Recuperação" where id = 3;

select * from tb_alunos;