USE FELIPE_AZEVEDO;

-- CRIA TABELA CONTATOS
CREATE TABLE Aula10_Contatos (
	id_contato INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    sobrenome VARCHAR(150),
    email VARCHAR(150)
);

-- DROP TABLE Aula10_Contatos;

-- INSERE DADOS NA TABELA CONTATOS
INSERT INTO Aula10_Contatos (nome, sobrenome, email) VALUES
	("Pedro", "Oliveira", "pedrool@gmail.com"),
    ("Claudia", "Francisca", "claufran@gmail.com"),
    ("Juan", "DeLas", "jdelas@hotmail.com"),
    ("José", "Silva", "josesilva@gmail.com");
    
-- SELECT * FROM Aula10_Contatos;

-- CRIA TABELA GRUPOS
CREATE TABLE Aula10_Grupos_Contatos (
	id_grupo INT PRIMARY KEY AUTO_INCREMENT,
    nome_grupo VARCHAR(150) NOT NULL
);

-- DROP TABLE Aula10_Grupos_Contatos;

-- SELECT * FROM Aula10_Grupos_Contatos;

-- INSERE DADOS NA TABELA GRUPOS
INSERT INTO Aula10_Grupos_Contatos (nome_grupo) VALUES
	("Família"),
    ("Amigos"),
    ("Trabalho"),
    ("Academia");

-- SELECT * FROM Aula10_Grupos_Contatos;

-- CRIA TABELA TELEFONES
CREATE TABLE Aula10_Telefones (
	id_telefone INT PRIMARY KEY AUTO_INCREMENT,
    numero VARCHAR(11)
    );

-- DROP TABLE Aula10_Telefones;

-- INSERE DADOS NA TABELA TELEFONES
INSERT INTO Aula10_Telefones (numero) VALUES
	("1188554477"),
    ("1155663322"),
    ("1144778899"),
    ("1199887744");
    
-- SELECT * FROM Aula10_Telefones;    


-- TABELA AUXILIAR (ID GRUPO - ID TELEFONE)
-- O CONCEITO NÃO FOI EXPLICADO ANTES DO EXERCÍCIO PRÁTICO
CREATE TABLE Aula10_Relacao_Grupo_Telefone (
	id_telefone INT NOT NULL,
    id_grupo INT NOT NULL,
	CONSTRAINT fk_telefone_grupo
    FOREIGN KEY (id_telefone) REFERENCES Aula10_Telefones(id_telefone),
    CONSTRAINT fk_grupo_telefone
    FOREIGN KEY (id_grupo) REFERENCES Aula10_Grupos_Contatos(id_grupo)
);

-- INSERE DADOS NA TABELA TELEFONES
INSERT INTO Aula10_Relacao_Grupo_Telefone (id_telefone, id_grupo) VALUES
	(1,1),
    (1,2),
    (1,3),
    (2,1),
    (2,2),
    (3,3),
    (4,2),
    (4,3);

-- SELECT * FROM Aula10_Relacao_Grupo_Telefone;

-- DROP TABLE Aula10_Relacao_Grupo_Telefone;

SELECT nome
FROM Aula10_Contatos;

SELECT nome, sobrenome, email
FROM Aula10_Contatos
WHERE nome = "Pedro";