SELECT pokedex, nombre, tipo1, tipo2
FROM generationc2.pokemoneskanto;
 
-- dar primary key
alter table mis_pokemones 
add primary key (id);

truncate mis_pokemones;

-- añadir una columna
ALTER TABLE generationc2.mis_pokemones ADD id int primary key auto_increment NOT NULL;

-- insercciones
ALTER TABLE mis_pokemones 
ADD FOREIGN KEY(pokedex) REFERENCES pokemonesKanto(pokedex);

-- FULL OUTER JOIN EN MYSQL
select *  
from pokemoneskanto p   
left join mis_pokemones mp  
on p.pokedex = mp.id
union 
select *  
from pokemoneskanto p   
right join mis_pokemones mp  
on p.pokedex = mp.id


-- ejercicio: filtrar todos los pokemones que tengan la habilidad de fuego como tipo 1 (en mis pokemones)

select nombre
from mis_pokemones mp 
inner join pokemoneskanto p 
on p.tipo1 = 'fuego';

-- todos los pokemones de tipo veneno para el tipo 1 o 2

select id from pokemoneskanto p 
where p.tipo1 p.tipo2 = 'veneno';

-- cuantos charmander hay

select count(charizard) 
from mis_pokemones mp 
inner join pokemoneskanto p 
where nombre = 'Charizard'

-- cuantos pokemones tienen habilidad agua
select name from pokemoneskanto p 
inner join mis_pokemones mp ON  p.tipo1 p.tipo2 = 'agua'

-- pokemones en estsacion central

select nombre from pokemoneskanto p inner join mis_pokemones mp on lugar = estación central

-- no tienen tipo 2
