CREATE OR REPLACE FUNCTION calcular_n(n INT)
RETURNS INT AS $$
DECLARE
	cont INT;
	tot FLOAT;
BEGIN
	
	SELECT 1 INTO tot;
	SELECT 1 INTO cont;
	WHILE cont <= n LOOP
		SELECT (tot + (1 / cont !)) INTO tot;
		SELECT cont + 1 INTO cont;
	END LOOP;
	RETURN tot;
END
$$
LANGUAGE plpgsql;
