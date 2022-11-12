-- ejercicio
/**
 * tabla direcciones
 * id, nombre, número, ciudad
 * 
 * agregar todas las tablas la relación de direcció
 * 
 * 2 insercciones en las tablas
 */
create table generationc2.direcciones(
id int primary key not null auto_increment,
nombre varchar(100) not null,
numero int not null,
ciudad varchar(100) not null
);

alter table estudiante 
add direccion varchar(100) not null

alter table estudiante 
add foreign key(direccion) references direcciones (id)

insert into estudiante 
(nombre, apellido, direccion)
values  ("Jhon","Doe","valparaiso"),
("Jane","Doe","santiago");



alter table administrativos 
add direccion varchar(100) not null

alter table administrativos 
add foreign key(direccion) references direcciones (id)

insert into administrativos 
(nombre, apellido, direccion)
values  ("Jhon","Doe","valparaiso"),
("Jane","Doe","santiago");

alter table profesores 
add direccion varchar(100) not null

alter table profesores  
add foreign key(direccion) references direcciones (id)

insert into profesores  
(nombre, apellido, direccion)
values  ("Jhon","Doe","valparaiso"),
("Jane","Doe","santiago");