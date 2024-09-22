--Validando as chaves estrangeiras no SQLITE:
PRAGMA foreign_keys = ON

--Atualizando dados

--Alterando o valor:
SELECT * FROM produtos
WHERE id = 31;

UPDATE produtos SET preco = 13.0
WHERE id = 31;

--Alterando a descrição do produto:
SELECT * from produtos
WHERE nome like 'croissant%';

UPDATE produtos SET descricao = 'Croissant recheado com amêndoas.'
WHERE id = 28;

--Excluindo dados
--Um dos colaboradores foi desligado da empresa, com isso será necessário atualizar a tabela, removendo suas informações:
DELETE from colaboradores
WHERE id = 3;

--Excluindo o cadastro de um cliente:
DELETE from clientes
WHERE id = 27;

--Iniciando transações (única unidade de comando - confirma ou reverte todos)
BEGIN TRANSACTION;

SELECT * from clientes;

SELECT * from pedidos;

UPDATE pedidos SET status = 'Concluído';

DELETE from clientes;

--Revertendo todo os comando feitos anteriormente:
ROLLBACK;

--Confirmando realmente as alterações:
COMMIT;
