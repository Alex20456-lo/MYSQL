create database BD0312;
use BD0312;

create table cliente(
codcliente int auto_increment,
nomecliente varchar(45),
bairrocliente varchar(45),
profcliente varchar(45),
emailcliente varchar(45),
datancliente date,
cpfcliente int,
constraint pkcodcliente primary key (codcliente));

insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente, datancliente, cpfcliente) values (1, 'wallace', 'cardoso de melo', 'educador', 'wallaceeduca@gmail.com', '2005-10-11', 111222333-44);

alter table cliente modify column cpfcliente varchar(45);

update cliente set bairrocliente = 'Santa Cruz' where codcliente=1;

insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente, datancliente, cpfcliente) values (2, 'alex', 'cerâmica', 'balconista', 'alexcorrea@gmail.com', '2005-06-14', 111222333-44);
insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente, datancliente, cpfcliente) values (3, 'luthor', 'cardoso de melo', 'vendedor', 'lutherdsa@gmail.com', '1997-04-23', 111222333-44);
insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente, datancliente, cpfcliente) values (4, 'arthur', 'Santa Cruz', 'gerente', 'arthurfelis@gmail.com', '2000-11-02', 111222333-44);
insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente, datancliente, cpfcliente) values (5, 'lexandre', 'cerâmica', 'analista', 'lexcadre@gmail.com', '1998-12-11', 111222333-44);
insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente, datancliente, cpfcliente) values (6, 'davi', 'cardoso de melo', 'vendedor', 'venddavyss@gmail.com', '2001-05-25', 111222333-44);
insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente, datancliente, cpfcliente) values (7, 'lucia', 'centro', 'professor', 'luciamorais@gmail.com', '2002-01-14', 111222333-44);
insert into cliente (codcliente, nomecliente, bairrocliente, profcliente, emailcliente, datancliente, cpfcliente) values (8, 'carla', 'cerâmica', 'adiministrador', 'wcarlifisica@gmail.com', '1994-09-17', 111222333-44);

update cliente set profcliente = 'comerciante' where codcliente = 2;
update cliente set profcliente = 'comerciante' where codcliente = 5;
update cliente set profcliente = 'comerciante' where codcliente = 8;

delete from cliente where codcliente=1;

select * from cliente;

SELECT nomecliente, profcliente, datancliente FROM cliente ORDER BY datancliente ASC;
SELECT * FROM cliente ORDER BY nomecliente DESC;
SELECT nomecliente, emailcliente FROM cliente WHERE bairrocliente = 'Porto' AND datancliente < '2012-01-01';
SELECT codcliente, nomecliente, profcliente FROM cliente WHERE profcliente = 'Médico' OR emailcliente LIKE '%@yahoo.com';
SELECT * FROM cliente WHERE bairrocliente <> 'Cerâmica';
SELECT nomecliente, bairrocliente FROM cliente WHERE datancliente BETWEEN '2010-01-01' AND '2015-12-31' AND (bairroCliente = 'Centro' OR bairroCliente = 'Cerâmica');
SELECT nomeCliente, cpfCliente FROM cliente WHERE datancliente NOT BETWEEN '2005-01-01' AND '2010-12-31';
SELECT * FROM cliente WHERE nomeCliente NOT LIKE 'M%' AND bairroCliente = 'Porto';
SELECT * FROM cliente WHERE bairroCliente NOT IN ('Cerâmica', 'Centro') ORDER BY profCliente ASC;
SELECT nomeCliente, profCliente FROM cliente WHERE profCliente <> 'Professor' AND datancliente > '2011-12-31'  AND bairroCliente = 'Cerâmica';
SELECT * FROM cliente WHERE profCliente <> 'Analista' OR datancliente < '2005-01-01' ORDER BY codCliente DESC;

CREATE TABLE funcionario (
    codFuncionario INT,
    nomeFuncionario VARCHAR(100),
    cargoFuncionario VARCHAR(100),
    salario DECIMAL(10,2),
    dataAdmissao DATE,
    bairroFuncionario VARCHAR(100),
    constraint pkcodFuncionario primary key (codFuncionario)
);
ALTER TABLE funcionario
DROP COLUMN cargoFuncionario;
DESCRIBE funcionario;

