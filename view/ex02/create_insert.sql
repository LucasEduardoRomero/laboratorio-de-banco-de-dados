CREATE TABLE aluno (
	aluno_id serial NOT NULL,
    UNIQUE(aluno_id),
    PRIMARY KEY(aluno_id),		
	nome varchar
);

CREATE TABLE disciplina (
    disciplina_id serial NOT NULL,
    UNIQUE(disciplina_id),
    PRIMARY KEY(disciplina_id),		
	nome varchar    
);

CREATE TABLE professor (
    professor_id serial NOT NULL,
    UNIQUE(professor_id),
    PRIMARY KEY(professor_id),		
	nome varchar    
);

CREATE TABLE turma (
    turma_id serial NOT NULL,
    UNIQUE(turma_id),
    PRIMARY KEY(turma_id),		
	nome varchar,
    disciplina_disciplina_id INT,  
    CONSTRAINT fk_turma_disciplina
        FOREIGN KEY(disciplina_disciplina_id)
            REFERENCES disciplina(disciplina_id),
    
    professor_professor_id INT,  
    CONSTRAINT fk_turma_professor
        FOREIGN KEY(professor_professor_id)
            REFERENCES professor(professor_id) 

);

CREATE TABLE matricula (
    matricula_id serial NOT NULL,
    UNIQUE(matricula_id),
    PRIMARY KEY(matricula_id),	
    aluno_aluno_id INT,
    CONSTRAINT fk_maticula_aluno
    FOREIGN KEY(aluno_aluno_id)
        REFERENCES aluno(aluno_id),

    turma_turma_id INT,
    CONSTRAINT fk_turma_disciplina
        FOREIGN KEY(turma_turma_id)
            REFERENCES turma(turma_id) 
);

INSERT INTO ALUNO(nome) VALUES
    ('Felipe'),
    ('Priscila'),
    ('Monique'),
    ('Joca'),
    ('Cecília'),
    ('Maria'),
    ('Lucas'),
    ('Bruno')
;

INSERT INTO PROFESSOR(nome) VALUES
    ('ALAN'),
    ('NIELSEN'),
    ('VILMA'),
    ('EUNICE'),
    ('ZEZIN'),
    ('ABACO'),
    ('CAPITU'),
    ('BENTINHO')
;

INSERT INTO DISCIPLINA(nome) VALUES
    ('ALGORITMOS 1'),
    ('ALGORITMOS 2'),
    ('INTELIGENCIA ARTIFICIAL'),
    ('LÓGICA DIGITAL E CIRCUITOS'),
    ('ESTRUTURA DE DADOS'),
    ('BANCO DE DADOS'),
    ('PROCESSAMENTO DE IMAGENS'),
    ('COMPILADORES')
;

INSERT INTO TURMA(nome, disciplina_disciplina_id, professor_id)
VALUES
    ('ALGORITMOS 1 - 2019/1', 1, ),
    ('ALGORITMOS 2 - 2019/1', 2),
    ('ALGORITMOS 1 - 2020/1', 1),
    ('ALGORITMOS 2 - 2020/1', 2),
    ('INTELIGENCIA ARTIFICIAL - 2019/1', 3),
    ('INTELIGENCIA ARTIFICIAL - 2019/2', 3),
    ('LÓGICA DIGITAL E CIRCUITOS - 2019/1', 4),
    ('LÓGICA DIGITAL E CIRCUITOS - 2019/2', 4),
    ('COMPILADORES - 2021/1', 8),
    ('COMPILADORES - 2021/2', 8)
;

INSERT INTO matricula(aluno_aluno_id, turma_turma_id)
	VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(9, 3),
	(10, 6),
	(8, 8)
;