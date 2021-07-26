create database db_farmacia_do_bem;

create table tb_categoria(
id bigint (30) not null auto_increment,
remedio_generico boolean not null,
remedio_comum boolean, 
remedio_controlado boolean not null,
cosmetico boolean,

primary key(id)

);
INSERT INTO tb_categoria (remedio_generico,remedio_comum,remedio_controlado,cosmetico ) 
VALUES 
(true,true,false,false), -- 1
(false ,true ,false,false), -- 2
(false,true,false,false), -- 3
(false,true,true,false), -- 4
(false,false,false,true), -- 5
(true,true,false,false); -- 6

create table tb_produto(
id int(5) not null auto_increment,
nome varchar  (30)not null,
valor decimal (20.2) not null,
marca varchar (30) not null,
quantidade int (10)not null,
promoção decimal(40.2) not null,
remedio_comum_id bigint(30) not null,


primary key (id),

foreign key (remedio_comum_id) references tb_categoria(id)
);

INSERT INTO tb_produto (nome,valor,marca,quantidade,promoção,remedio_comum_id) 
VALUES 
("paracetamol", 10.00,"uniãoqumica",20,5.00,6),
("batom", 6.00, "nevea",30,3.00,5),
("hidroxina", 25.00,"lagrand",40,20.00,4),
("doril", 8.00,"pfizer",15,6.00,3),
("blush",5.00,"avon",16,3.50,5),
("cloroquina",60.00,"bloxina",10,45.00,6),
("saldefruta",4.00,"eno",27,2.00,2),
("xaropegripe",70.00,"charopmil",26,30.00,4);

select * from tb_produto where valor >50.00;
select * from tb_produto where valor >50.00;
select * from  tb_produto where valor  between 3.00 and 60.00;
select * from  tb_produto where nome like "%b%";
select *from tb_produto inner join tb_categoria  on remedio_comum_id = tb_produto.remedio_comum_id;

select *from tb_categoria inner join tb_produto on remedio_comum_id = tb_produto.remedio_comum_id
where tb_categoria.tb_produto = "5"


