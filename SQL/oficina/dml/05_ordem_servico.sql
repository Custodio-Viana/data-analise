INSERT INTO ordem_servico (id_cliente, id_veiculo, data_os, status, valor_total) VALUES
(1, 1, '2024-03-01', 'Concluída', 200.00),   -- Trocou oleo (150) + Filtro (50)
(1, 1, '2024-03-10', 'Em andamento', 0.00),    -- Apenas aberta
(2, 2, '2024-03-12', 'Concluída', 500.00),     -- Revisão completa
(3, 3, '2024-03-15', 'Concluída', 420.00);     -- Alinhamento (120) + Pastilhas (100 MO + 200 Peça)
