#1) Mostrar a la persona con la mayor edad.
SELECT *FROM `persona` WHERE Edad = (SELECT MAX(Edad) FROM `persona`);
#2) Mostrar lista de personas por orden menor a mayor respecto a la edad.
SELECT *FROM `persona` ORDER BY Edad ASC; 
#3) Mostrar personas en orden alfabético columna nombre A-Z y Z-A
SELECT *FROM `persona` ORDER BY Nombre ASC;
SELECT *FROM `persona` ORDER BY Nombre DESC;
#4) Mostrar lista de personas por orden mayor a menor respecto a la edad.
SELECT *FROM `persona` ORDER BY EDAD DESC;
#5) Mostrar promedio de la edad en las personas
SELECT AVG(Edad) AS Promedio FROM `persona`;
#6) Mostrar la suma de todas las edades
SELECT SUM(Edad) AS Total FROM `persona`;
#7) Mostrar cuantas personas hay en la tabla persona
SELECT COUNT(Nombre) AS `Nº de Personas` FROM `persona`;
#8) Mostrar a la persona con menor edad
SELECT *FROM `persona` WHERE Edad=(SELECT MIN(Edad) FROM `persona`);
#9) Mostrar el último registro en la tabla persona
SELECT *FROM `persona` WHERE id=(SELECT MAX(id) FROM `persona`);
#10) Mostrar sólo el nombre y la edad
SELECT Nombre, Edad FROM `persona`;
#11) Mostrar sólo los 3 últimos registros de la tabla personas
SELECT *FROM `persona` 
	WHERE id=(SELECT MAX(id) FROM `persona`)
	OR id=(SELECT MAX(id-1) FROM `persona`)
    OR id=(SELECT MAX(id-2) FROM `persona`);
#12) Mostrar a las personas que sean mayores (o igual) de 18 años
SELECT *FROM `persona` WHERE edad >= 18;
#13) Mostrar en una sola columna Nombre, Apellido y ciudad
SELECT CONCAT(Nombre," ", Apellido," ", ciudad) AS Datos FROM `persona`; 
#14) Mostrar en una sola columna Nombre y Edad ordenados alfabeticamente por el apellido.
SELECT CONCAT(Nombre," ", Edad) AS Datos FROM `persona` ORDER BY Apellido ASC; 
#15) Mostrar los registros únicos en la tabla personas de acuerdo a nombre.	
SELECT DISTINCT Nombre FROM `persona`;
#16) Mostrar a las personas mayores de 18 y menores de 10 años
SELECT *FROM `persona` WHERE edad > 18 OR edad < 10; 
#17) Mostrar a las personas que sean menores de 10 años o que tengan apellido Soto.
SELECT *FROM `persona` WHERE edad <10 OR Apellido="Soto";
#18) Mostrar a las personas que tengan coincidencia en el apellido en las primeras letras con "Ap".
SELECT *FROM `persona` WHERE Apellido LIKE "Ap%";
#19) Mostrar a las personas que tengan coincidencia con "Usuario".
SELECT *FROM `persona` WHERE  Nombre LIKE "Usuario";
#20) Mostrar a las personas que tengan entre 20 y 30 años.
SELECT *FROM `persona` WHERE edad BETWEEN 20 AND 30; #>= 20 AND edad <= 30;