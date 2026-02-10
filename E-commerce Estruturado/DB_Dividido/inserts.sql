USE ecommerce;

INSERT INTO cliente (nome, email) VALUES
('Ana Silva', 'ana@email.com'),
('Empresa XPTO', 'contato@xpto.com');

INSERT INTO cliente_pf (id_cliente, cpf) VALUES (1, '12345678901');
INSERT INTO cliente_pj (id_cliente, cnpj) VALUES (2, '98765432000199');

INSERT INTO pedido (id_cliente, data_pedido, status) VALUES
(1, '2024-01-10', 'Concluído'),
(1, '2024-01-15', 'Em andamento'),
(2, '2024-01-20', 'Concluído');

INSERT INTO pagamento (id_pedido, tipo, valor) VALUES
(1, 'Cartão', 200.00),
(1, 'Pix', 50.00),
(2, 'Boleto', 300.00);

INSERT INTO entrega (id_pedido, status, codigo_rastreio) VALUES
(1, 'Entregue', 'BR123'),
(2, 'Em transporte', 'BR456');

INSERT INTO produto (nome, preco) VALUES
('Notebook', 3500),
('Mouse', 150);

INSERT INTO fornecedor (nome) VALUES
('Fornecedor Tech'),
('Fornecedor Acessórios');

INSERT INTO produto_fornecedor (id_produto, id_fornecedor) VALUES
(1,1),
(2,2);

INSERT INTO estoque (id_produto, quantidade) VALUES
(1, 10),
(2, 50);
