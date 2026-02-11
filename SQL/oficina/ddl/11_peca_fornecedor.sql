CREATE TABLE peca_fornecedor (
    id_peca INT,
    id_fornecedor INT,
    PRIMARY KEY (id_peca, id_fornecedor),
    FOREIGN KEY (id_peca) REFERENCES peca(id_peca),
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor)
);
