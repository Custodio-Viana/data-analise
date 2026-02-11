-- 3. Valor total pago por ordem de serviço (com base na tabela de pagamentos)?
SELECT 
    id_os, 
    SUM(valor) AS total_pago
FROM pagamento
GROUP BY id_os;
