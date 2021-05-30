(SELECT 
    cliente.*, maiores_vendas.valor_venda
FROM 
    cliente,
    (
        SELECT sum(produto.valor_produto * venda.quantidade) as valor_venda, venda.codigo_cliente
        FROM venda, produto
        WHERE venda.codigo_produto = produto.codigo_produto
        GROUP BY codigo_cliente
        ORDER BY valor_venda DESC
    ) maiores_vendas
WHERE 
    cliente.codigo_cliente = maiores_vendas.codigo_cliente
LIMIT 1)
UNION
(SELECT 
    cliente.*, maiores_vendas.valor_venda
FROM 
    cliente,
    (
        SELECT sum(produto.valor_produto * venda.quantidade) as valor_venda, venda.codigo_cliente
        FROM venda, produto
        WHERE venda.codigo_produto = produto.codigo_produto
        GROUP BY codigo_cliente
        ORDER BY valor_venda ASC
    ) maiores_vendas
WHERE 
    cliente.codigo_cliente = maiores_vendas.codigo_cliente
LIMIT 1)