CREATE TABLE pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_os INT NOT NULL,
    tipo VARCHAR(30) NOT NULL, -- Ex: Cartão, Dinheiro, Pix
    valor DECIMAL(10,2) NOT NULL,
    data_pagamento DATE,
    FOREIGN KEY (id_os) REFERENCES ordem_servico(id_os)
);
