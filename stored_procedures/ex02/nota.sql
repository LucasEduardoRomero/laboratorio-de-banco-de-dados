CREATE OR REPLACE FUNCTION media_nota_aluno(nome varchar)
RETURNS FLOAT AS $$
DECLARE
	qtd_notas INT;
	cont INT;
	arr_notas INT[];
	media FLOAT;	
BEGIN
	
	SELECT nota INTO arr_notas
	FROM nota WHERE aluno ILIKE nome;

    SELECT 0 INTO media;
	SELECT 0 INTO cont;

	SELECT array_length(arr_notas, 1) INTO qtd_notas;
	
	WHILE cont <= qtd_notas LOOP
		SELECT media + arr_notas[cont] INTO media;
		
		SELECT cont + 1 INTO cont;
	END LOOP;
	RETURN (media / qtd_notas);
END
$$
LANGUAGE plpgsql;
