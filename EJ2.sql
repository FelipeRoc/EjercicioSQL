CREATE TABLE `roco_db`(
	`ID` int (50) NOT NULL,
    `Nombre` varchar (100),
    `2009` int (100),
    `2010` int (100),
    `2011` int (100),
    `2012` int (100),
    `2013` int (100),
    `2014` int (100),
    `2015` int (100),
    `2016` int (100),
    `2017` int (100)
);

LOAD DATA INFILE 'C:/Users/Insuco/Desktop/Mpro/M8Actividad2/GESEnero2017.csv'
	INTO TABLE `roco_db`
	FIELDS TERMINATED BY ';'
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;
    
SELECT AVG(`2017`) AS Promedio_2017, # Promedio
	SUM(`2017`) AS Suma_2017 # Suma
	FROM roco_db;
    
SELECT `2017`,COUNT(`2017`) AS `Nº de casos`#Moda
	FROM roco_db
	GROUP BY `2017`
	ORDER BY COUNT(`2017`) DESC
    LIMIT 1;
    
SELECT MAX(`2017`) FROM roco_db;

SELECT CONCAT(`2017`, " " , `Nombre`," Es la patología GES con más casos durante el mes de Enero 2017") AS Resumen FROM roco_db 
	WHERE `2017` = (SELECT MAX(`2017`) FROM `roco_db`);
    
    
SELECT *FROM `roco_db`;

SELECT *FROM roco_db
INTO OUTFILE
	'C:/Users/Insuco/Desktop/Mpro/M8Actividad2/PatologiasGESEnero2017.csv' #Ruta
    FIELDS TERMINATED BY ','
    LINES TERMINATED BY '\n';
