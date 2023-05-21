SELECT A.nº_almacen, A.nombre, SUM(AL.cantidad_palets) AS Total_Palets1
FROM PMV_Almacen A
JOIN PMV_Almacena AL ON A.nº_almacen = AL.nº_almacen
GROUP BY A.nº_almacen, A.nombre;

BEGIN
INSERT INTO PMV_ingrediente (id_ingrediente, nombre)
VALUES (12, 'Pan Rallado');
INSERT INTO PMV_plato (id_plato, nombre, tipo)
VALUES (6, 'Huevos Rotos', 'Revuelto');
COMMIT;
END;

UPDATE PMV_Trabajador
SET tlfo_movil = '684322947'
WHERE dni = '95214224Y';

DELETE FROM PMV_Ingrediente
WHERE id_ingrediente = 7;
