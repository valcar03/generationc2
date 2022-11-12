/*José es el dueño de un minimarket de barrio, lleva más de 15 años administrando el
funcionamiento completo de su negocio, siempre lo ha hecho de manera análoga, lo cual en un
inicio no presentaba problemas, pero con el pasar de los años esto ha generado errores
humanos, pérdidas de registros, documentos estropeados por la antigüedad y una nula
posibilidad de poder estudiar el real crecimiento de su negocio año tras año.
José te contrata para generar un software para su negocio.
En esta primera instancia tu tarea será generar un modelo de base de datos que responda a
sus necesidades.
Puntos a considerar:
● Don José vende distintos tipos de productos.
● Tiene distintos proveedores.
● Desea un informe anual sobre ganancias y venta de productos.
*/

-- crear tablas 

CREATE TABLE producto(
	id int primary key auto_increment not null,
	nombreProducto varchar (100) not null,
	precio int not null
	);
	
CREATE TABLE tipo(
	id int primary key auto_increment not null,
	tipo_producto varchar (100) not null
	
	);
	
CREATE TABLE proveedor(
	id int primary key auto_increment not null,
	nombre varchar (100) not null,
	empresa varchar (100) not null
	);

CREATE TABLE venta(
	id int primary key auto_increment not null,
	nombre varchar (100) not null,
	cantidad_productos int not null,
	tipo_id int not null,
	producto_id int not null
	);

alter table venta 
add foreign  key(tipo_id) references tipo(id);

alter table venta 
add foreign  key(producto_id) references producto(id);

alter table tipo 
add id_producto INT ;

alter table proveedor 
add Idtipo int;

alter table proveedor
add foreign  key(Idtipo) references tipo(id);

alter table tipo
add foreign  key(id_producto) references producto(id);

insert into producto (nombreProducto, precio)
values ("cerdo", 1600),("pollo", 1000), ("res", 2000), ("pavo", 2500),("brocoli", 800), ("alcachofa", 1000), ("papa", 400), ("zapallo", 600), ("leche", 1200), ("yogurt", 300), ("queso", 1400), ("mantequilla", 1200), ("avena", 800), ("arroz", 1000), ("maíz", 1000), ("quinoa", 1500);


insert into tipo (tipo_producto, Id_Productos)
values ("carne", 1),("carne", 2),("carne", 3),("carne", 4), ("vegetal",5 ), ("vegetal",6 ), ("vegetal",7 ), ("vegetal",8 ), ("lácteo",9),("lácteo",10),("lácteo",11),("lácteo",12), ("cereales", 13), ("cereales", 14), ("cereales", 15), ("cereales", 16);

insert into proveedor (nombre,empresa, Idtipo  )
values ("Julián", "Carnicería Raúl", 1), ("María", "Verduleria Mari", 2),("Carlos", "Donde Carlitos", 3), ("Ariel", "Trigueño", 4);

insert into venta (nombre,cantidad_productos, tipo_id, producto_id)
values ("Rocío", 2, 2,5)



select *
from tipo t 
inner join producto p 
on t.id = p.id

select id_productos, precio, cantidad_productos , precio*cantidad_productos subtotal 
from venta v 
inner join producto p 
on v.id = p.id

