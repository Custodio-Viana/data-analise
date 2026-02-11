-- 6. Relação de peças, fornecedores e estoque?
SELECT 
    p.nome AS peca, 
    f.nome AS fornecedor, 
    e.quantidade AS estoque_disponivel,
    p.preco AS preco_unitario
FROM peca p
JOIN peca_fornecedor pf ON p.id_peca = pf.id_peca
JOIN fornecedor f ON pf.id_fornecedor = f.id_fornecedor
JOIN estoque e ON p.id_peca = e.id_peca;
