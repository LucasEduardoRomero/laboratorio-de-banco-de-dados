SELECT
	tab.aluno,
	STRING_AGG(tab.caso, ', ') AS carteiras
FROM
(
	SELECT
		aluno.nome as aluno,
		CASE
			WHEN alunocarteira.TIPOCARTEIRA_tipocarteira_id = 1 THEN 'MOTO'	
			WHEN alunocarteira.TIPOCARTEIRA_tipocarteira_id = 2 THEN 'CARRO'	
			WHEN alunocarteira.TIPOCARTEIRA_tipocarteira_id = 3 THEN 'CAMINHÃO'	
			WHEN alunocarteira.TIPOCARTEIRA_tipocarteira_id = 4 THEN 'ÔNIBUS'	
			WHEN alunocarteira.TIPOCARTEIRA_tipocarteira_id = 5 THEN 'EIXO'	
			ELSE 'IRREGULAR'
		END AS caso
	FROM
		aluno,
		alunocarteira,
		tipocarteira
	WHERE
		alunocarteira.ALUNO_aluno_id = aluno.aluno_id
			AND
		alunocarteira.TIPOCARTEIRA_tipocarteira_id = tipocarteira.tipocarteira_id
	ORDER BY aluno, caso
) AS tab
GROUP BY tab.aluno
;