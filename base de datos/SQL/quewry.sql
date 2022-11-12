
-- query para la inserción de un registro
INSERT INTO generationc2.estudiante (nombre,id,apellido)
VALUES ('nose',8,'Cárcamo');
-- query para eliminar un registro
DELETE FROM generationc2.estudiante
WHERE nombre='AA' AND id=7 AND apellido='BD';

-- crear usuario
CREATE USER 'alejandro'@'localhost' IDENTIFIED by 'Admin1234*';
GRANT ALL PRIVILEGES ON *.* TO 'alejandro'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

-- creacion usuario para acceseso remoto
GRANT ALL PRIVILEGES ON *.* TO 'alejandro'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
