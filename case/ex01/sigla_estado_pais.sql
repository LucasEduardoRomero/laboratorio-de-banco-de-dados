SELECT
	CASE
		WHEN pais.sigla = 'BR' THEN estado.sigla
		ELSE estado.nome
	END as estado,
	CASE
		WHEN pais.sigla = 'BR' THEN 'BR'
		ELSE pais.nome
	END as pais
FROM
	estado,
	pais
WHERE
	estado.PAIS_pais_id = pais.pais_id
	