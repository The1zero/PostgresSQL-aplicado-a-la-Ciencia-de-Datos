CREATE OR REPLACE FUNCTION test_dropcreate_function()
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
	DROP TABLE IF EXISTS aaa; 
	CREATE TABLE aaa (bbb char(5) CONSTRAINT FIRSTKEY PRIMARY KEY, ccc char(5));
	DROP TABLE IF EXISTS aaab;
	CREATE TABLE aaab (bbba char(5) CONSTRAINT SECONDKEY PRIMARY KEY, ccca char(5));
END
$$;

SELECT test_dropcreate_function();