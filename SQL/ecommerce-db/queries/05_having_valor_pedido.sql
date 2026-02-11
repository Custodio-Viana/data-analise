-- 5. HAVING
SELECT id_pedido, SUM(valor) AS total_pago
FROM pagamento
GROUP BY id_pedido
HAVING SUM(valor) > 200;
