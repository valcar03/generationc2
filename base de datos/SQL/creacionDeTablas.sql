-- crear tabla
create table nombre_tabla(
	nombre_columna1 tipo_dato restricciones
);

CREATE TABLE generationc2.administrativos (
	id INT primary key NOT null AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;

-- modificar tabla
ALTER TABLE generationc2.estudiante MODIFY COLUMN id int primary key auto_increment NOT NULL;

CREATE TABLE generationc2.directivos (
	id INT NOT null AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT null,
	primary key (id)
	);
	
-- describir tabla
describe estudiante 

select * from directivos;