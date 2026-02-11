-- 6. Junção complexa (Produtos, Fornecedores e Estoque)
SELECT p.nome AS produto, f.nome AS fornecedor, e.quantidade
FROM produto p
JOIN produto_fornecedor pf ON p.id_produto = pf.id_produto
JOIN fornecedor f ON pf.id_fornecedor = f.id_fornecedor
JOIN estoque e ON p.id_produto = e.id_produto;
