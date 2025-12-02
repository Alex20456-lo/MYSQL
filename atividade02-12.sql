create database bd0212;
use bd0212;

create table funcionario(
codfun int not null auto_increment,
nomefun varchar(45),
cargofun varchar(45),
salariofun float,
datadmissao date,
cpffun varchar(45),
constraint pkcodfun primary key (codfun));

show tables;
describe funcionario;

alter table funcionario rename column salariofun to salario;
alter table funcionario add column telefone varchar(45);
alter table funcionario drop column cpffun;

insert into funcionario (codfun, nomefun, cargofun, salario, datadmissao, telefone) values (1, 'jaden', 'faxineiro',2000,20001010,32988989898);
insert into funcionario (codfun, nomefun, cargofun, salario, datadmissao, telefone) values (2, 'joancelio', 'adiministrador',2000,20001109,32988989898);
insert into funcionario (codfun, nomefun, cargofun, salario, datadmissao, telefone) values (3, 'fabricio', 'atendente',2000,20001220,32988989898);
insert into funcionario (codfun, nomefun, cargofun, salario, datadmissao, telefone) values (4, 'fabiana', 'gerente de departamento',2000,20000714,32988989898);
insert into funcionario (codfun, nomefun, cargofun, salario, datadmissao, telefone) values (5, 'marcilene', 'faxineiro',2000,20000817,32988989898);

update funcionario set salario = 2500 where codfun=1;
select * from funcionario;
update funcionario set cargofun = 'consultor de vendas' where codfun = 1 & 5;

delete from funcionario where nomefun='marcilene';

select * from funcionario;
select * from funcionario where salario between 2000 and 3500;
select * from funcionario where cargofun in ('gerente', 'analista');
select * from funcionario where nomefun like 'li%';
