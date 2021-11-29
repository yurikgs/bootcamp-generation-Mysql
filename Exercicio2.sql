create database db_pizzaria_legal;
use db_pizzaria_legal;
create table tb_categoria (
	id_categoria bigint auto_increment,
    nomeCategoria varchar(15),
    tamanho bigint,
    primary key (id_categoria)
);

create table tb_pizza (
	id_pizza bigint auto_increment,
    sabor varchar(25),
    bordaCatupiry boolean,
    preco decimal(5,2),
    numeroCategoria bigint,
    primary key(id_pizza),
    foreign key(numeroCategoria) references tb_categoria(id_categoria)
);

insert into tb_categoria(nomeCategoria, tamanho) values('Gigante', 55);
insert into tb_categoria(nomeCategoria, tamanho) values('Família', 45);
insert into tb_categoria(nomeCategoria, tamanho) values('Grande', 35);
insert into tb_categoria(nomeCategoria, tamanho) values('Média', 25);
insert into tb_categoria(nomeCategoria, tamanho) values('Pequena', 15);
insert into tb_categoria(nomeCategoria, tamanho) values('Brotinho', 10);

insert into tb_pizza(sabor, bordaCatupiry, preco, numeroCategoria) values('Mussarela', true, 40.00, 1);
insert into tb_pizza(sabor, bordaCatupiry, preco, numeroCategoria) values('Mussarela', false, 38.00, 1);
insert into tb_pizza(sabor, bordaCatupiry, preco, numeroCategoria) values('Marguerita', true, 42.00, 1);
insert into tb_pizza(sabor, bordaCatupiry, preco, numeroCategoria) values('Marguerita', false, 40.00, 1);
insert into tb_pizza(sabor, bordaCatupiry, preco, numeroCategoria) values('Calabresa', true, 44.00, 1);
insert into tb_pizza(sabor, bordaCatupiry, preco, numeroCategoria) values('Calabresa', false, 42.00, 1);
insert into tb_pizza(sabor, bordaCatupiry, preco, numeroCategoria) values('Salaminho', true, 47.00, 1);
insert into tb_pizza(sabor, bordaCatupiry, preco, numeroCategoria) values('Salaminho', false, 45.00, 1);

select*from tb_pizza where preco>45;
select*from tb_pizza where preco>29 and preco<60;
select*from tb_pizza where sabor like '%c%';
select*from tb_pizza inner join tb_categoria on tb_pizza.numeroCategoria = tb_categoria.id_categoria;
select*from tb_pizza where numeroCategoria = 1;

drop table tb_pizza;
drop table tb_categoria;
