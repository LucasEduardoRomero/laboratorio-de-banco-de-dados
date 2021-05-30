CREATE TABLE CIDADE (
	cidade_id serial NOT NULL,
    UNIQUE(cidade_id),
	cidade_nome varchar,
    PRIMARY KEY(cidade_id)		
);

CREATE TABLE FABRICANTE (
    fabricante_id serial NOT NULL,
    UNIQUE(fabricante_id),
    fabricante_nome varchar,
    CIDADE_cidade_id INT,
    CONSTRAINT fk_FABRICANTE_CIDADE
        FOREIGN KEY(CIDADE_cidade_id)
            REFERENCES CIDADE(cidade_id)
);

CREATE TABLE BEBIDA (
    bebida_id serial NOT NULL,
    UNIQUE(bebida_id),
    descricao varchar,
    FABRICANTE_fabricante_id INT,
    CONSTRAINT fk_BEBIDA_FABRICANTE
        FOREIGN KEY(FABRICANTE_fabricante_id)
            REFERENCES FABRICANTE(fabricante_id)
);

CREATE TABLE PRODUTO (
    produto_id serial NOT NULL,
    UNIQUE(produto_id),
    descricao varchar,
    FABRICANTE_fabricante_id INT,
    CONSTRAINT fk_FABRICANTE
        FOREIGN KEY(FABRICANTE_fabricante_id)
            REFERENCES FABRICANTE(fabricante_id)
);

INSERT INTO cidade(cidade_nome) VALUES 
('Cuiabá'),
('Várzea Grande'),
('Coxipó'),
('Rio Branco');

INSERT INTO FABRICANTE VALUES 
(1, 'Bebidas do Xomâno', 1),
(2, 'Bebidas Geladinhas',2),
(3, 'Fabrica da Cevada', 3),
(4, 'PIIIIIIIIIILSEIN', 4),
(5, 'Cervejaria Carbono', 5);

INSERT INTO BEBIDA VALUES 
(1, 'Copeiro do Xomâno', 1),
(2, 'Abre Latinha', 2),
(3, 'Copo Verde', 3),
(4, 'Copo PIIIIIIIIIILSEIN', 4),
(5, 'Copo Carbono', 5);

