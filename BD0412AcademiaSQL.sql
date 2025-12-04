create database BD0412AcademiaSQL;
use BD0412AcademiaSQL;

create table professor(
codprof int,
nomeprof varchar(45),
especialidade varchar(45),
constraint pkcodprof primary key (codprof));

create table curso(
codcurso int,
nomecurso varchar(45),
cargahoraria int,
codprof int,
constraint pkcodcurso primary key (codcurso),
constraint fkcodprof foreign key (codprof) references professor(codprof));

create table aluno(
matricula int,
nomealuno varchar(45),
datanascimento date,
emailaluno varchar(45),
constraint pkmatricula primary key (matricula));

show tables;

alter table professor add column telefone varchar(45);
alter table aluno drop column datanascimento;
describe professor;
describe curso;
describe aluno;

insert into professor (codprof, nomeprof, especialidade, telefone) values (1, 'wallace', 'teologia', '3200000000');
insert into professor (codprof, nomeprof, especialidade, telefone) values (2, 'alex', 'tecnico de informatica', '3200000000');
insert into professor (codprof, nomeprof, especialidade, telefone) values (3, 'Lucia', 'programador de games', '3200000000');
insert into professor (codprof, nomeprof, especialidade, telefone) values (4, 'alexandre', 'montagem de computadores', '3200000000');
insert into professor (codprof, nomeprof, especialidade, telefone) values (5, 'alyson', 'piloto de fuga', '3200000000');
select * from professor;

insert into curso (codcurso, nomecurso, cargahoraria, codprof) values (1, 'estudos biblicos', 320, 1);
insert into curso (codcurso, nomecurso, cargahoraria, codprof) values (2, 'tecnico de informatica', 300, 2);
insert into curso (codcurso, nomecurso, cargahoraria, codprof) values (3, 'manobras e pilotagem especializada', 300, 5);
insert into curso (codcurso, nomecurso, cargahoraria, codprof) values (4, 'reparacao de computadores', 280, 4);
insert into curso (codcurso, nomecurso, cargahoraria, codprof) values (5, 'programacao basica de jogos', 240, 3);
insert into curso (codcurso, nomecurso, cargahoraria, codprof) values (6, 'programacao', 230, 2);
select * from curso;

insert into aluno (matricula, nomealuno, emailaluno) values (0001, 'Arthur', 'arthur28@gmail.com');
insert into aluno (matricula, nomealuno, emailaluno) values (0002, 'Luiza', 'Luiza28@gmail.com');
insert into aluno (matricula, nomealuno, emailaluno) values (0003, 'Maycon', 'Maycon28@gmail.com');
insert into aluno (matricula, nomealuno, emailaluno) values (0004, 'Luiz', 'Luiz28@gmail.com');
insert into aluno (matricula, nomealuno, emailaluno) values (0005, 'John', 'John28@gmail.com');
insert into aluno (matricula, nomealuno, emailaluno) values (0006, 'Carlos', 'Carlos28@gmail.com');
insert into aluno (matricula, nomealuno, emailaluno) values (0007, 'Vitoria', 'Vitoria28@gmail.com');
insert into aluno (matricula, nomealuno, emailaluno) values (0008, 'Lais', 'Lais28@gmail.com');
insert into aluno (matricula, nomealuno, emailaluno) values (0009, 'Eduardo', 'Eduardo28@gmail.com');
insert into aluno (matricula, nomealuno, emailaluno) values (0010, 'Mateus', 'Mateus28@gmail.com');
select * from aluno;

update curso set codprof = 3 where codcurso=6;

delete from professor where codprof=3;

delete from curso where codcurso=6;

update professor set especialidade = 'TI' where codprof=2;
update professor set especialidade = 'progamacao de jogos' where codprof=3;
update professor set especialidade = 'montagem de computadores' where codprof=4;
update professor set especialidade = 'piloto de fuga' where codprof=5;

select * from professor where especialidade in ('teologia', 'piloto de fuga');
select nomealuno, emailaluno from aluno where matricula between 1 and 5;
select * from curso where cargahoraria between 250 and 320;
select * from aluno order by matricula DESC;