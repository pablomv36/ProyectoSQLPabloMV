SELECT nombre
FROM PMV_Ingrediente
WHERE id_ingrediente > 5;

SELECT COUNT(*) AS total_ingredientes
FROM PMV_Ingrediente;

SELECT *
FROM PMV_Plato
WHERE tipo IN ('Pasta', 'Carne');

SELECT *
FROM PMV_Almacen
WHERE descripcion = 'Temporal';

SELECT P.nombre AS plato, I.nombre AS ingrediente
FROM PMV_Plato P
JOIN PMV_Usa U ON P.id_plato = U.id_plato
JOIN PMV_Ingrediente I ON U.id_ingrediente = I.id_ingrediente;


SELECT T.nombre AS trabajador, P.nombre AS plato
FROM PMV_Trabajador T
JOIN PMV_Prepara PR ON T.dni = PR.dni
JOIN PMV_Plato P ON PR.id_plato = P.id_plato;

SELECT cantidad_palets,(cantidad_palets * 2) AS Total_Palets_2Mes
FROM PMV_Almacena;

SELECT nº_almacen, SUM(cantidad_palets) AS Total_Palets_Almacen
FROM PMV_Almacena
GROUP BY nº_almacen;

SELECT T.nombre || ' ' || T.apellidos AS "Nombre_Completo", P.nombre AS "Nombre_Plato"
FROM PMV_Trabajador T
JOIN PMV_Prepara PR ON T.dni = PR.dni
JOIN PMV_Plato P ON PR.id_plato = P.id_plato;

