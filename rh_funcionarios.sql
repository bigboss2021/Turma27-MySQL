CREATE TABLE  rh_funcionarios(
  id int(5) auto_increment,
  funcionario varchar(30) not null,
  salario bigint (4) not null,
  presente boolean,
  ferias boolean,
  primary key (id)
  

);

alter TABLE rh_funcionarios 
add telefone int;

select * from rh_funcionarios

