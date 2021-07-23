create database db_pizzaria_legal;

use db_pizzaria_legal;

CREATE TABLE tb_categoria(
id int (5) auto_increment not null,
tipo_pizza  varchar(30) not null,
tamanho varchar (10) not null,
valor  decimal (20,2) not null,
 
 primary key (id)

);
CREATE TABLE tb_pizza(
id int(5) auto_increment not null,
sabor_pizza varchar(20) not null,
borda_recheada boolean  not null,
adcional_recheio boolean not null,
categoria_id int (30) not null,

primary key (id),

foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria (tipo_pizza,tamanho,valor) 
VALUES 
("salgada","broto",50.00),
("doce","grande",70.00),
("salgada","meio_meio",80.00),
("vegetariana ","broto",23.00),
("salgada","grande",70.00);

INSERT INTO tb_pizza (sabor_pizza,borda_recheada,adcional_recheio,categoria_id) 
VALUES 
("Calabresa",false, false ,11),
("Romeujulieta", true, false,12),
("baconqueijo",true, false,13),
("brocolis",false,false,14),
("mussarela",true, false,15),
("Moranguete",true, false,12),
("bacon",true, false,13),
("ovosardinha",true,true,11);

select * from  tb_categoria where valor > 45.00; 
select * from  tb_categoria where valor  between 29.00 and 60.00;
select * from tb_pizza where sabor_pizza like "%c%";

select *from tb_pizza inner join tb_categoria  on categoria_id = tb_pizza.categoria_id;
select *from tb_pizza inner join tb_categoria  on categoria_id = tb_pizza.categoria_id
where tb_categoria.tipo_pizza = "doce"

-- usar where para busca coisas especifica . 
 



