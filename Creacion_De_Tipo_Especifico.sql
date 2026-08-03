CREATE TYPE humor AS Enum ('Triste','Normal', 'Feliz');

CREATE TABLE persona2_prueba(
	nombre text,
	humor_actual humor
);

INSERT INTO persona2_prueba VALUES ('Pablo', 'Feliz');
