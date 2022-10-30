create database holamundo;
show databases;
use holamundo;
CREATE TABLE animales (
	id int,
    tipo varchar(255),
    tamaño varchar(255),
    PRIMARY KEY (id)
);
-- control enter: ejecutar

INSERT INTO animales (tipo, tamaño) VALUES ('patito', 'chiquito');
ALTER TABLE animales MODIFY COLUMN id int auto_increment;

SHOW CREATE TABLE animales;

-- CREATE TABLE usuarios (
--  `id` int NOT NULL AUTO_INCREMENT,
--  `nombre` varchar(255) DEFAULT NULL,
--  `email` varchar(255) DEFAULT NULL,
--  PRIMARY KEY (`id`)
-- );

INSERT INTO animales (tipo, tamaño) VALUES ('patito', 'grande');
INSERT INTO animales (tipo, tamaño) VALUES ('gatito', 'chiquito');

SELECT *  FROM animales;
SELECT * FROM animales WHERE id = 2;
SELECT * FROM animales WHERE tamaño = 'chiquito';
SELECT * FROM animales WHERE tamaño = 'chiquito' AND tipo = 'patito';

UPDATE animales SET tamaño = 'mediano' WHERE id = 3;
SELECT * FROM animales WHERE id = 3;

SELECT * FROM animales;

DELETE FROM animales WHERE tamaño = 'grande';

-- Error Code: 1175. You are using safe update mode and you tried to update
-- a table without a WHERE that uses a KEY column.  To disable safe mode,
-- toggle the option in Preferences -> SQL Editor and reconnect.

DELETE FROM animales WHERE id = 4;

UPDATE animales set tamaño = 'chiquito' where tipo = 'gatito';
-- tambien devuelve un 1175





