-- ==========================================
-- PROJETO E-COMMERCE DATABASE
-- Script Consolidado (DDL + DML + Queries)
-- ==========================================

-- 1. CRIAÇÃO DO ESQUEMA (DDL)
CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

-- Cliente
CREATE TABLE IF NOT EXISTS cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS cliente_pf (
    id_cliente INT PRIMARY KEY,
    cpf CHAR(11) UNIQUE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE IF NOT EXISTS cliente_pj (
    id_cliente INT PRIMARY KEY,
    cnpj CHAR(14) UNIQUE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- Pedido
CREATE TABLE IF NOT EXISTS pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    data_pedido DATE NOT NULL,
    status VARCHAR(30),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- Pagamento
CREATE TABLE IF NOT EXISTS pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    tipo VARCHAR(30),
    valor DECIMAL(10,2),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
);

-- Entrega
CREATE TABLE IF NOT EXISTS entrega (
    id_entrega INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    status VARCHAR(30),
    codigo_rastreio VARCHAR(50),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
);

-- Produto
CREATE TABLE IF NOT EXISTS produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2)
);

-- Fornecedor
CREATE TABLE IF NOT EXISTS fornecedor (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)
);

-- Produto x Fornecedor (N:N)
CREATE TABLE IF NOT EXISTS produto_fornecedor (
    id_produto INT,
    id_fornecedor INT,
    PRIMARY KEY (id_produto, id_fornecedor),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto),
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor)
);

-- Estoque
CREATE TABLE IF NOT EXISTS estoque (
    id_produto INT PRIMARY KEY,
    quantidade INT,
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

-- Vendedor
CREATE TABLE IF NOT EXISTS vendedor (
    id_vendedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)
);

-- 2. PERSISTÊNCIA DE DADOS (DML)
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


-- 3. QUERIES SQL (Respondendo o Desafio)

-- 1. Quantos pedidos cada cliente fez?
-- Expected: Ana Silva (2), Empresa XPTO (1)
SELECT c.nome, COUNT(p.id_pedido) AS total_pedidos
FROM cliente c
JOIN pedido p ON c.id_cliente = p.id_cliente
GROUP BY c.nome;

-- 2. Filtro com WHERE
SELECT *
FROM pedido
WHERE status = 'Concluído';

-- 3. Atributo derivado (valor total pago por pedido)
SELECT id_pedido, SUM(valor) AS total_pago
FROM pagamento
GROUP BY id_pedido;

-- 4. ORDER BY
SELECT nome, preco
FROM produto
ORDER BY preco DESC;

-- 5. HAVING
SELECT id_pedido, SUM(valor) AS total_pago
FROM pagamento
GROUP BY id_pedido
HAVING SUM(valor) > 200;

-- 6. Junção complexa (Produtos, Fornecedores e Estoque)
SELECT p.nome AS produto, f.nome AS fornecedor, e.quantidade
FROM produto p
JOIN produto_fornecedor pf ON p.id_produto = pf.id_produto
JOIN fornecedor f ON pf.id_fornecedor = f.id_fornecedor
JOIN estoque e ON p.id_produto = e.id_produto;
