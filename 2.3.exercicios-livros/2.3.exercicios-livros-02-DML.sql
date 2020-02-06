-- DML

 -- POPULANDO AS TABELAS

 INSERT INTO Autores (Nome)
 VALUES( 'Jane Austen'), ('Machado de Assis'), ('Jorge Amado'), ('Clarice Lispector'), ('Lygia Fagundes Telles');

 INSERT INTO Genero (Nome)
 VALUES ('Romance'), ('Poesia'), ('Ficção'), ('Cronica'), ('Contos');

 INSERT INTO Livros (Titulo, id_autores, id_genero)
 VALUES ('Orgulho e preconceito', 1, 1), 
		('O Espelho', 2, 5), 
		('Gabriela', 3, 1), 
		('A Hora da Estrela', 4, 2), 
		('As mesninas', 5, 3)

 -- ALTERANDO O NOME DE UM GÊNERO
 UPDATE Genero
 SET Nome = 'Novela'	
 WHERE id_genero = 3;

 -- ALTERANDO O GÊNERO DE UM LIVRO
 UPDATE Livros
 SET id_genero = 1
 WHERE id_genero = 3;

 -- DELETANDO UM AUTOR 
  DELETE FROM Livros
  WHERE id_autores = 1;

  DELETE FROM Autores
  WHERE id_autor = 1;

  -- DELETANDO LIVRO DE MAIOR ID
  DELETE FROM Livros
  WHERE id_autores =5