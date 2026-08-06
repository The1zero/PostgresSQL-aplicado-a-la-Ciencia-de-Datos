CREATE TABLE pedidos(
	ID serial NOT NULL PRIMARY KEY,
	INFO json NOT NULL
);

INSERT INTO pedidos(INFO)
VALUES
	(
		'{"cliente": "David Sanchez", "items": {"producto":"Biberon","cantidad":"24"}}'
	),
	(
			'{"cliente": "Edna Cardenas", "items": {"producto":"Carro de juguete","cantidad":"2"}}'

	),
	(
			'{"cliente": "Andrés Salgado", "items": {"producto":"Resident Evil: Requiem","cantidad":"1"}}'

	);


SELECT 
	INFO ->> 'cliente' AS cliente
FROM pedidos;


SELECT 
	INFO ->> 'cliente' AS cliente
FROM pedidos
WHERE INFO -> 'items' ->> 'producto' = 'Biberon';