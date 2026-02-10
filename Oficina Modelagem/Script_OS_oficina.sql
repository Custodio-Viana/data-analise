-- =========================
-- BANCO DE DADOS
-- =========================
DROP DATABASE IF EXISTS oficina_mecanica;
CREATE DATABASE oficina_mecanica;
USE oficina_mecanica;

-- =========================
-- CLIENTE
-- =========================
CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    endereco VARCHAR(150)
);

-- =========================
-- VEÍCULO
-- =========================
CREATE TABLE veiculo (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) NOT NULL UNIQUE,
    modelo VARCHAR(50),
    ano INT,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- =========================
-- EQUIPE
-- =========================
CREATE TABLE equipe (
    id_equipe INT AUTO_INCREMENT PRIMARY KEY,
    nome_equipe VARCHAR(50) NOT NULL
);

-- =========================
-- MECÂNICO
-- =========================
CREATE TABLE mecanico (
    id_mecanico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(150),
    especialidade VARCHAR(50),
    id_equipe INT NOT NULL,
    FOREIGN KEY (id_equipe) REFERENCES equipe(id_equipe)
);

-- =========================
-- TABELA DE MÃO DE OBRA
-- =========================
CREATE TABLE tabela_mao_obra (
    id_tabela_mao_obra INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100),
    valor_referencia DECIMAL(10,2) NOT NULL
);

-- =========================
-- SERVIÇO
-- =========================
CREATE TABLE servico (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    valor_mao_obra DECIMAL(10,2) NOT NULL,
    id_tabela_mao_obra INT NOT NULL,
    FOREIGN KEY (id_tabela_mao_obra) REFERENCES tabela_mao_obra(id_tabela_mao_obra)
);

-- =========================
-- PEÇA
-- =========================
CREATE TABLE peca (
    id_peca INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    valor_unitario DECIMAL(10,2) NOT NULL
);

-- =========================
-- ORDEM DE SERVIÇO
-- =========================
CREATE TABLE ordem_servico (
    id_os INT AUTO_INCREMENT PRIMARY KEY,
    data_emissao DATE NOT NULL,
    data_conclusao DATE,
    data_entrega DATE,
    status ENUM('ABERTA','AUTORIZADA','EM_EXECUCAO','CONCLUIDA') NOT NULL,
    valor_total DECIMAL(10,2),
    autorizado BOOLEAN DEFAULT FALSE,
    id_veiculo INT NOT NULL,
    id_equipe INT NOT NULL,
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo),
    FOREIGN KEY (id_equipe) REFERENCES equipe(id_equipe)
);

-- =========================
-- OS x SERVIÇO (N:N)
-- =========================
CREATE TABLE os_servico (
    id_os INT NOT NULL,
    id_servico INT NOT NULL,
    quantidade INT DEFAULT 1,
    valor_servico DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_os, id_servico),
    FOREIGN KEY (id_os) REFERENCES ordem_servico(id_os),
    FOREIGN KEY (id_servico) REFERENCES servico(id_servico)
);

-- =========================
-- OS x PEÇA (N:N)
-- =========================
CREATE TABLE os_peca (
    id_os INT NOT NULL,
    id_peca INT NOT NULL,
    quantidade INT DEFAULT 1,
    valor_peca DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_os, id_peca),
    FOREIGN KEY (id_os) REFERENCES ordem_servico(id_os),
    FOREIGN KEY (id_peca) REFERENCES peca(id_peca)
);
