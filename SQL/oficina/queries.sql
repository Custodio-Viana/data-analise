-- Queries SQL para Responder Perguntas de Negócio
-- Oficina Mecânica

USE oficina_mecanica;

-- 1. Quantas ordens de serviço cada cliente possui?
SELECT 
    c.nome, 
    COUNT(o.id_os) AS total_os
FROM cliente c
LEFT JOIN ordem_servico o ON c.id_cliente = o.id_cliente
GROUP BY c.nome
ORDER BY total_os DESC;

-- 2. Ordens de serviço em andamento?
SELECT *
FROM ordem_servico
WHERE status = 'Em andamento';

-- 3. Valor total pago por ordem de serviço (com base na tabela de pagamentos)?
SELECT 
    id_os, 
    SUM(valor) AS total_pago
FROM pagamento
GROUP BY id_os;

-- 4. Serviços realizados em cada OS?
SELECT 
    o.id_os, 
    c.nome AS cliente,
    v.modelo AS veiculo,
    s.descricao AS servico, 
    s.preco
FROM ordem_servico o
JOIN cliente c ON o.id_cliente = c.id_cliente
JOIN veiculo v ON o.id_veiculo = v.id_veiculo
JOIN os_servico os ON o.id_os = os.id_os
JOIN servico s ON os.id_servico = s.id_servico
ORDER BY o.id_os;

-- 5. Ordens de serviço com valor total acima de 300?
SELECT 
    id_os, 
    SUM(valor) AS total_pago
FROM pagamento
GROUP BY id_os
HAVING SUM(valor) > 300;

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
