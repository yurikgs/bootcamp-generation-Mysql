create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
	id_categoria bigint auto_increment,
    tarja varchar(15),
	receitaNecessaria boolean,
	primary key(id_categoria)
);

create table tb_remedio(
	id_remedio bigint auto_increment,
	nome varchar(50),
    preco decimal(7,2),
    estoque bigint,
    indicacao varchar(25),
    id_categoria bigint,
    primary key(id_remedio),
    foreign key(id_categoria) references tb_categoria(id_categoria)
);

insert into tb_categoria(tarja, receitaNecessaria) values 
("Não tarjado", false),
("Vermelha", true),
("Preta", true);

insert into tb_remedio(nome, preco, estoque, indicacao, id_categoria) values
("Dipirona", 2.00, 2000, "Dor", 1),
("Dorflex", 7.00, 2500, "Dor", 1),
("Sertralina", 25.00, 1500, "Ansiedade", 2),
("Clonazepan", 55.00, 1200, "Calmante", 3),
("Rivotril", 80.00, 800, "Calmante", 3),
("Ibuprofeno", 20.00, 1500, "Dor e Inflamação(febre)", 1);

select*from tb_remedio where preco>50.00;
select*from tb_remedio where preco>3 and preco<60;
select*from tb_remedio where nome like '%B%';
select * from tb_remedio inner join tb_categoria on tb_categoria.id_categoria=tb_remedio.id_categoria;
select*from tb_remedio where id_categoria = 3;


drop database db_farmacia_do_bem;