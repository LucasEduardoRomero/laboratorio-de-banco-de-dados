(SELECT produto.nome, sum(quantidade) as quantia_vendida
FROM produto, venda
WHERE venda.codigo_produto = produto.codigo_produto
GROUP BY produto.codigo_produto, nome
HAVING count(codigo_venda) >= 10)
UNION
(SELECT produto.nome, sum(quantidade) as quantia_vendida
FROM produto, venda
WHERE venda.codigo_produto = produto.codigo_produto
GROUP BY produto.codigo_produto, nome
HAVING count(codigo_venda) >= 1)