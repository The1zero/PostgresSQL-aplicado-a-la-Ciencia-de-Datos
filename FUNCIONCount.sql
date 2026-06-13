CREATE OR REPLACE FUNCTION count_total_movies()
RETURNS int
LANGUAGE plpgsql
AS $$
BEGIN
	RETURN COUNT (*) FROM peliculas;
END
$$;

Select count_total_movies();