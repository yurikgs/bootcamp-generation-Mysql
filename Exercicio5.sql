create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table  tb_categoria(
	id_cat bigint auto_increment,
    nomeCat varchar(35),
    cadastroObrigatorio boolean,
	primary key(id_cat)
);

create table tb_produto(
	id_prod bigint auto_increment,
    nomeProd varchar(35),
    preco decimal(7,2),
    descricao varchar(50),
    id_cat bigint,
    primary key(id_prod),
    foreign key(id_cat) references tb_categoria(id_cat)
);

insert into tb_categoria(nomecat, cadastroObrigatorio) values
("Ferramentas e itens pequenos", false),
("Material de Concretagem", true),
("Telhado", true);

insert into tb_produto(nomeProd, preco, descricao, id_cat) values
("Chave de fenda", 15.00, "Média", 1),
("Chave de Grifo", 12.00, "Pequena", 1),
("Cimento cpII", 27.00, "Marca Mauá", 2),
("Caibro", 30.00, "3m", 3);

select*from tb_produto where preco>50.00;
select*from tb_produto where preco>3.00 and preco<60.00;
select*from tb_produto where nomeProd like "%C%";
select*from tb_produto inner join tb_categoria on tb_produto.id_cat=tb_categoria.id_cat;
select*from tb_produto where id_cat = 1; 

