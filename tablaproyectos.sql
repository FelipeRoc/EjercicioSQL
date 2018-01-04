CREATE TABLE proyectos(
	id_proyecto int(11) not null,
    Nombre_proyecto varchar(100) not null,
    Descripcion_proyecto text not null,
    fecha date not null,
    id int(11) not null #Jefe de Proyecto Persona
);

# Creae relación entre tabla persona y tabla proyectos

persona personapersonaALTER TABLE proyectos ADD CONSTRAINT relacion_persona_proyecto FOREIGN KEY (id) REFERENCES persona(id); 