CREATE TABLE PAIS (
	pais_id serial NOT NULL,
    UNIQUE(pais_id),
    PRIMARY KEY(pais_id),		
	
    nome varchar,
    sigla varchar
);

CREATE TABLE ESTADO (
	estado_id serial NOT NULL,
    UNIQUE(estado_id),
    PRIMARY KEY(estado_id),	
	
    nome varchar,
    sigla varchar,

    PAIS_pais_id INT,
    CONSTRAINT fk_estado_pais
        FOREIGN KEY(PAIS_pais_id)
            REFERENCES PAIS(pais_id)
);

CREATE TABLE cidade (
	cidade_id serial NOT NULL,
    UNIQUE(cidade_id),
    PRIMARY KEY(cidade_id),		
	
    nome varchar,

    ESTADO_estado_id INT,
    CONSTRAINT fk_cidade_estado
        FOREIGN KEY(estado_estado_id)
            REFERENCES estado(estado_id)
);

INSERT INTO PAIS(nome, sigla) VALUES
    ('Estados Unidos da América', 'EUA'),
    ('Canadá', 'CA'),
    ('Brasil', 'BR'),
    ('Bulgária', 'BG'),
    ('Irã', 'IRI'),
    ('Itália', 'ITA')
;

INSERT INTO ESTADO(nome, sigla, PAIS_pais_id) VALUES
    ('California', 'CA', 1),
    ('Alabama', 'AL', 1),
    ('Alaska', 'AK', 1),
	
	('Alberta', 'AL', 2),
    ('Manitoba', 'MA', 2),
    ('Ontário', 'ON', 2),
	
	('Mato Grosso', 'MT', 3),
    ('São Paulo', 'SP', 3),
    ('Bahia', 'BA', 3),	

	('Sófia', 'SO', 4),
    ('Burgas', 'BU', 4),
    ('Pleven', 'Pleven', 4),	

	('Trentino', 'TE', 6),
    ('Pavia', 'PA', 6),
    ('Como', 'CO', 6)
;
    
INSERT INTO cidade(nome, ESTADO_estado_id) VALUES
    ('Cuiabá', 7),
    ('São Paulo', 8),
    ('Salvador', 9),
	
	('Los Angeles', 1),
    ('Montgomery', 2),

	('Toronto', 6),
    ('Morden', 5)
;
    