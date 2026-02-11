USE ecommerce;

-- 1. Quantos pedidos cada cliente fez?
SELECT c.nome, COUNT(p.id_pedido) AS total_pedidos
FROM cliente c
JOIN pedido p ON c.id_cliente = p.id_cliente
GROUP BY c.nome;

-- 2. Filtro com WHERE
SELECT *
FROM pedido
WHERE status = 'Concluído';

-- 3. Atributo derivado (valor total pago por pedido)
SELECT id_pedido, SUM(valor) AS total_pago
FROM pagamento
GROUP BY id_pedido;

-- 4. ORDER BY
SELECT nome, preco
FROM produto
ORDER BY preco DESC;

-- 5. HAVING
SELECT id_pedido, SUM(valor) AS total_pago
FROM pagamento
GROUP BY id_pedido
HAVING SUM(valor) > 200;

-- 6. Junção complexa (Produtos, Fornecedores e Estoque)
SELECT p.nome AS produto, f.nome AS fornecedor, e.quantidade
FROM produto p
JOIN produto_fornecedor pf ON p.id_produto = pf.id_produto
JOIN fornecedor f ON pf.id_fornecedor = f.id_fornecedor
JOIN estoque e ON p.id_produto = e.id_produto;
