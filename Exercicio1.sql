create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe (
	id_classe bigint auto_increment,
    nomeClasse varchar(12),
    vantagem bigint, /*Numero(id) da classe em que causa 15% a mais de dano, quando ataca*/
    desvantagem bigint, /*Numero(id) da classe que provoca 15% a mais de dano, quando  sob ataque*/
	primary key(id_classe)
);


create table tb_personagem (
	id_personagem bigint auto_increment,
    nome varchar(15),
    poderAtaque bigint,
    poderDefesa bigint,
    cor varChar(12),
    numeroClasse bigint,
    primary key(id_personagem),
    foreign key(numeroClasse) references tb_classe(id_classe)
);



insert into tb_classe(nomeClasse, vantagem, desvantagem) values('Pássaro', 2, 3);
insert into tb_classe(nomeClasse, vantagem, desvantagem) values('Bug', 3, 1);
insert into tb_classe(nomeClasse, vantagem, desvantagem) values('Planta', 1, 2);

insert into tb_personagem(nome, poderAtaque, poderDefesa, cor, numeroClasse) values ('Little Bird', 3100, 1300, 'pink', 1);
insert into tb_personagem(nome, poderAtaque, poderDefesa, cor, numeroClasse) values ('Butterfly', 2500, 1800, 'red', 2);
insert into tb_personagem(nome, poderAtaque, poderDefesa, cor, numeroClasse) values ('Samambaia', 1300, 3000, 'green', 3);
insert into tb_personagem(nome, poderAtaque, poderDefesa, cor, numeroClasse) values ('Eagle', 4500, 1600, 'brown', 1);
insert into tb_personagem(nome, poderAtaque, poderDefesa, cor, numeroClasse) values ('Centopéia', 2900, 2500, 'brown', 2);
insert into tb_personagem(nome, poderAtaque, poderDefesa, cor, numeroClasse) values ('Waterlily', 1900, 4300, 'green', 3);

select * from tb_personagem where poderAtaque>2000;
select * from tb_personagem where poderDefesa<2000 and poderDefesa>1000;
select * from tb_personagem where nome like "%C%";

/*INNER JOIN: MODELO*/
/*select (NOME DA COLUNA Q VC QUER SELECIONAR, OU *, PARA TUDO)  from nomeTabela1 inner join tabela2 on tabela1.coldeRelacionamento=tabela2.coldeRelacionamento*/

select * from tb_personagem inner join tb_classe on tb_personagem.numeroClasse=tb_classe.id_classe;

select * from tb_personagem where numeroClasse = 1;

drop table tb_classe;
drop table tb_personagem;