USE metro_cdmx;

DELETE FROM stations_delete;

--Esto es para ver como un delete from no reestablece los id
INSERT INTO `stations_delete` (name) VALUES
("Lázaro Cárdens"),
("Ferería"),
("Pnttlán"),
("Tauga"),
("MartínCrrera");