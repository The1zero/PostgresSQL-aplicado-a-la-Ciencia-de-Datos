SELECT 
	MIN(
		CAST(
			INFO -> 'items' ->> 'cantidad' AS INTEGER
		)
	),
		MAX(
		CAST(
			INFO -> 'items' ->> 'cantidad' AS INTEGER
		)
	),
		SUM(
		CAST(
			INFO -> 'items' ->> 'cantidad' AS INTEGER
		)
	),
	AVG(
		CAST(
			INFO -> 'items' ->> 'cantidad' AS INTEGER
		)
	)
FROM pedidos;	


