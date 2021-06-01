CREATE OR REPLACE FUNCTION soma_tres_menores(num1 INT, num2 INT, num3 INT, num4 INT)
RETURNS integer AS $$
DECLARE
    maior INT;
	resp INT;	
BEGIN
	SELECT -10000 INTO maior;
	IF num1 > maior THEN
		SELECT num1 INTO maior;
	END IF;
	IF num2 > maior THEN
		SELECT num2 INTO maior;
	END IF;
	IF num3 > maior THEN
		SELECT num3 INTO maior;
	END IF;
	IF num4 > maior THEN
		SELECT num4 INTO maior;
	END IF;
   	
	SELECT (num1 + num2 + num3 + num4 - maior) INTO resp;
	RETURN resp;
END
$$
LANGUAGE plpgsql;

-- Resultado Esperado -> 3
SELECT soma_tres_menores(1,2,3,0);