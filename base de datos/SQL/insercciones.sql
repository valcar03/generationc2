-- insertar fatos en tablas
-- insert into nombre_tabla (nombre_col1, nombre_col2...) values (valor1,valor2,...);
insert into directivos (nombre,apellido)
values("Maggie", "Fernández");

insert into directivos (nombre,apellido)
values("Rafael", "Guerrero");

-- instertar más de un registro

insert inito directivos (nombre, apellido)
values ("lau", "soto"), ("andrea", "andrea", "montecino")
-- consultar
select  *
from directivos 
where id = 2
;

-- modificar la data
-- drop database generationc2

-- eliminar la tabla, no se puede recuperar
-- drop table directivos;

-- eliminar el contenido de una tabla
-- truncate table directivos;

-- modificiar una data en una columna específica

update nombre_tabla set nombre_columna= el_nuevo_dato where condicion

update directivos set nombre = "Laura" where id = 3;

select * from directivos;
-- Mostrar columnas especídicas
select id, apellido  
from directivos;

-- Alias
select d.nombre as gato, d.id as rut
from directivos d;

-- Filtrar
select d.id, d.nombre, d.apellido  
from directivos d
where d.nombre = "andrea";

select d.nombre, d.apellido 
from directivos d 
where d.nombre = "andrea"
and d.apellido = "montecinos";

-- filtrar por parte de la palabra/número; LIKE conincidencias
select d.nombre, d.apellido 
from directivos d 
where d.nombre = "an%";

-- comienza por cualquier texto pero finaliza con a

select d.nombre, d.apellido 
from directivos d 
where d.nombre = "%a";

