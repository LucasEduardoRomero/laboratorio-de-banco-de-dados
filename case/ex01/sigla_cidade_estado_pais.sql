SELECT
    cidade.nome as cidade,
	CASE
		WHEN pais.sigla = 'BR' THEN estado.nome
		ELSE pais.sigla
	END as estado
FROM
    cidade,
	estado,
	pais
WHERE
	estado.PAIS_pais_id = pais.pais_id
        AND
    cidade.ESTADO_estado_id = estado.estado_id;