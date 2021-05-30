SELECT codigo_produto, nome
FROM produto
WHERE codigo_produto = ANY (SELECT codigo_produto FROM venda)