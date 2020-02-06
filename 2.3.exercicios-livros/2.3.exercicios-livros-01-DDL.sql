CREATE DATABASE RoteiroLivros;

USE RoteiroLivros;

-- DDL
CREATE TABLE Autores (
 id_autor INT PRIMARY KEY IDENTITY,
 Nome varchar(100)
 );

 CREATE TABLE Genero(
 id_genero INT PRIMARY KEY IDENTITY,
 Nome varchar(100) NOT NULL
 );

 CREATE TABLE Livros (
 id_livro INT PRIMARY KEY IDENTITY,
 Titulo varchar (200) NOT NULL,
 id_genero INT FOREIGN KEY REFERENCES Genero (id_genero),
 id_autores INT FOREIGN KEY REFERENCES Autores (id_autor)
 );

