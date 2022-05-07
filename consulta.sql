SELECT MATRICULA.id, ALUNO.nome as 'Aluno', PROFESSOR.nome as 'Professor', CURSO.nome as 'Curso'
FROM MATRICULA
    INNER JOIN ALUNO
        ON MATRICULA.aluno_id = ALUNO.id
    INNER JOIN PROFESSOR
        ON MATRICULA.professor_id = PROFESSOR.id
	INNER JOIN CURSO
        ON MATRICULA.curso_id = CURSO.id;
