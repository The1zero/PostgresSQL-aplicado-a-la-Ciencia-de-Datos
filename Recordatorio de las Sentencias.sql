SELECT MAX(ultima_actualizacion) AS fecha_ultima_actualizacion,
		clasificacion,
		count(*) as Cantidad_peliculas
FROM peliculas
WHERE duracion_renta > 3
GROUP BY clasificacion, ultima_actualizacion
ORDER BY fecha_ultima_actualizacion;