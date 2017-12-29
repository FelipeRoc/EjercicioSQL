#Como crear una base de datos con SQL.
create database moduloocho character set utf8
collate utf8_general_ci;

#Crear una Tabla con columnas.
create table `persona`(
	`id` int(11) NOT NULL,
    `Nombre` varchar(100),
    `Apellido` varchar(100),
    `Edad` int(3)
);

#Agrefando Llave Primaria a la tabla persona
ALTER TABLE `persona` 
	add PRIMARY KEY (`id`);
    #Clave primaria es única

#Sentencia para insertar Fila en la Tabla persona    
INSERT INTO `persona` (Nombre, Apellido, Edad, Ciudad)
values ("Felipe", "Soto", 20, "Valparaíso");

#Seleccionar elementos
SELECT *FROM persona;

SELECT *FROM persona where id = 1;

#Ejercicios
#Vaciar Tabla (Truncate)
TRUNCATE persona;
DELETE FROM persona;

#Eliminar Tabla
DROP TABLE persona;

#Añadir una columna a la tabla
ALTER Table persona add COLUMN `telefono` int (11);

#Añadir más de una columna a la tabla
ALTER Table `persona` 
	add COLUMN país varchar (100),
    add COLUMN ciudad varchar (100);
    
#Agregar una columna después de una existente
ALTER table `persona`
	add COLUMN Segundo_Nombre varchar (100) AFTER Nombre;
    
#Eliminar una columna a la tabla
ALTER Table persona DROP COLUMN `telefono`;
#Se vuelve a añadir columna teléfono

#Modificar llave principal como autoincrementable.
ALTER TABLE persona
	MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

#insertar un solo registro luego de modificar el ID a AutoIncrementable.
INSERT INTO persona (Nombre, Apellido, Edad, ciudad)
	values ("Falsin", "Farsante", 30, "Santiago");
#Insertar varios registreos en una sola comulmna.
INSERT INTO persona (Nombre, Segundo_Nombre, Apellido, Edad, ciudad)
values("Diego", "Armando", "Astudillo", 49, "Valparaíso"),
("Roberto", "James", "Ramirez", 58, "Viña del Mar"),
("Doc", "San", "Salinas", 63, "Santiago"),
("Yoselin", "Mariela", "Zapata", 12, "Quilpue"),
("Rick", "Ferna", "Gallardo", 18, "Valparaíso"),
("Marcia", "Reina", "Soto", 35, "New York"),
("Jaime", "Treni", "Muñoz", 28, "Salamanca"),
("Rey", "Jack", "Kill", 22, "Illapel");

#Eliminar
DELETE FROM persona where id=23;

#Actualizar
UPDATE persona set Segundo_Nombre = "Leman" where id = 2;

