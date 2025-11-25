create database bd1;
use bd1;
create table motorista(
id int not null auto_increment,
nome varchar(45),
fone varchar(45),

constraint pkid primary key (id));

create table cliente(
id int not null auto_increment,
nome varchar(45),
fone varchar(45),
endereco varchar(45),

constraint pkid primary key (id));

create table veiculo(
id int not null auto_increment,
placa varchar(45),
modelo varchar(45),
cor varchar(45),
ano int,
idmotorista int,

constraint pkid primary key (id),
constraint fkidmotorista foreign key (idmotorista) references motorista(id));

create table viagem(
id int not null auto_increment,
data date,
time time,
valor float,
origem varchar(45),
destino varchar(45),
cliente_id int,
idmotorista int,

constraint pkid primary key (id),
constraint fkcliente_id foreign key (cliente_id) references cliente(id),
constraint fkidmotorista foreign key (idmotorista) references motorista(id));

show tables;
describe viagem;
describe cliente;
describe motorista;
describe veiculo;

insert into motorista (id, nome, fone) values (1, 'Wallace', '32-98576215');
insert into motorista (id, nome, fone) values (2, 'Alex', '32-98763245');
insert into motorista (id, nome, fone) values (3, 'Hitman', '32-98902344');
insert into motorista (id, nome, fone) values (4, 'John', '32-98545622');

select * from motorista;

insert into cliente (id, nome, fone, endereco) values (1, 'Fulano', '3299887765', 'R. Pala1');
insert into cliente (id, nome, fone, endereco) values (2, 'Ciclano', '3299457763', 'R. Pala2');
insert into cliente (id, nome, fone, endereco) values (3, 'Beltrano', '3299327765', 'R. Pala3');
insert into cliente (id, nome, fone, endereco) values (4, 'Tetrano', '3299891722', 'R. Pala4');

select * from cliente;

insert into veiculo (id, placa, modelo, cor, ano, idmotorista) values (1, 'ab1c23', 'FiatTouro', 'preto', 2020, 2);
insert into veiculo (id, placa, modelo, cor, ano, idmotorista) values (2, 'td5g56', 'HondaCivic', 'preto', 2020, 1);
insert into veiculo (id, placa, modelo, cor, ano, idmotorista) values (3, 'ab7h48', 'HB20', 'prata', 2023, 3);
insert into veiculo (id, placa, modelo, cor, ano, idmotorista) values (4, 'op0t21', 'Uno', 'azul', 2018, 4);

select * from veiculo;

insert into viagem (id, data, time, valor, origem, destino, cliente_id, motorista_id) values (1, 20251225, 0900, 100, 'Macuco', 'Piratinga', 1, 2);
insert into viagem (id, data, time, valor, origem, destino, cliente_id, motorista_id) values (2, 20251230, 1000, 1000, 'Muriae', 'Arraial', 2, 1);
insert into viagem (id, data, time, valor, origem, destino, cliente_id, motorista_id) values (3, 20251129, 1500, 1000, 'Marrocos', 'Fortaleza', 3, 4);
insert into viagem (id, data, time, valor, origem, destino, cliente_id, motorista_id) values (4, 20260115, 0500, 1500, 'Bom Jesus', 'Sao Paulo', 4, 3);

select * from viagem;