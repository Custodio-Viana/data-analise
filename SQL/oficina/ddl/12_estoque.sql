CREATE TABLE estoque (
    id_peca INT PRIMARY KEY,
    quantidade INT DEFAULT 0,
    FOREIGN KEY (id_peca) REFERENCES peca(id_peca)
);
