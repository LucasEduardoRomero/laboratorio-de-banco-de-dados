CREATE OR REPLACE FUNCTION caracteristica_especial(numero INT)
RETURNS boolean AS $$
DECLARE
    metade_um INT;
    metade_dois INT;
	resp boolean;	
BEGIN
	
	IF numero < 1000 THEN
		RETURN FALSE;
	END IF;
	
	SELECT (numero / 100) INTO metade_um;
	SELECT (numero % 100) INTO metade_dois;

	SELECT (((metade_um + metade_dois) ^ 2) = numero) INTO resp;
    RETURN resp;
END
$$
LANGUAGE plpgsql;

SELECT caracteristica_especial(3025);
