SELECT titulo, MAX(precio_renta)
FROM peliculas
GROUP BY titulo
ORDER BY MAX(precio_renta);


SELECT clasificacion, MIN(precio_renta) as Minimo, Max(precio_renta) as Maximo
FROM peliculas
GROUP BY clasificacion;

SELECT titulo, Max(precio_renta)
FROM peliculas
GROUP BY titulo
ORDER BY Max(precio_renta) DESC;


SELECT titulo, precio_renta
FROM peliculas
ORDER BY precio_renta DESC;


SELECT SUM(precio_renta)
FROM peliculas;

SELECT clasificacion,COUNT(*)
FROM peliculas
GROUP BY clasificacion;

SELECT AVG(precio_renta)
FROM peliculas;


SELECT clasificacion, AVG(precio_renta) as PrecioPromedio
FROM peliculas
GROUP BY clasificacion
ORDER BY PrecioPromedio DESC;

SELECT clasificacion, AVG(duracion) as DuracionPromedio
FROM peliculas
GROUP BY clasificacion
ORDER BY DuracionPromedio DESC;

SELECT clasificacion, AVG(duracion_renta) as DuracionRentaPromedio
FROM peliculas
GROUP BY clasificacion
ORDER BY DuracionRentaPromedio DESC;


		