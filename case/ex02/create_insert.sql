CREATE TABLE TIPOCARTEIRA (
	tipocarteira_id serial NOT NULL,
    UNIQUE(tipocarteira_id),
    PRIMARY KEY(tipocarteira_id),		
	
    nome varchar,
    sigla varchar
);

CREATE TABLE ALUNO (
	aluno_id serial NOT NULL,
    UNIQUE(aluno_id),
    PRIMARY KEY(aluno_id),		
	
    nome varchar
);

CREATE TABLE ALUNOCARTEIRA (
	alunocarteira_id serial NOT NULL,
    UNIQUE(alunocarteira_id),
    PRIMARY KEY(alunocarteira_id),		
	
    ALUNO_aluno_id INT,
        CONSTRAINT fk_aluno_alunocarteira
            FOREIGN KEY(ALUNO_aluno_id)
                REFERENCES ALUNO(aluno_id),

    TIPOCARTEIRA_tipocarteira_id INT,
        CONSTRAINT fk_alunocarteira_tipocarteira
            FOREIGN KEY(TIPOCARTEIRA_tipocarteira_id)
                REFERENCES TIPOCARTEIRA(tipocarteira_id)
);
 
INSERT INTO ALUNO(nome) VALUES
    ('Lucas'),
    ('Marta'),
    ('Edson'),
    ('Monique'),
    ('Priscila'),
    ('Cecília')
;

INSERT INTO tipocarteira(nome, sigla) VALUES
	('Moto', 'A'),
	('Carro', 'B'),
	('Caminhão', 'C'),
	('Ônibus', 'D'),
	('Eixo', 'E')
;

INSERT INTO alunocarteira(aluno_aluno_id, tipocarteira_tipocarteira_id) VALUES
	(1, 1),
	(1, 2),
	(2, 2),
	(3, 1),
	(3, 2),
	(3, 3),
	(3, 4),
	(3, 5),
	(4, 4),
	(5, 2),
	(6, 4),
	(6, 5)
;