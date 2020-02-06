-- CRIANDO O BANCO
CREATE DATABASE OPTUS;

USE OPTUS;

--DDL 
-- CRIANDO TABELAS BASEADAS NO MODELO LÓGICO
CREATE TABLE Tipo_Usuario(
id_tipoUsuario	INT PRIMARY KEY IDENTITY,
titulo varchar(300),
);

CREATE TABLE Artistas (
id_artista INT PRIMARY KEY IDENTITY,
Nome varchar(200)
);

CREATE TABLE Estilos (
id_estilo INT PRIMARY KEY IDENTITY,
Nome varchar(200)
);

CREATE TABLE Usuario(
id_usuario INT PRIMARY KEY IDENTITY,
id_tipoUsuario INT FOREIGN KEY REFERENCES Tipo_Usuario (id_tipoUsuario)
);

CREATE TABLE Albuns(
id_albuns INT PRIMARY KEY IDENTITY,
Nome varchar (300),
Data_lanc date, 
QtdMinutos time,
Visualizacao INT,
id_artista INT FOREIGN KEY REFERENCES Artistas (id_artista),
id_estilos INT FOREIGN KEY REFERENCES Estilos (id_estilo)
);
