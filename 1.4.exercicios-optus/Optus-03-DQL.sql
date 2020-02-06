-- DQL

SELECT * FROM Tipo_Usuario;
SELECT * FROM Artistas;
SELECT * FROM Estilos;
--SELECT * FROM Usuario;
SELECT * FROM Albuns;

-- SELECIONAR OS ALBUNS DO MESMO ARTISTA
SELECT Nome FROM Albuns
WHERE id_artista = 1;

-- Com INNER JOIN
SELECT * FROM Artistas
INNER JOIN Albuns ON Artistas.id_artista = Albuns.id_artista
WHERE Albuns.id_artista = 5;

-- Selecionar albuns lançados na mesma data
SELECT * FROM Albuns 
INNER JOIN Artistas ON Albuns.id_artista = Artistas.id_artista
WHERE Data_lanc = '2018-09-30';

-- SELECIONAR ALBUNS E ARTISTAS E ORDENAR POR DATA DE LANÇAMENTO
SELECT Artistas.id_artista as NomeArtista, Albuns.Nome, Albuns.Data_lanc FROM Albuns
INNER JOIN Artistas ON Albuns.id_artista = Artistas.id_artista
ORDER BY Data_lanc DESC;


-- SELECIONAR OS ARTISTAS DO MESMO ESTILO 
SELECT * FROM Albuns
INNER JOIN Estilos ON Albuns.id_estilos = Estilos.id_estilo
INNER JOIN Artistas ON Albuns.id_artista = Artistas.id_artista
WHERE id_estilo = 2;
