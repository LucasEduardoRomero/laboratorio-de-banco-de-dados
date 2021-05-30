CREATE VIEW turma_professor_qtd_aluno AS (
		SELECT
			grupo_turma.qtd_aluno,
			grupo_turma.turma,
			professor.nome as professor
		FROM
			(
				SELECT 
					count(aluno.nome) as qtd_aluno,
					turma.nome as turma,
					turma.professor_professor_id as professor_id
				FROM
					aluno,
					turma,
					matricula
				WHERE
					matricula.aluno_aluno_id = aluno.aluno_id
						AND
					matricula.turma_turma_id = turma.turma_id
				GROUP BY 
					turma.nome,
					turma.professor_professor_id
			) AS grupo_turma,
			professor,
			turma
		WHERE
			professor.professor_id = turma.professor_professor_id
		)
