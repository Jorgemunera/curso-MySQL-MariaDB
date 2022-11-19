USE metro_cdmx;

-- Seleccionar todo
SELECT *
FROM `lines`;

-- Filtrar por columnas
SELECT id, name, color 
FROM `lines`;

-- Operaciones matematicas con selec;
SELECT (2+2);

SELECT (2+2) AS resultado;

-- Calcular un promedio de los datos de una tabla
SELECT AVG(year)
FROM `trains`;

SELECT AVG(year) AS promedio_year
FROM `trains`;

-- Juntar tablas
SELECT 
`lines`.`name`,
`trains`.`serial_number`
FROM `lines`
INNER JOIN `trains`
ON `lines`.`id`=`trains`.`line_id`;