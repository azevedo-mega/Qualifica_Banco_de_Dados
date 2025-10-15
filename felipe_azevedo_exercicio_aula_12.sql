/*
Pensando em um negócio de uma padaria, quais são os comandos para:

🍪 Inserir pelo menos 4 registros na tabela de produtos

🛠️ Atualizar pelo menos 1 desses registros

🗑️ Excluir 1 desses registros

🔎 Fazer a consulta dessa tabela
*/

USE FELIPE_AZEVEDO;

CREATE TABLE Aula12_Padaria (
	id INT PRIMARY KEY AUTO_INCREMENT,
    produto VARCHAR(100) NOT NULL,
    preco DECIMAL (10, 2) NOT NULL,
    validade DATE NOT NULL,
    desconto_vencimento VARCHAR(10)
);

-- DROP TABLE Aula12_Padaria;

INSERT INTO Aula12_Padaria (produto, preco, validade, desconto_vencimento)
VALUES
	("Pão Francês", 1.50, "2025-10-16", "20%"),
    ("Bolo de Fubá", 6.50, "2025-10-16", "10%"),
    ("Presunto", 30.50, "2025-10-15", "5%"),
    ("Biscoito de Polvilho", 5.00, "2025-10-15", null),
    ("Refrigerante", 4.00, "2026-10-15", "30%");
    
-- SELECT * FROM Aula12_Padaria;

UPDATE Aula12_Padaria
SET desconto_vencimento = "20%"
WHERE id = 3;

DELETE FROM Aula12_Padaria
WHERE id = 4;

SELECT produto AS PRODUTO, preco AS PREÇO
FROM Aula12_Padaria
WHERE validade <> "2026-10-15"
ORDER BY desconto_vencimento DESC;

SELECT produto AS PRODUTO, preco AS PREÇO
FROM Aula12_Padaria
WHERE desconto_vencimento > "10%"
ORDER BY preco ASC;