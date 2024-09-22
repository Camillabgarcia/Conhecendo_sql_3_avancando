--Elaborando consultas para os gestores do Serenato Café e Bistrô.

--Utilizando o INNER JOIN.
-- Identificando o nome de cada cliente que realizou os pedidos juntando duas tabelas:

SELECT c.nome, p.id, p.data_hora
FROM clientes c
INNER JOIN pedidos p
on c.id = p.id_cliente;

--RIGHT JOIN.
--Identificando quais produtos foram vendidos ou não no mês de outubro:


SELECT pr.nome, x.id_produto, x.id_pedido
from
	(
     SELECT ip.id_pedido, ip.id_produto 
     from pedidos p
     JOIN itens_pedidos ip
     on p.id = ip.id_pedido
     WHERE strftime('%m', p.data_hora) = '10' ) x
RIGHT JOIN produtos pr
on pr.id = x.id_produto;

--LEFT JOIN.
--Identificando quais clientes não compraram em outubro, onde isso ajudará os gestores a saber quem são os mais frequentes ou não:

SELECT c.nome, x.id
from clientes c
LEFT JOIN 
(
	SELECT p.id, p.id_cliente
	from pedidos p
	WHERE strftime('%m', p.data_hora) = '10')x
on c.id = x.id_cliente
WHERE x.id_cliente ISNULL;

--FULL JOIN.
--Unindo todos os dados das tabelas:
SELECT c.nome, p.id
from clientes c
full JOIN pedidos p
ON c.id = p.id;
