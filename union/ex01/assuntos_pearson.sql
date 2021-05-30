(SELECT descricao, sigla
FROM assunto, livro
WHERE livro.codigo_assunto = assunto.codigo_assunto AND assunto.codigo_assunto IN (SELECT codigo_assunto FROM livro)
)
UNION
(SELECT descricao, sigla
FROM assunto, livro
WHERE livro.codigo_assunto = assunto.codigo_assunto AND assunto.codigo_assunto IN (SELECT codigo_assunto FROM livro, editora WHERE livro.codigo_editora = editora.codigo_editora AND editora.nome ILIKE 'Pearson'))