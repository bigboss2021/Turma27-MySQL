create database db_generation_game_online;
use  db_generation_game_online;
CREATE TABLE  tb_classe (
 id bigint(4) auto_increment,
raça varchar(30) NOT NULL,
classe varchar(30) NOT NULL,


primary key(id)
);

create table tb_personagens(
id int(5) not null auto_increment,
nome varchar (20)not null,
ataque int (10) not null,
defese int (10) not null,
hp int (10)not null,
habilidade varchar(40) not null,
classe_id  bigint not null,

PRIMARY KEY (id),
foreign key (classe_id) references tb_classe(id)
);

INSERT INTO tb_classe (raça,classe) 
VALUES 
("orc","mago"),
("gigante","arqueiro"),
("humano","berserk"),
("monstro ","clerigo"),
("humano","paladino");

INSERT INTO tb_personagens (nome, ataque, defese , hp, habilidade,classe_id) 
values 
("Clara", 2000,1200,100,"cura ressaca",1),
("Jana", 3000,1700,150,"Rage",2),
("Edinirson",1200,3500,200,"trovao",3),
("Tsuna", 3000,1900,170,"bola de fogo",4),
("draco", 4000, 3700,300,"golpe de furia",5),
("epaminondas",1800,1500,300,"poder da velhice",2),
("Mario", 6000,1100,500,"pulo",3),
("link", 4000,2700,300,"fechada",3);

select * from tb_personagens where ataque >2000;

select * from tb_personagens where nome like "%c%"; 
select * from tb_personagens
    inner join tb_classe on classe_id  = tb_personagens.classe_id
    where "berserk";
   
    select * from tb_personagem where classe= "arqueiro";






