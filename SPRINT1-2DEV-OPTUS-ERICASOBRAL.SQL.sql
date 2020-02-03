-- CRIANDO O BANCO
CREATE DATABASE OPTUS;

USE OPTUS;

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
-- ALTERANDO TABELA
ALTER TABLE Usuario
ADD Nome varchar(300);

ALTER TABLE Albuns
DROP COLUMN QtdMinutos;

ALTER TABLE Albuns
ADD QtdMinutos Int;


-- INSERINDO DADOS NAS TABELAS

INSERT INTO Tipo_Usuario( titulo)
VALUES ('Administrador'), ('Artista'), ('Produtor'), ('Sonoplasta'), ('Comunicação');

INSERT INTO Artistas (Nome)
VALUES ('Iza'), ('AnaVitoria'), ('Henrique & Juliano'), ('Madonna'), ('Duda Beat');

INSERT INTO Estilos (Nome)
VALUES ('Sertanejo'), ('POP'), ('R&B contemporâneo'), ('ROCK'), ('Folk contemporâneo'); 

INSERT INTO Usuario (id_tipoUsuario, Nome)
VALUES (1, 'Maria José'), (2, 'Marilia Mendonça'), (3, 'Felipe D'), (4, 'Xuliana'), (5, 'Vivian Veloso');

INSERT INTO Albuns (Nome, Data_lanc, Visualizacao, QtdMinutos, id_artista,id_estilos)
VALUES ('Dona de Mim', '2018-06-01', 100100, 32,1,3),
	   ('AnaVotoria', '2016-08-15', 30000, 35, 2,5),
	   ('Sofrencia', '2020-01-01', 10, 12, 3,1),
	   ('Erotica', '1992-09-10', 100000,25,4,2),
	   ('Bixinho', '2018-09-30',500000,22,5,2);



-- ALTERANDO NOME DE UM ARTISTA
UPDATE Artistas
SET Nome =' Marilia Mendonça'
WHERE id_artista = 3;

-- ALTERANDO UM TIPO DE USUÁRI
UPDATE Tipo_Usuario
SET titulo = 'Empresario'
WHERE id_tipoUsuario = 5;
-- ALDERANDO QAUNTIDADE DE VISUALIZAÇOES DE UM ALBUM
UPDATE Albuns
SET Visualizacao = 500000
WHERE id_albuns = 3;

-- APAGAR UM ALBÚM
DELETE FROM Albuns
WHERE id_albuns = 5;


SELECT * FROM Tipo_Usuario;
SELECT * FROM Artistas;
SELECT * FROM Estilos;
SELECT * FROM Usuario;
SELECT * FROM Albuns;

-- SELECIONAR OS ALBUNS DO MESMO ARTISTA
SELECT Nome FROM Albuns
WHERE id_artista = 1;



--Operações <> =
SELECT * FROM Artistas WHERE id_artista > 3;

-- Operações OR OU
SELECT Nome, QtdMinutos FROM Albuns


/* COMENTARIO EM BLOCO*/

-- FILTRO DE TEXTO
SELECT id_artista, Nome FROM Artistas
WHERE Nome  LIKE 'Madonna%'; -- a "%" a palavra deve estar no inicio do texto

-- Ordenação
SELECT Album, Nome, Visualizacao FROM Albuns
ORDER BY Visualizacao DESC;

-- COUNT 
