/* Objetivo: Escreva um único script SQL que execute as 5 etapas a seguir e, ao final, envie o arquivo .sql para seu GitHub.

Etapas do Script:

CRIAR: Crie um banco de dados meu_dia_a_dia_SEU_NOME (em SEU_NOME substitua pelo seu nome) e, dentro dele, uma tabela tarefas com as colunas:
id (INT, Chave Primária, Auto-incremento)
descricao (VARCHAR(200), Obrigatório)
status (VARCHAR(20))

INSERIR: Insira 3 tarefas na tabela, todas com o status inicial 'Pendente'.

ATUALIZAR: Altere o status de uma tarefa para 'Em Andamento' e de outra para 'Concluído'.

ALTERAR: Adicione uma nova coluna prioridade (INT) à tabela. Em seguida, use UPDATE para definir a prioridade 1 para a tarefa que ainda está pendente.

VERIFICAR: Inclua um SELECT * FROM tarefas; no final do script para exibir o resultado. */

CREATE TABLE meu_dia_a_dia_FELIPE_AZEVEDO (
	id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(200) NOT NULL,
    status VARCHAR(20)
);

INSERT INTO meu_dia_a_dia_FELIPE_AZEVEDO (descricao, status) VALUES
	("escovar os dentes", "pendente"),
    ("fazer exercícios", "pendente"),
    ("cozinhar", "pendente");
    
SELECT * FROM meu_dia_a_dia_FELIPE_AZEVEDO;

UPDATE meu_dia_a_dia_FELIPE_AZEVEDO
SET status = "en andamento"
WHERE id = 1;

UPDATE meu_dia_a_dia_FELIPE_AZEVEDO
SET status = "concluído"
WHERE id = 2;

ALTER TABLE  meu_dia_a_dia_FELIPE_AZEVEDO
ADD prioridade INT;

UPDATE meu_dia_a_dia_FELIPE_AZEVEDO
SET prioridade = "1"
WHERE id = 1;