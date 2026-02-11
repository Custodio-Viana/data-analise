-- Inserção de dados para testes
-- Script DML

USE oficina_mecanica;

-- 1. Clientes
INSERT INTO cliente (nome, email) VALUES
('Carlos Silva', 'carlos@email.com'),
('Empresa LogTrans', 'contato@logtrans.com'),
('Maria Oliveira', 'maria@email.com');

INSERT INTO cliente_pf (id_cliente, cpf) VALUES 
(1, '12345678901'),
(3, '98765432100');

INSERT INTO cliente_pj (id_cliente, cnpj) VALUES 
(2, '98765432000199');

-- 2. Veículos
INSERT INTO veiculo (id_cliente, modelo, placa) VALUES
(1, 'Toyota Corolla', 'ABC1234'),
(2, 'Caminhão Volvo', 'XYZ9876'),
(3, 'Honda Civic', 'HDA5678');

-- 3. Serviços (Catálogo)
INSERT INTO servico (descricao, preco) VALUES
('Troca de óleo', 150.00),
('Alinhamento e Balanceamento', 120.00),
('Revisão completa', 500.00),
('Substituição de pastilhas', 100.00);

-- 4. Peças (Catálogo)
INSERT INTO peca (nome, preco) VALUES
('Filtro de óleo', 50.00),
('Pastilha de freio', 200.00),
('Amortecedor Dianteiro', 450.00);

-- 5. Fornecedores
INSERT INTO fornecedor (nome) VALUES
('Auto Peças Brasil'),
('Freios Premium'),
('Distribuidora Global');

-- 6. Peça x Fornecedor
INSERT INTO peca_fornecedor (id_peca, id_fornecedor) VALUES
(1, 1), -- Filtro de óleo - Auto Peças Brasil
(2, 2), -- Pastilha de freio - Freios Premium
(3, 3); -- Amortecedor - Distribuidora Global

-- 7. Estoque
INSERT INTO estoque (id_peca, quantidade) VALUES
(1, 30),
(2, 15),
(3, 10);

-- 8. Ordens de Serviço
INSERT INTO ordem_servico (id_cliente, id_veiculo, data_os, status, valor_total) VALUES
(1, 1, '2024-03-01', 'Concluída', 200.00),   -- Trocou oleo (150) + Filtro (50)
(1, 1, '2024-03-10', 'Em andamento', 0.00),    -- Apenas aberta
(2, 2, '2024-03-12', 'Concluída', 500.00),     -- Revisão completa
(3, 3, '2024-03-15', 'Concluída', 420.00);     -- Alinhamento (120) + Pastilhas (100 MO + 200 Peça)

-- 9. OS x Serviço
INSERT INTO os_servico (id_os, id_servico, quantidade) VALUES
(1, 1, 1), -- OS 1: Troca de óleo
(2, 2, 1), -- OS 2: Alinhamento (Em andamento)
(3, 3, 1), -- OS 3: Revisão completa
(4, 2, 1), -- OS 4: Alinhamento
(4, 4, 1); -- OS 4: Substituição de pastilhas

-- 10. Pagamentos
INSERT INTO pagamento (id_os, tipo, valor, data_pagamento) VALUES
(1, 'Cartão Crédito', 200.00, '2024-03-01'),
(3, 'Boleto Bancário', 500.00, '2024-03-13'),
(4, 'Pix', 420.00, '2024-03-15');
