(SELECT nome
FROM editora, livro
WHERE editora.codigo_editora = livro.codigo_editora
GROUP BY nome
HAVING count(titulo) >= 2)
UNION
(SELECT nome
FROM editora, livro, assunto
WHERE editora.codigo_editora = livro.codigo_editora AND livro.codigo_assunto IN (SELECT livro.codigo_assunto FROM livro, assunto WHERE descricao ILIKE 'Ficção' )
GROUP BY nome)
