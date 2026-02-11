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
