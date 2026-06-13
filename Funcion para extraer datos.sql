CREATE OR REPLACE FUNCTION movies_stats()
RETURNS VOID 
LANGUAGE plpgsql
AS $$
DECLARE 
	total_rated_r REAL := 0.0;
	total_larger_than_100 REAL := 0.0;
	total_published_2006 REAL := 0.0;
	average_duracion REAL := 0.0;
	average_rental_price REAL:= 0.0;
BEGIN
	total_rated_r := COUNT (*) FROM peliculas WHERE clasificacion='R';
	total_larger_than_100 := COUNT(*) FROM peliculas WHERE duracion > 100;
	total_published_2006 := COUNT(*) FROM peliculas WHERE anio_publicacion=2006;
	average_duracion := AVG(duracion) FROM peliculas;
	average_rental_price := AVG(precio_renta) FROM peliculas;

	TRUNCATE TABLE peliculas_estadisticas;

	INSERT INTO peliculas_estadisticas(tipo_estadistica,total)
	VALUES
		('PELICULAS CON CLASIFICACION R', total_rated_r),
		('PELICULAS DE MAS DE 100 MINUTOS', total_larger_than_100),
		('PELICULAS PUBLICADAS EN 2006', total_published_2006),
		('PROMEDIO DE DURACION EN MINUTOS', average_duracion),
		('PRECIO PROMEDIO DE RENTA',average_rental_price);
END
$$;

SELECT  movies_stats();