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
