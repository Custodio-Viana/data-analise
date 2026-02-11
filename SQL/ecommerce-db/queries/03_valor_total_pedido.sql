-- 3. Atributo derivado (valor total pago por pedido)
SELECT id_pedido, SUM(valor) AS total_pago
FROM pagamento
GROUP BY id_pedido;
