# Exercicio 01

## 1. Criação das Tabelas

- `CREATE TABLE public.editora ( codigo_editora integer, Primary Key (codigo_editora), nome char varying );`

- `CREATE TABLE public.assunto ( codigo_assunto integer, Primary Key (codigo_assunto), sigla char varying, descricao char varying );`

- `CREATE TABLE public.livro ( codigo_livro integer, Primary Key (codigo_livro), titulo char varying, codigo_editora int, codigo_assunto int, CONSTRAINT FK_EditoraLivro FOREIGN KEY (codigo_editora) references public.editora(codigo_editora), CONSTRAINT FK_AssuntoLivro FOREIGN KEY (codigo_assunto) references public.assunto(codigo_assunto) );`

## 2. Inserção dos Dados

- `INSERT INTO public.editora (codigo_editora, nome) VALUES (1, 'Companhia das Letras'), (2, 'Editora Rocco'), (3, 'Editora Arqueiro'),(4, 'Editora Intrínseca');`

- `INSERT INTO public.assunto (codigo_assunto, sigla, descricao) VALUES (1, 'apz', 'Apocalipse Zumbi'), (2, 'bio','Biografia'), (3, 'rom', 'Romance'),(4, 'hor', 'Horror'); INSERT INTO public.livro (codigo_livro, titulo, codigo_editora, codigo_assunto) VALUES (1, 'World War Z', 1, 1), (2, 'WarmBodies', 2, 1), (3, 'Becoming', 1, 2), (4, 'The Diary Of a Young Girl', 2, 2), (5, 'I Am Malala',3,2), (6, 'The Autobiography Of Martin Luther King, Jr.',4,2), (7, 'Pride and Prejudice', 1, 3), (8, 'The Fault in Our Stars', 4, 3), (9, 'Dracula: Roman', 1,4) (10, 'Frankenstein', 3,4);`

## 3. Relatórios

- `select count(livro._) as "Quantidade de Livros", editora.nome as "Nome da Editora" from livro, editora where livro.codigo_editora = editora.codigo_editora group by livro.codigo_editora, editora.nome order by count(livro._) DESC;`

- `select count(livro._) as "Quantidade de Livros", assunto.descricao as "Assunto" from livro, assunto where livro.codigo_assunto = assunto.codigo_assunto group by livro.codigo_assunto, assunto.descricao order by count(livro._) ASC;`
