-- relaciones
create table proveedores(
	id int primary key not null auto_increment,
	nombre varchar(100) not null,
	rut varchar (100) not null
);

create table direccion (
	id int primary key not null auto_increment,
	calle varchar(100) not null,
	numero int not null,
	sector varchar (100) not null,
	ciudad varchar(100) not null,
	region varchar (100) not null,
	codigo int,
	proveedor_id int not null
);

alter table direccion 
add constraint fk_proveedor_id
foreign key (proveedor_id) references proveedores(id);

insert into proveedores  (nombre,rut)
	values ("Martín", "132547-9"),("Lorena", "126453-5");
	
insert into direccion (calle,numero, sector, ciudad,region,codigo, proveedor_id)
	values ("Nonato coo", 423, "la florida", "santiago", "metropolitana", 817000,1),("Bahía inglesa", 423, "la florida", "santiago", "metropolitana", 817000, 2);
	
insert into proveedores  (nombre,rut)
	values ("Oso", "982674-8")
	
insert into direccion (calle,numero, sector, ciudad,region,codigo, proveedor_id)
	values ("Calle Calle", 4354, "la florida", "santiago", "metropolitana", 817000,5)
	
insert into proveedores  (nombre,rut)
	values("nira", "7982474-6")
	
select d.* from proveedores p
inner join direccion d 
on p.id = d.proveedor_id
where p.id = 1
;

select d.id,d.calle, d.numero 
from proveedores p
inner join direccion d  -- el join sirve para encontrar registros en común entre dos o + tablas
on p.id = d.proveedor_id
where p.id = 1
;

select * 
from proveedores p
right join direccion d 
on p.id = d.proveedor_id

;

-- 
-- 
-- 
-- 
-- RELACIÓN M TO M
create table productos (
id int primary key not null auto_increment,
nombre varchar(100) not null,
descripción varchar(100) not null
);

insert into productos  (nombre,descripción)
	values ("cepillo de dientes", "sirve para limpiar los dientes"),("computador", "objeto tecnológico"), ("mouse", "accesorio de computador"), ("teclado", "accesorio de pc");

create table pedidos(
id int primary key not null auto_increment,
fecha DATE not null,
monto int not null,
cliente_id int not null
);

-- tabla intermedia: pedidos_productos
-- id, fk tabla 1, fk tabla2
--     pedidos_ id, producto_id

create table pedidos_productos(
id int primary key not null auto_increment,
pedido_id int not null,
producto_id int not null,
foreign key (producto_id) references productos(id),
foreign key (pedido_id) references productos(id)
);
-- agregar un foreign key
-- alter table TABLE
-- Add foreign key (columna) references TABLEB (columnab)

insert into pedidos(fecha, monto)
values ('2022-11-09', 1234)

insert into pedidos_productos  (producto_id, pedido_id)
values (1,1), (1,1);

alter table pedidos_productos 
add cant_productos int, add subtotal int;

alter table productos
add valoe_unitario int;
	