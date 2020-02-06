CREATE DATABASE LocadoraVeiculos;

USE LocadoraVeiculos;

--DDL
CREATE TABLE Empresa(
id_empresa INT PRIMARY KEY IDENTITY,
Nome varchar(300),
Endereco varchar(300)
);

CREATE TABLE Cliente(
id_cliente INT PRIMARY KEY IDENTITY, 
Nome varchar(300),
CPF int,
);

CREATE TABLE Marca(
id_marca INT PRIMARY KEY IDENTITY,
NomeMarca varchar(500)
);

CREATE TABLE Modelo(
id_modelo INT PRIMARY KEY IDENTITY,
Nome varchar(500),
fk_marca INT FOREIGN KEY REFERENCES Marca (id_marca)
);

CREATE TABLE Veiculo(
id_veiculo INT PRIMARY KEY IDENTITY,
Placa varchar (500),
Cor varchar (500),
id_modelo INT FOREIGN KEY REFERENCES Modelo (id_modelo),
id_empresa INT FOREIGN KEY REFERENCES Empresa (id_empresa)
); 

CREATE TABLE Aluguel(
id_aluguel INT PRIMARY KEY IDENTITY,
Status varchar (500),
id_cliente INT FOREIGN KEY REFERENCES Cliente (id_cliente),
id_veiculos INT FOREIGN KEY REFERENCES Veiculo (id_veiculo)
);

