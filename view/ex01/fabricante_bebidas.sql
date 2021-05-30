--Mostre o nome do fabricante e a bebidas que ele vende
CREATE VIEW bebida_fabricante AS (
    select fabricante_nome AS "Nome Fabricante", descricao AS "Bebida" 
    from fabricante, bebida
    where fabricante.fabricante_id = bebida.fabricante_fabricante_id
);
SELECT * FROM bebida_fabricante;

--Mostre o nome do fabricante, o nome da cidade e o nome da bebida que fabrica
CREATE VIEW bebida_fabricante_cidade AS (
    SELECT fabricante.fabricante_nome AS "Nome Fabricante", cidade.cidade_nome AS "Cidade", bebida.descricao AS "Bebida"
    FROM fabricante, cidade, bebida
    WHERE cidade.cidade_id = fabricante.cidade_cidade_id 
        AND bebida.fabricante_fabricante_id = fabricante.fabricante_id
);
SELECT * FROM bebida_fabricante_cidade;

--Mostre os nomes das bebidas e o nome dos produtos em uma unica consulta
CREATE VIEW bebidas_produtos AS (
	(select descricao as "Bebidas/Produtos" from bebida)
		UNION
	(select descricao as "Bebidas/Produtos" from produto)
);
SELECT * FROM bebidas_produtos;