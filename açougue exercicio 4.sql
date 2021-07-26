create database db_cidade_das_carnes; 

create table tb_categoria(
id bigint(30) not null auto_increment,
aves boolean not null,
bovino boolean not null,
suino boolean not null,
legumes boolean not null,

primary key (id)


);

INSERT INTO tb_categoria (aves,bovino,suino,legumes) 
VALUES 
(true,false,false,false), -- 1
(false ,true ,false,false), -- 2
(false,false,true,false), -- 3
(false,false,false,true), -- 4
(false,true,true,false); -- 5

create table tb_produto(
id int(5) not null auto_increment,
nome varchar  (30)not null,
valor decimal (20.2) not null,
marca varchar (30) not null,
quantidade int (10)not null,
kilo decimal(20.2) not null,
produto_tipo_id bigint(30) not null,

primary key (id),

foreign key (produto_tipo_id) references  tb_categoria(id)

);

INSERT INTO tb_produto (nome,valor,marca,quantidade,kilo,´produto_id) 
VALUES 
("pe de porco", 30.00,"friboi",30,"5k",3),
("costela de boi ", 70.00, "friboi",50,"30k",2),
("acem", 59.00,"seara",45,"4k",2),
("doril", 8.00,"pfizer",15,6.00,3),
("blush",5.00,"avon",16,3.50,5),
("cloroquina",60.00,"bloxina",10,45.00,6),
("saldefruta",4.00,"eno",27,2.00,2),
("xaropegripe",70.00,"charopmil",26,30.00,4);


