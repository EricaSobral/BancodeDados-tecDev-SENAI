CREATE DATABASE EstiloMusical;

USE EstiloMusical;

CREATE TABLE Estilo_Musical(
id_estilomusical INT PRIMARY KEY IDENTITY,
Nome varchar(200) NOT NULL,
);

CREATE TABLE Artistas(
id_artista INT PRIMARY KEY IDENTITY,
id_estilomusical INT FOREIGN KEY REFERENCES Estilo_Musical (id_estilomusical),
Nome varchar(200)
)

-- COMANDO DE INSERIR DADOS 
INSERT INTO Estilo_Musical (Nome)
VALUES ('Sertanejo');

INSERT INTO Artistas (Nome, id_estilomusical)
values ('Vivi love', 1), ('Vivi Lavine',1);

-- COMANDO DE ATUALIZAÇÃO DE DADOS DA TABELA 
UPDATE Artistas
SET id_estilomusical = 1;

-- DELETAR APAGAR DADOS DA TABELA
DELETE FROM Artistas
WHERE id_artista = 1;


SELECT * FROM Artistas;
SELECT * FROM Estilo_Musical

