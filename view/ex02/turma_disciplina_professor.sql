CREATE VIEW turma_disciplina_professor as (
    SELECT
        disciplina.nome as disciplina,
        turma.nome as turma,
        professor.nome as professor 
    FROM 
        disciplina,
        turma,
        professor
    WHERE
        disciplina.disciplina_id = turma.disciplina_disciplina_id
        AND
        turma.professor_id = professor.professor_id
)