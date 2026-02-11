-- Criação do Banco de Dados para o Cenário de Oficina Mecânica 
-- Script DDL

CREATE DATABASE IF NOT EXISTS oficina_mecanica;
USE oficina_mecanica;

-- Tabela Cliente (Generalização)
CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Tabela Cliente PF (Especialização)
CREATE TABLE cliente_pf (
    id_cliente INT PRIMARY KEY,
    cpf CHAR(11) UNIQUE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- Tabela Cliente PJ (Especialização)
CREATE TABLE cliente_pj (
    id_cliente INT PRIMARY KEY,
    cnpj CHAR(14) UNIQUE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- Tabela Veículo
CREATE TABLE veiculo (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    modelo VARCHAR(50),
    placa CHAR(7) UNIQUE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- Tabela Ordem de Serviço
CREATE TABLE ordem_servico (
    id_os INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_veiculo INT NOT NULL,
    data_os DATE NOT NULL,
    status ENUM('Em análise', 'Em andamento', 'Concluída', 'Cancelada') DEFAULT 'Em análise',
    total_servicos DECIMAL(10,2) DEFAULT 0,
    total_pecas DECIMAL(10,2) DEFAULT 0,
    valor_total DECIMAL(10,2) DEFAULT 0, -- Calculado ou atualizado via trigger/procedure
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo)
);

-- Tabela Serviço (Catálogo)
CREATE TABLE servico (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

-- Tabela OS_Serviço (Relacionamento N:N entre OS e Serviço)
CREATE TABLE os_servico (
    id_os INT,
    id_servico INT,
    quantidade INT DEFAULT 1,
    PRIMARY KEY (id_os, id_servico),
    FOREIGN KEY (id_os) REFERENCES ordem_servico(id_os),
    FOREIGN KEY (id_servico) REFERENCES servico(id_servico)
);

-- Tabela Peça (Catálogo)
CREATE TABLE peca (
    id_peca INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

-- Tabela Fornecedor
CREATE TABLE fornecedor (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Tabela Peça_Fornecedor (Relacionamento N:N)
CREATE TABLE peca_fornecedor (
    id_peca INT,
    id_fornecedor INT,
    PRIMARY KEY (id_peca, id_fornecedor),
    FOREIGN KEY (id_peca) REFERENCES peca(id_peca),
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor)
);

-- Tabela Estoque
CREATE TABLE estoque (
    id_peca INT PRIMARY KEY,
    quantidade INT DEFAULT 0,
    FOREIGN KEY (id_peca) REFERENCES peca(id_peca)
);

-- Tabela Pagamento
CREATE TABLE pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_os INT NOT NULL,
    tipo VARCHAR(30) NOT NULL, -- Ex: Cartão, Dinheiro, Pix
    valor DECIMAL(10,2) NOT NULL,
    data_pagamento DATE,
    FOREIGN KEY (id_os) REFERENCES ordem_servico(id_os)
);
