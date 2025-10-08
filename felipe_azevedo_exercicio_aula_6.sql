CREATE DATABASE FELIPE_AZEVEDO;

USE FELIPE_AZEVEDO;

CREATE TABLE Clientes (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(250) NOT NULL,
    cpf VARCHAR(11)
);

INSERT INTO Clientes (nome, cpf) VALUES
	("José", "5548896632"),
	("Luiz", "21488896578"),
	("Fernando", "77744563288"
    );
    
    SELECT *
    FROM Clientes;
    
    SELECT nome
    FROM Clientes
    LIMIT 3;
    
    SELECT nome
    FROM Clientes
    ORDER BY nome;
    
	SELECT *
    FROM Clientes
    ORDER BY nome;
    
CREATE TABLE Produtos (
	id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(255) NOT NULL,
    marca VARCHAR(255)
    );

INSERT INTO Produtos (nome_produto, marca) VALUES
	("Caneta", "Faber Castel"),
    ("Borracha", "Tilibra"),
    ("Tinta Guache", "Acrilex"),
    ("Apontador", "Compactor"),
    ("Papel Sulfite", "Chamequinho");

SELECT *
FROM Produtos;

DELETE FROM Produtos
WHERE id_produto BETWEEN 6 AND 13;

SELECT nome_produto, marca
FROM Produtos
WHERE marca = "Acrilex";

ALTER TABLE Produtos
ADD COLUMN data_venda DATE;

INSERT INTO Produtos (data_venda) VALUES
	("2025-02-10"),
    ("2025-02-11"),
    ("2025-02-11"),
    ("2025-02-12"),
    ("2025-02-14");

ALTER TABLE Produtos RENAME COLUMN marca TO fornecedor;

DELETE FROM Produtos
WHERE id_produto = NULL;

CREATE TABLE Fornecedores (
	id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    nome_filial VARCHAR(255) NOT NULL,
    região VARCHAR(255)
    );
    
INSERT INTO Fornecedores (nome_filial, região) VALUES
	("Jabaquara", "Sul"),
    ("Belezinho", "Leste"),
    ("Interlagos", "Sul"),
    ("Santana", "Norte"),
    ("Penha", "Leste");

CREATE TABLE Vendas (
	id_venda INT PRIMARY KEY AUTO_INCREMENT,
    data_venda DATE
    );
    
INSERT INTO Vendas (data_venda) VALUES
	("2025-02-10"),
    ("2025-02-11"),
    ("2025-02-11"),
    ("2025-02-12"),
    ("2025-02-14");
    
SELECT *
FROM Vendas;
    
SELECT *
FROM Fornecedores;
    
DELETE FROM Fornecedores
WHERE id_fornecedor = NULL;

DELETE FROM Vendas
WHERE data_venda = NULL;
