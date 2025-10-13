-- "Precisamos de uma lista com os 3 produtos mais caros da categoria 'Eletrônicos' que ainda possuam estoque(quantidade maior que zero). O relatório deve exibir apenas o nome e o preço do produto, com os títulos Produto e Valor, respectivamente."

USE FELIPE_AZEVEDO;

-- SHOW TABLES;

CREATE TABLE Desafio_Aula10 (
	id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(150) NOT NULL,
    categoria VARCHAR(150) NOT NULL,
    preco DECIMAL (10, 2) NOT NULL,
    estoque INT
);

INSERT INTO Desafio_Aula10 (nome_produto, categoria, preco, estoque)
VALUES
	("Smarthphone X", "Eletrônicos", 2500.00, 50),
    ("Fone de Ouvido Z", "Eletrônicos", 350.00, 0),
    ("Notebook Pro", "Eletrônicos", 7800.00, 25),
    ("Caneca Branca", "Cozinha", 25.00, 200),
    ("Smartwatch Y", "Eletrônicos", 1800.00, 40),
    ("Teclado Gamer", "Eletrônicos", 650.00, 80),
    ("Mouse sem Fio", "Eletrônicos", 150.00, 120);
    
    -- SELECT * FROM Desafio_Aula10;
    
    SELECT nome_produto AS PRODUTO, preco AS VALOR
    FROM Desafio_Aula10
    WHERE estoque > 0
    ORDER BY VALOR DESC LIMIT 3;
    
