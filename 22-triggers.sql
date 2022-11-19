USE metro_cdmx;

CREATE TRIGGER update_updated_at_lines
BEFORE UPDATE
ON `lines`
FOR EACH ROW 
SET NEW.updated_at= NOW();

CREATE TRIGGER update_updated_at_Drivers
BEFORE UPDATE
ON `Drivers`
FOR EACH ROW 
SET NEW.updated_at= NOW();

CREATE TRIGGER update_updated_at_lines_stations
BEFORE UPDATE
ON `lines_stations`
FOR EACH ROW 
SET NEW.updated_at= NOW();

CREATE TRIGGER update_updated_at_locations
BEFORE UPDATE
ON `locations`
FOR EACH ROW 
SET NEW.updated_at= NOW();

CREATE TRIGGER update_updated_at_stations
BEFORE UPDATE
ON `stations`
FOR EACH ROW 
SET NEW.updated_at= NOW();

-- vamos a crear el evento para actualizar automatico el updated_at de la tabla trains sin necesidad de triggers

ALTER TABLE `trains`
	MODIFY `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;
