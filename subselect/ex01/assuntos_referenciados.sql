SELECT sigla, descricao
FROM assunto
WHERE codigo_assunto = ANY(SELECT codigo_assunto FROM livro)