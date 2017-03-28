-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
id integer PRIMARY KEY,
first_name varchar (60),
last_name varchar (60)
);

CREATE TABLE employee_department (
id integer PRIMARY KEY,
name varchar (60),
description varchar (60)
);

INSERT INTO employee_department (id,name,description) VALUES
(1,'Direccion General','Direccion General'),
(2,'Direccion de operaciones','Direccion de operaciones de planta'),
(3,'Administracion','Administracion'),
(4,'Ventas','Ventas'),
(5,'Compras','Compras'),
(6,'Recursos humanos','recursos humanos');

ALTER TABLE employee ADD COLUMN department_id integer REFERENCES employee_department (id);

INSERT INTO employee (id,first_name,last_name,department_id) VALUES
(1,'Jhesica','Martinez',1),
(2,'Hernan','Hernandez',2),
(3,'Julio','Marana',3),
(4,'Jerson','Valencia',1);
