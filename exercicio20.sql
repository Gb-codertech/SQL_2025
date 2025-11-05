CREATE DATABASE Escola;

USE Escola;

CREATE TABLE Estudantes (
	aluno_id INT PRIMARY KEY,
    nome VARCHAR(30),
    idade INT,
    data_nascimento DATE
);

INSERT INTO Estudantes
VALUES
(28, 'Gabriel', 18, '2007-01-05'),
(92, 'Ana', 17, '2008-05-01'),
(12, 'Paula', 16, '2009-12-30'),
(2, 'Paulo', 15, '2010-11-22'),
(48, 'Giovana', 14, '2011-02-17');

SELECT * FROM Estudantes;

INSERT INTO Estudantes
VALUES
(7, 'Joana', 14, '2013-04-08');