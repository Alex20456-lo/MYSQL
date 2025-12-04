create database BD2711;
use BD2711;

create table cliente(
codcliente int not null auto_increment,
nomecliente varchar(45),
bairrocliente varchar(45),

constraint pkcodcliente primary key (codcliente));

insert into cliente (codcliente, nomecliente, bairrocliente) values (1, 'wallace', 'cardoso de melo');
insert into cliente (codcliente, nomecliente, bairrocliente) values (2, 'alex', 'cerâmica');
insert into cliente (codcliente, nomecliente, bairrocliente) values (3, 'davi', 'cerâmica');
insert into cliente (codcliente, nomecliente, bairrocliente) values (4, 'kratos', 'grecia');
insert into cliente (codcliente, nomecliente, bairrocliente) values (5, 'pedro', ' cardoso de melo');

select * from  cliente where bairrocliente= 'cerâmica';
select nomecliente from cliente where bairrocliente='cerâmica';
select codcliente,nomecliente from cliente where codcliente>3;
describe cliente;
alter table cliente add column profcliente varchar(45);
alter table cliente add column emailcliente varchar(45);

select * from cliente;

update cliente set emailcliente = 'mariaregina@gmail.com' where codcliente=1;
update cliente set emailcliente = 'alexcorreia@gmail.com' where codcliente=2;
update cliente set emailcliente = 'davicarton@gmail.com' where codcliente=3;
update cliente set emailcliente = 'kratosbomdeguerra@gmail.com' where codcliente=4;
update cliente set emailcliente = 'pedritak@gmail.com' where codcliente=5;

update cliente set profcliente = 'Dono da empresa GeralX' where codcliente=1;
update cliente set profcliente = 'Policial do BOPE' where codcliente=2;
update cliente set profcliente = 'desempregado' where codcliente=3;
update cliente set profcliente = 'Matador de deuses de aluguel' where codcliente=4;
update cliente set profcliente = 'folgado' where codcliente=5;

delete from cliente where codcliente=5;

insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente) values (5, 'pedro', ' cardoso de melo', 'folgado', 'pedritak@gmail.com');
insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente) values (6, 'Golias', 'vales Hebro', 'guerreiro', 'pedravoadora@gmail.com');
insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente) values (7, 'Ezequiel', 'Porta do Templo', 'Aguas Profundas', 'Rioqualnãosenada@gmail.com');
insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente) values (8, 'Elias', 'Chá de Fogo', 'Zueiro', 'olhoofogo@gmail.com');

alter table cliente add column datacliente date;
alter table cliente rename column datacliente to datanascicliente;
update cliente set datanascicliente = '2002-03-13' where codcliente=1;
update cliente set datanascicliente = '2005-06-23' where codcliente=2;
update cliente set datanascicliente = '2010-10-25' where codcliente=3;
update cliente set datanascicliente = '2011-09-11' where codcliente=4;
update cliente set datanascicliente = '2007-09-07' where codcliente=5;
update cliente set datanascicliente = '1998-12-26' where codcliente=6;
update cliente set datanascicliente = '2009-05-18' where codcliente=7;
update cliente set datanascicliente = '2015-06-03' where codcliente=8;

alter table cliente add column cpf varchar(45);
update cliente set cpf = '11122233344' where codcliente=1;
update cliente set cpf = '11122234544' where codcliente=2;
update cliente set cpf = '18922233344' where codcliente=3;
update cliente set cpf = '111265233344' where codcliente=4;
update cliente set cpf = '11122232844' where codcliente=5;
update cliente set cpf = '11122233344' where codcliente=6;
update cliente set cpf = '11922273344' where codcliente=7;
update cliente set cpf = '11122243344' where codcliente=8;

select * from cliente where nomecliente like 'e%';
select * from cliente where codcliente between 3 and 6;
select * from cliente where nomecliente like '%e';
select * from cliente where bairrocliente in ('cerâmica', 'cardoso de melo'); 

insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente) values (9, 'Elisa', ' cardoso de melo', 'empresaria', 'elisa244@gmail.com');
insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente) values (10, 'Martha', 'bom pastor', 'psicologo', 'marthapsicologa@gmail.com');
insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente) values (11, 'Franscisco', 'vales Hebro', 'professor', 'fransHer@gmail.com');
insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente) values (12, 'Miguel', 'Porta do Templo', 'vendedor', 'migelotom@gmail.com');
insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente) values (13, 'Eduardo', 'grecia', 'desempregado', 'edugamers@gmail.com');
insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente) values (14, 'Alexandre', 'centro', 'gerente de departamento', 'alexandregrande@gmail.com');
insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente) values (15, 'Arthur', 'cardoso de melo', 'analista', 'arthurmorgan@gmail.com');
insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente) values (16, 'Lucas', 'cerâmica', 'gerente', '4klucaf@gmail.com');