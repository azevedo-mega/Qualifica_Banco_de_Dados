-- DEMONSTRAÇÃO DEVMIDIA

USE FELIPE_AZEVEDO;

CREATE TABLE Aula11_Aluno (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    data_nascimento DATE,
    ativo BOOLEAN DEFAULT TRUE
);

INSERT INTO Aula11_Aluno (nome, sobrenome, email, data_nascimento) VALUES
	("Zé", "das Couves", "ze@gmail.com", "2020-10-03"),
    ("Zé", "das Neves", "zeneves@gmail.com", "2019-11-20"),
    ("Maria", "dos Pães", "maria@gmail.com", "2018-03-01"),
    ("Horário", "Amigo", "horario@gmail.com", "2018-03-01");

-- SELECT * FROM Aula11_Aluno;

CREATE TABLE Aula11_Curso (
	id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(200) NOT NULL,
    descricao TEXT,
    carga_horaria INT,
    preco DECIMAL (10, 2)    
    );

INSERT INTO Aula11_Curso (titulo, descricao, carga_horaria, preco) VALUES
	("Introdução ao SQL", "Curso Básico de SQL", 40, 299.90),
    ("Desenvolvimento Web em Python", "Usando Flask para criar Backend", 80, 599.90),
    ("Banco de Dados Avançado", "Curso Avançado de SQL e Banco de Dados", 60, 450.00);

SELECT * FROM Aula11_Curso;

UPDATE Aula11_Aluno
SET sobrenome = "das Neves"
WHERE id = 4;

UPDATE Aula11_Aluno
SET
	nome = "José",
	email = "ze_neves@gmail.com"
WHERE id = 4;

BEGIN;

UPDATE Aula11_Curso
SET descricao = "Desenvolvimento Web em Python e Django"
WHERE id = 2;

SELECT * FROM Aula11_Curso;

-- ROLLBACK;

COMMIT;

DELETE FROM Aula11_Aluno
WHERE id = 2;

SELECT * FROM Aula11_Aluno;

TRUNCATE TABLE Aula11_Aluno;
