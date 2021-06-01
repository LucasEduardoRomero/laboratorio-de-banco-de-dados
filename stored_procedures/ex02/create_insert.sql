CREATE TABLE nota (
    id SERIAL PRIMARY KEY,
    aluno VARCHAR (50),
    nota FLOAT
);


INSERT INTO nota(aluno, nota) VALUES
	('Lucas Romero', 6),
	('Lucas Romero', 7),
	('Lucas Romero', 9),
	('Lucas Romero', 5),
	
	('Natan', 3),
	('Natan', 1),
	('Natan', 10),
	('Natan', 10),
	
	('Julia', 9),
	('Julia', 9),
	('Julia', 9),
	('Julia', 10),
	
	('Marine', 5),
	('Marine', 4),
	('Marine', 2),
	('Marine', 0)
;