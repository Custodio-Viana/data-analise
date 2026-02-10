-- Modelo Relacional de um E-commmerce
DROP DATABASE IF EXISTS ecommerce_db;
CREATE DATABASE ecommerce_db;
USE ecommerce_db;

-- =============================================================================
-- 1. Tabelas de Clientes (Diferenciando PF e PJ)
-- =============================================================================
CREATE TABLE cliente (
    id_cliente 		INT PRIMARY KEY AUTO_INCREMENT,
    nome 			VARCHAR(100) NOT NULL,
    email 			VARCHAR(100) UNIQUE NOT NULL,
    telefone 		VARCHAR(20),
    data_cadastro 	DATE NOT NULL,
    status 			ENUM('ativo', 'inativo') NOT NULL DEFAULT 'ativo'
);

CREATE TABLE cliente_pf (
    id_cliente 		INT PRIMARY KEY,
    nome 			VARCHAR(100) NOT NULL,
    cpf				CHAR(11) UNIQUE NOT NULL,

    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE cliente_pj (
    id_cliente 		INT PRIMARY KEY,
    razao_social	VARCHAR(100) NOT NULL,
    cnpj			CHAR(14) UNIQUE NOT NULL,

FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- =============================================================================
-- 2. Endereço
-- =============================================================================
CREATE TABLE endereco (
    id_endereco		INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente 		INT NOT NULL,
    logradouro		VARCHAR(100) NOT NULL,
    numero			VARCHAR(10),
    cidade			VARCHAR(50) NOT NULL,
    uf				VARCHAR(2) NOT NULL,
    cep				CHAR(8) NOT NULL,

    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- =============================================================================
-- 3. Produto e Categoria
-- =============================================================================
CREATE TABLE produto (
    id_produto		INT PRIMARY KEY AUTO_INCREMENT,
    nome			VARCHAR(100) NOT NULL,
    preco			DECIMAL(10,2) NOT NULL,
    data_cadastro 	DATE NOT NULL
);

CREATE TABLE categoria (
    id_categoria	INT AUTO_INCREMENT PRIMARY KEY,
    nome			VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE produto_categoria (
    id_produto		INT,
    id_categoria	INT,

    FOREIGN KEY (id_produto)    REFERENCES produto(id_produto),
    FOREIGN KEY (id_categoria)  REFERENCES categoria(id_categoria)
);

-- =============================================================================
-- 4. Estoque
-- =============================================================================
CREATE TABLE estoque (
    id_produto      INT PRIMARY KEY,
    quantidade      INT NOT NULL DEFAULT 0,

    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

-- =============================================================================
-- 5. Pedido + Item Pedido
-- =============================================================================
CREATE TABLE pedido (
    id_pedido       INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente      INT NOT NULL,
    id_endereco     INT NOT NULL, 
    data_pedido     DATE NOT NULL,
    valor_total     DECIMAL(10,2) NOT NULL,
    status          VARCHAR(20) DEFAULT 'pendente',

    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_endereco) REFERENCES endereco(id_endereco)
);

CREATE TABLE item_pedido (
    id_item         INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido       INT NOT NULL,
    id_produto      INT NOT NULL,
    quantidade      INT NOT NULL,
    preco_unidade   DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

-- =============================================================================
-- 6. Pagamento
-- =============================================================================

CREATE TABLE forma_pagamento (
    id_forma        INT AUTO_INCREMENT PRIMARY KEY,
    tipo            ENUM('Pix', 'Cartao Credito', 'Cartao Debito', 'Boleto', 'Carteira Digital') NOT NULL
);

CREATE TABLE pagamento (
    id_pagamento    INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido       INT NOT NULL,
    id_forma        INT NOT NULL,
    valor_total     DECIMAL(10,2) NOT NULL,
    data_pagamento  DATE NOT NULL,
    status          VARCHAR(20) DEFAULT 'pendente',

    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY (id_forma)  REFERENCES forma_pagamento(id_forma)
);

-- =============================================================================
-- 7. Transportadora + Entrega
-- =============================================================================
CREATE TABLE Transportadora (
    id_transportadora   INT AUTO_INCREMENT PRIMARY KEY,
    nome                VARCHAR(100) NOT NULL
);

CREATE TABLE entrega (
    id_entrega         INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido           INT UNIQUE NOT NULL,
    id_transportadora   INT NULL,
    status              VARCHAR(30) DEFAULT 'preparando',
    codigo_rastreio     VARCHAR(50) NULL,
    data_envio          DATE NULL,
    data_entrega        DATE NULL,

    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY (id_transportadora)  REFERENCES Transportadora(id_transportadora)
);
