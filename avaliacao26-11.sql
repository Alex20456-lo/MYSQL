create database hotelParaiso;
use hotelParaiso;

create table hospedes(
cod int not null unique auto_increment,
nome varchar(45),
cpf varchar(45),
tel varchar(45),
end varchar(45),
constraint pkcod primary key (cod));

create table quartos(
cod int not null unique auto_increment,
tipo varchar(45),
precodiaria float,
status varchar(45),
constraint pkcod primary key (cod));

create table servicos(
cod int not null unique auto_increment,
tiponome varchar(45),
precouni float,
constraint pkcod primary key (cod));

create table reservas(
cod int not null unique auto_increment,
datecheckin date,
datecheckout date,
valortotal float,
quartocod int,
hospedecod int,

constraint pkcod primary key (cod),
constraint fkquartocod foreign key (quartocod) references quartos(cod),
constraint fkhospedecod foreign key (hospedecod) references hospedes (cod));

create table consumoservico(
cod int not null unique auto_increment,
consumoservico varchar(45),
reservacod int,
servicocod int,

constraint pkcod primary key (cod),
constraint fkreservacod foreign key (reservacod) references reservas(cod),
constraint fkservicocod foreign key (servicocod) references servicos(cod));

show tables;
describe hospedes;
describe quartos;
describe servicos;
describe reservas;
describe consumoservico;

insert into hospedes (cod, nome, cpf, tel, end) values (1, 'Rodolfo', '01734566522', '3298957000', 'Rua Portas1');
insert into hospedes (cod, nome, cpf, tel, end) values (2, 'Rodo', '22734566522', '3298980210', 'Rua Portas1');
insert into hospedes (cod, nome, cpf, tel, end) values (3, 'Sem', '01734346522', '3298980088', 'Rua Portas1');
insert into hospedes (cod, nome, cpf, tel, end) values (4, 'Alicat', '01235566522', '3298986700', 'Rua Portas1');
insert into hospedes (cod, nome, cpf, tel, end) values (5, 'Thelles', '01154566522', '3299980000', 'Rua Portas1');
insert into hospedes (cod, nome, cpf, tel, end) values (6, 'Falez', '01734567722', '3298990000', 'Rua Portas1');
insert into hospedes (cod, nome, cpf, tel, end) values (7, 'Edu', '01734566522', '3298980670', 'Rua Portas1');
insert into hospedes (cod, nome, cpf, tel, end) values (8, 'Alexandre', '01735566522', '3293980000', 'Rua Portas1');
insert into hospedes (cod, nome, cpf, tel, end) values (9, 'Gabriel', '01734566522', '3298983000', 'Rua Portas1');
insert into hospedes (cod, nome, cpf, tel, end) values (10, 'Sansão', '21734566522', '3298945000', 'Rua Portas1');
insert into hospedes (cod, nome, cpf, tel, end) values (11, 'Davi', '72734566522', '3298980430', 'Rua Portas1');
insert into hospedes (cod, nome, cpf, tel, end) values (12, 'Talon', '01854566522', '3298987600', 'Rua Portas1');
insert into hospedes (cod, nome, cpf, tel, end) values (13, 'Abrham', '01735666522', '3298980120', 'Rua Portas1');
insert into hospedes (cod, nome, cpf, tel, end) values (14, 'Alucard', '01734566572', '3298980220', 'Rua Portas1');

select * from hospedes;

insert into quartos (cod, tipo, precodiaria, status) values (1, 'standard', 200, 'livre');
insert into quartos (cod, tipo, precodiaria, status) values (2, 'superior', 200, 'livre');
insert into quartos (cod, tipo, precodiaria, status) values (3, 'suite', 300, 'manutencao');
insert into quartos (cod, tipo, precodiaria, status) values (4, 'deluxe', 150, 'ocupado');
insert into quartos (cod, tipo, precodiaria, status) values (5, 'standard', 200, 'livre');
insert into quartos (cod, tipo, precodiaria, status) values (6, 'luxo', 500, 'livre');
insert into quartos (cod, tipo, precodiaria, status) values (7, 'suite', 300, 'ocupado');
insert into quartos (cod, tipo, precodiaria, status) values (8, 'standard', 200, 'manutencao');
insert into quartos (cod, tipo, precodiaria, status) values (9, 'deluxe', 150, 'livre');
insert into quartos (cod, tipo, precodiaria, status) values (10, 'deluxe', 150, 'ocupado');
insert into quartos (cod, tipo, precodiaria, status) values (11, 'luxo', 500, 'livre');
insert into quartos (cod, tipo, precodiaria, status) values (12, 'standard', 200, 'livre');
insert into quartos (cod, tipo, precodiaria, status) values (13, 'superior', 300, 'manutencao');
insert into quartos (cod, tipo, precodiaria, status) values (14, 'superior', 300, 'ocupado');

select * from quartos;

insert into servicos (cod, tiponome, precouni) values (1, 'boasvindas persnalizadas', 100);
insert into servicos (cod, tiponome, precouni) values (2, 'espaco trabalho remoto', 50);
insert into servicos (cod, tiponome, precouni) values (3, 'transer', 120);
insert into servicos (cod, tiponome, precouni) values (4, 'salao eventos', 100);
insert into servicos (cod, tiponome, precouni) values (5, 'aluguel de carros', 240);
insert into servicos (cod, tiponome, precouni) values (6, 'academia', 50);
insert into servicos (cod, tiponome, precouni) values (7, 'brindes', 70);
insert into servicos (cod, tiponome, precouni) values (8, 'produtos de higiene pessoal', 60);
insert into servicos (cod, tiponome, precouni) values (9, 'lavanderia', 20);
insert into servicos (cod, tiponome, precouni) values (10, 'sapateria', 15);
insert into servicos (cod, tiponome, precouni) values (11, 'hidromassagem', 350);
insert into servicos (cod, tiponome, precouni) values (12, 'massagem', 150);

select * from servicos;

insert into reservas (cod, datecheckin, datecheckout, valortotal, quartocod, hospedecod) values (1, 20251220, 20260110, 2500, 2, 1);
insert into reservas (cod, datecheckin, datecheckout, valortotal, quartocod, hospedecod) values (2, 20251215, 20251228, 3500, 4, 2);
insert into reservas (cod, datecheckin, datecheckout, valortotal, quartocod, hospedecod) values (3, 20251220, 20260110, 1500, 13, 3);
insert into reservas (cod, datecheckin, datecheckout, valortotal, quartocod, hospedecod) values (4, 20251213, 20260127, 4000, 11, 4);
insert into reservas (cod, datecheckin, datecheckout, valortotal, quartocod, hospedecod) values (5, 20251212, 20260110, 5500, 8, 5);
insert into reservas (cod, datecheckin, datecheckout, valortotal, quartocod, hospedecod) values (6, 20260105, 20260210, 2500, 1, 6);
insert into reservas (cod, datecheckin, datecheckout, valortotal, quartocod, hospedecod) values (7, 20260220, 20260320, 2500, 6, 7);
insert into reservas (cod, datecheckin, datecheckout, valortotal, quartocod, hospedecod) values (8, 20251223, 20260107, 1780, 7, 9);
insert into reservas (cod, datecheckin, datecheckout, valortotal, quartocod, hospedecod) values (9, 20251220, 20260110, 3050, 12, 11);
insert into reservas (cod, datecheckin, datecheckout, valortotal, quartocod, hospedecod) values (10, 20251220, 20260110, 4600, 10, 10);
insert into reservas (cod, datecheckin, datecheckout, valortotal, quartocod, hospedecod) values (11, 20251220, 20260110, 2200, 9, 8);
insert into reservas (cod, datecheckin, datecheckout, valortotal, quartocod, hospedecod) values (12, 20260220, 20260227, 2800, 3, 12);
insert into reservas (cod, datecheckin, datecheckout, valortotal, quartocod, hospedecod) values (13, 20251220, 20260110, 3900, 5, 13);

select * from reservas;

insert into consumoservico (cod, consumoservico, reservacod, servicocod) values (1, 'acadenia', 1, 6); 
insert into consumoservico (cod, consumoservico, reservacod, servicocod) values (2, 'brindes', 2, 7);
insert into consumoservico (cod, consumoservico, reservacod, servicocod) values (3, 'acadenia', 3, 6);
insert into consumoservico (cod, consumoservico, reservacod, servicocod) values (4, 'traser', 4, 3);
insert into consumoservico (cod, consumoservico, reservacod, servicocod) values (5, 'aluguel de carro', 5, 5);
insert into consumoservico (cod, consumoservico, reservacod, servicocod) values (6, 'boasvindas', 6, 1);
insert into consumoservico (cod, consumoservico, reservacod, servicocod) values (7, 'lavanderia', 7, 9);
insert into consumoservico (cod, consumoservico, reservacod, servicocod) values (8, 'sapateria', 8, 10);
insert into consumoservico (cod, consumoservico, reservacod, servicocod) values (9, 'produtos higiene pessoal', 9, 8);
insert into consumoservico (cod, consumoservico, reservacod, servicocod) values (10, 'salao eventos', 10, 4);
insert into consumoservico (cod, consumoservico, reservacod, servicocod) values (11, 'trabalho remoto', 11, 2);
insert into consumoservico (cod, consumoservico, reservacod, servicocod) values (12, 'acadenia', 12, 6);

select * from consumoservico;