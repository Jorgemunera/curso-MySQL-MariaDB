USE metro_cdmx;

-- ST_Distance_Sphere() es la funcion para calcular la distancia entre dos puntos

SELECT
ST_Distance_Sphere(
    POINT(-99.14912224, 19.42729875),
    POINT(-99.13303971, 19.42543703)
) AS distance;


-- Calculamos en kilometros con datos quemados
SELECT
ST_Distance_Sphere(
    POINT(-99.14912224, 19.42729875),
    POINT(-99.13303971, 19.42543703)
) / 1000 AS distance;

-- Calculando lo mismo con consultas anidadas
SELECT ST_Distance_Sphere(
(SELECT `location`
FROM `locations`
WHERE `id` = (
    SELECT `id`
    FROM `stations`
    WHERE name="Balderas"
)),
(SELECT `location`
FROM `locations`
WHERE `id` = (
    SELECT `id`
    FROM `stations`
    WHERE name="Pino Suárez"
))
) /1000 AS distance;

-- Solucion del profesor, Calculamos en kilometros con consultas anidadas
SELECT
ST_Distance_Sphere(
    (
        SELECT `locations`.`location`
        FROM `locations`
        INNER JOIN `stations`
        ON `stations`.`id` = `locations`.`station_id`
        WHERE `stations`.`name` = "Balderas"
    ),
    (
        SELECT `locations`.`location`
        FROM `locations`
        INNER JOIN `stations`
        ON `stations`.`id` = `locations`.`station_id`
        WHERE `stations`.`name` = "Pino Suarez"
    )
) / 1000 AS distance;