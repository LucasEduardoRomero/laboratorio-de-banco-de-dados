create VIEW alunos_professores_disciplina AS (
    SELECT nome || '.aluno' AS Nome,
        aluno_id || '.aluno' AS id
        FROM aluno
      UNION ALL
    SELECT nome || '.professor' AS nome,
        professor_id || '.professor' AS id
        FROM professor
      UNION ALL
    SELECT nome || '.disciplina' AS nome,
        disciplina_id || '.disciplina' AS Nome
        FROM disciplina
)