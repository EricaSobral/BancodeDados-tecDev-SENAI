 -- DQL
 SELECT * FROM Autores;
 SELECT * FROM Genero;
 SELECT * FROM Livros;

-- Selecionar todos os livros e seus respectivos autores;
SELECT * FROM Livros
INNER JOIN Autores ON Livros.id_autores = Autores.id_autor;

-- Selecionar todos os livros e seus respectivos gêneros;
SELECT * FROM Livros 
INNER JOIN Genero ON Livros.id_genero = Genero.id_genero;

-- Selecionar todos os livros e seus respectivos autores e gêneros;
SELECT * FROM Livros 
INNER JOIN Genero ON Livros.id_genero = Genero.id_genero
INNER JOIN Autores ON Livros.id_autores = Autores.id_autor;
