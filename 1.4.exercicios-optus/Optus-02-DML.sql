-- DML
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