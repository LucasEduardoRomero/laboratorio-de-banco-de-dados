CREATE OR REPLACE FUNCTION fatorial(num INT)
RETURNS integer AS $$
DECLARE
    tot INT;
    cont INT;
BEGIN
    num INTO tot
    (num - 1) INTO num
    WHILE num <> 1 LOOP
        tot * num INTO tot
        num - 1 into num
    END LOOP
	RETURN tot
$$
LANGUAGE plpgsql;