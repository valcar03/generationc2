-- crear la tabla
CREATE TABLE generationc2.mascotas (
	id INT primary key NOT null AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	dueño varchar(100) NOT null,
	raza varchar(100) not null,
	color varchar(100) not null
	);
	
insert into mascotas (nombre, dueño, raza, color)
values ("Oso", "Vale", "perro", "blanco"), ("Nira", "Vale", "perro", "moteada"), ("Salmón", "Vale", "gato", "naranjo"), ("Gato", "Vale", "gato","moteado")