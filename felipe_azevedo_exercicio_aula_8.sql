-- TABELAS PADARIA --

CREATE TABLE Aula08_Produto (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    preco_un DECIMAL (10, 2)
);
-- OS PRODUTOS NÃO SÃO OS MESMOS DA PÁGINA 12 DO PPT, MAS AS QUERIES FUNCIONARAM --
INSERT INTO Aula08_Produto (nome, preco_un) VALUES
	("Pão de Forna", 5.50),
    ("Donut", 7.60),
    ("Baguete", 10.20);

CREATE TABLE Aula08_Fornecedor (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    telefone VARCHAR(11)
);

INSERT INTO Aula08_Fornecedor (nome, telefone) VALUES
	("Qualypan", 11955485323),
    ("Pullman", 11985422343),
    ("Visconti", 11975429843);

CREATE TABLE Aula08_Vendas (
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT NOT NULL,
    data_venda DATE,
    quantidade INT NOT NULL,
    CONSTRAINT fk_venda_produto
    FOREIGN KEY (id_produto) REFERENCES Aula08_Produto(id)
);

-- AS DATAS NÃO SÃO AS MESMAS DA PÁGINA 12 DO PPT, MAS AS QUERIES FUNCIONARAM --
INSERT INTO Aula08_Vendas (id_produto, data_venda, quantidade) VALUES
	(1, "2025-10-01", 2),
    (2, "2025-10-01", 3),
    (3, "2025-10-08", 9),
    (2, "2025-10-04", 2),
    (3, "2025-10-04", 8),
    (3, "2025-10-08", 7);
    
SELECT *
FROM Aula08_Produto;

SELECT id_produto, SUM(quantidade)
FROM Aula08_Vendas
GROUP BY id_produto;

SELECT id_produto, SUM(quantidade)
FROM Aula08_Vendas
WHERE id_produto = 2;

SELECT id_produto, SUM(quantidade)
FROM Aula08_Vendas
WHERE id_produto = 3;

SELECT *
FROM Aula08_Vendas
WHERE data_venda = "2025-10-08";

-- TABELAS COORDENAÇÃO PEDAGÓGICA --

CREATE TABLE Aula08_Aluno (
	id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50),
    curso VARCHAR(100) NOT NULL
);

INSERT INTO Aula08_Aluno (nome, sobrenome, curso) VALUES
	("Ricardo", "Almeida", "Eletrônica"),
    ("Renato", "Ferreira", "Bando de Dados"),
    ("Fernando", "Santos", "Eletrônica"),
    ("Alberto", "Silva", "Design"),
    ("Ricardo", "Albuquerque", "Eletrônica"),
    ("Felipe", "Azevedo", "Banco de Dados"),
    ("Humberto", "Martinez", "Design");

CREATE TABLE Aula08_Professor (
	id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome_professor VARCHAR(50) NOT NULL,
    curso VARCHAR(100) NOT NULL
);

INSERT INTO Aula08_Professor (nome_professor, curso) VALUES
	("Gilberto Silveira", "Eletrônica"),
    ("Roberto Oliveira", "Bando de Dados"),
    ("Saulo Nascimento", "Jornalismo"),
    ("Hugo Batoni", "Design");

CREATE TABLE Aula08_Comentário (
	id_comentario INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT NOT NULL,
    id_professor INT NOT NULL,
	comentario TEXT,
    notadoprofessor DECIMAL(3, 1),
    CONSTRAINT fk_id_aluno
    FOREIGN KEY (id_aluno) REFERENCES Aula08_Aluno(id_aluno),
    CONSTRAINT fk_id_professor
    FOREIGN KEY (id_professor) REFERENCES Aula08_Professor(id_professor)
);

INSERT INTO Aula08_Comentário (id_aluno, id_professor, comentario, notadoprofessor) VALUES
	(1, 1, "Não entendeu nada na última aula...", 2.45),
    (2, 2, "Precisa estudar mais SQL", 3.50),
    (3, 1, "Parabéns!", 8.50),
    (4, 4, "Foi bem, mas pode melhorar", 7.25),
    (5, 1, "Esse não em salvação!", 0.25),
    (6, 2, "Muito bem! Você vai longe!", 9.25),
    (7, 4, "Alguns efeitos precisam de um acabamento melhor", 7.00);
    
    SELECT *
    FROM Aula08_Aluno;
    
    SELECT *
    FROM Aula08_Professor;
    
    SELECT comentario, notadoprofessor, Aula08_Professor.nome_professor
    FROM Aula08_Comentário
    JOIN Aula08_Professor
    ON Aula08_Comentário.id_professor = Aula08_Professor.id_professor;
    
    SELECT comentario
    FROM Aula08_Comentário
    WHERE notadoprofessor < 6.00;
    
    SELECT comentario
    FROM Aula08_Comentário
    WHERE notadoprofessor > 6.00;
	    
-- TABELAS LOCADORA DE CARROS --

CREATE TABLE Aula08_Cliente (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
	sobrenome VARCHAR(50),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

INSERT INTO Aula08_Cliente (nome, sobrenome, telefone, email) VALUES
	("Gilberto", "Silveira", "11987456325", "gsilveira@bol.com.br"),
    ("Roberto", "Oliveira", "1198663255", "robertoli@gmail.com"),
    ("Saulo", "Nascimento", "11955443326", "nascimento_saulo@hotmail.com.br"),
	("Hugo", "Batoni", "11955443326", "hugobatoni1982@gmail.com");
    
CREATE TABLE Aula08_Automovel (
	id_automovel INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(50),
	modelo VARCHAR(50),
    tipo VARCHAR(20)
);

INSERT INTO Aula08_Automovel (marca, modelo, tipo) VALUES
	("Volkswagen", "Fusca", "Sedan"),
    ("Fiat", "Uno", "Hatch"),
    ("Fiat", "Palio", "Sedan"),
    ("Volkswagen", "Polo", "Sedan"),
    ("Ford", "Bronco", "SUV"),
    ("Ford", "EcoSport", "SUV"),
    ("Ford", "Fiesta", "Compacto");

CREATE TABLE Aula08_DataLocacao (
	id_datalocacao INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_automovel INT NOT NULL,
    datainiciolocacao DATE,
	datafinallocacao DATE,
    CONSTRAINT fk_id_cliente
    FOREIGN KEY (id_cliente) REFERENCES Aula08_Cliente(id_cliente),
    CONSTRAINT fk_id_automovel
    FOREIGN KEY (id_automovel) REFERENCES Aula08_Automovel(id_automovel)
);

INSERT INTO Aula08_DataLocacao (id_cliente, id_automovel, datainiciolocacao, datafinallocacao) VALUES
	(1, 2, "2025-02-01", "2025-02-15"),
    (2, 3, "2025-02-02", "2025-02-15"),
    (3, 1, "2025-02-01", "2025-02-10"),
    (4, 4, "2025-02-05", "2025-02-15");

SELECT *
FROM Aula08_Cliente;

SELECT *
FROM Aula08_Automovel;

SELECT nome, sobrenome, telefone, email, Aula08_Automovel.marca, Aula08_Automovel.modelo, Aula08_DataLocacao.datainiciolocacao, Aula08_DataLocacao.datafinallocacao
FROM Aula08_Cliente
LEFT JOIN Aula08_DataLocacao ON Aula08_Cliente.id_cliente = Aula08_DataLocacao.id_cliente
LEFT JOIN Aula08_Automovel ON Aula08_DataLocacao.id_automovel = Aula08_Automovel.id_automovel;

SELECT datainiciolocacao, Aula08_Automovel.marca, Aula08_Automovel.modelo
FROM Aula08_DataLocacao
JOIN Aula08_Automovel ON Aula08_DataLocacao.id_automovel = Aula08_Automovel.id_automovel
WHERE datainiciolocacao = "2025-02-01";