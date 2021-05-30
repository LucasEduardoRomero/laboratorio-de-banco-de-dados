SELECT nome
FROM editora
WHERE codigo_editora = ANY (SELECT codigo_editora FROM livro)