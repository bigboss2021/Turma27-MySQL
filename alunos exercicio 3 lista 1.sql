/*create database db_exercicio_lista3;
use db_exercicio_lista3;

create table alunos(
id int (10) auto_increment not null,
nome varchar (30) not null, 
serie varchar(20)not null,
idade int (10) not null,
nota decimal (10,1) not null,

primary key(id)

);
INSERT INTO alunos (nome ,serie,idade,nota) 
VALUES 
("Pedrinho","1b",15,"9.00"),
("carlinhos","2c",16,"9.00"),
("mariazinha","1d",15,"9.00"),
("joaninha ","4b",17,"9.00"),
("fernandinho","9b",19,"9.00");
 select * from alunos where nota> 7;
 select * from alunos where nota< 7;
 update alunos set nota =6.0
 where id=2;
 
 
 


