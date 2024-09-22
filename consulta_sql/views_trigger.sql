--Elaborando consultas para os gestores do Serenato Café e Bistrô.

--Realizando a consulta sobre cálculo do valor total dos pedidos sem precisar modificar a estrutura das tabelas:

SELECT p.id, c.nome, SUM(ip.preco_unitario) as valor_total_pedido
FROM clientes c
JOIN pedidos p on c.id = p.id_cliente
join itens_pedidos ip on p.id = ip.id_pedido
GROUP by  p.id, c.nome;


--Criando Views.
--Como não existe esse campo criado fisícamente na tabela, será criado um forma de deixar essa consulta armazenada no banco de dados:

CREATE VIEW view_valor_total_pedido AS
SELECT p.id, c.nome, p.data_hora, SUM(ip.preco_unitario) as valor_total_pedido
FROM clientes c
JOIN pedidos p on c.id = p.id_cliente
join itens_pedidos ip on p.id = ip.id_pedido
GROUP by  p.id, c.nome;

SELECT * from view_valor_total_pedido;

--Utilizando Views
--Explorando essa view e realizando diversas consultas e filtros que vão trazer resultados importantes sobre o faturamento do Serenatto Café & Bistrô.

SELECT nome from view_valor_total_pedido;

SELECT * from view_valor_total_pedido
WHERE valor_total_pedido = 10;

SELECT * from view_valor_total_pedido
WHERE valor_total_pedido > 10;

SELECT * from view_valor_total_pedido
WHERE valor_total_pedido > 10 and valor_total_pedido < 14;

SELECT * from view_valor_total_pedido
WHERE strftime ('%m', data_hora) = '08';

--Criando TRIGGER
--Consulta que traz o faturamento diário:

CREATE TRIGGER CalculaFaturamentoDiario
after INSERT on itens_pedidos
for EACH ROW 
BEGIN
DELETE from FaturamentoDiario;
INSERT into FaturamentoDiario (dia, faturamentototal)
SELECT DATE(data_hora) as dia, sum(ip.preco_unitario) as faturamento_diario
FROM pedidos p
join itens_pedidos ip
on p.id = ip.id_pedido
GROUP by dia
ORDER by dia;
END;

--Executando TRIGGER:
--Sempre que um novo pedido for inserido, automaticamente esse valor vai aparecer na nossa tabela de FaturamentoDiario, o que será muito interessante para ajudar nossos gestores, porque 
--eles terão acesso a essa informação à mão.

INSERT INTO Pedidos(id ,id_cliente ,data_hora, status)
VALUES (451, 27, '2023-10-07 14:30:00', 'Em Andamento');

INSERT INTO itens_pedidos (id_pedido, id_produto, quantidade, preco_unitario)
VALUES (451, 14, 1, 6.0),
         (451, 13, 1, 7.0);

INSERT INTO pedidos (id, id_cliente, data_hora, status)
VALUES (452, 28, '2023-10-07 14:35:00', 'Em Andamento');

INSERT INTO itens_pedidos (id_pedido, id_produto, quantidade, preco_unitario)
VALUES (452, 10, 1, 5.0),
         (452, 31, 1, 12.50);

SELECT * from FaturamentoDiario;