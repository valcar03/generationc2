create table generationc2.cursos(
id int primary key not null auto_increment,
nombre varchar(100) not null,
cant_alumnos int not null,
especialidad varchar(100)
);

insert into cursos 
(nombre, cant_alumnos, especialodad)
value ("cohorte 1", 30, "java"), ("cohorte 2", 34, "java"), ("cohorte 2", 35,"java");

select * from cursos;

-- agregar la fk a la estudiante

-- creación columna
alter table estudiante 
add curso_id int not null

-- relacionen las tablas
alter table estudiante 
add foreign key(curso_id) references cursos (id)

insert into estudiante 
(nombre, apellido, curso_id)
values  ("Jhon","Doe",1),
("Jane","Doe",2),
("Ayun","Doe",2),
("Zoe","Doe",3);
