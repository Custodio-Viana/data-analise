-- 1. Quantas ordens de serviço cada cliente possui?
SELECT 
    c.nome, 
    COUNT(o.id_os) AS total_os
FROM cliente c
LEFT JOIN ordem_servico o ON c.id_cliente = o.id_cliente
GROUP BY c.nome
ORDER BY total_os DESC;
