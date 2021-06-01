CREATE OR REPLACE FUNCTION fatorial(num INT)
RETURNS integer AS $$
DECLARE
    tot INT;
    cont INT;
BEGIN
    SELECT num INTO tot;
    SELECT (num - 1) INTO num;
    WHILE num <> 1 LOOP
        SELECT tot * num INTO tot;
        SELECT num - 1 into num;
    END LOOP;
	RETURN tot;
END
$$
LANGUAGE plpgsql;

SELECT fatorial(3);
-- Resultado esperado -> 6