-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.



--	Create table employee_department
CREATE TABLE employee_department (
  id integer PRIMARY KEY,
  name varchar(60),
  description varchar(60)
);

--	Insert data into table employee_department
INSERT INTO employee_department (id, name, description) VALUES
(1, 'General management', 'General management'),
(2, 'Operations address', 'Commercial address'),
(3, 'Purchasing', 'Operations'),
(4, 'Customer Service', 'Customer Service'),
(5, 'Administration', 'Administration'),
(6, 'Warehouse', 'Warehouse');


CREATE TABLE employee (
  id integer PRIMARY KEY,
  first_name varchar(60),
  last_name varchar(60),
--	modificar employee para poder asignar un departamento a cada empleado
  department_id integer REFERENCES employee_department (id),
--      modificar employee para poder asignar un jefe a cada empleado
  boss_id integer REFERENCES employee (id) 
);

--	Inserta 4 empleados
--	Insert data into table  employee_employee
INSERT INTO employee (id, first_name, last_name, department_id, boss_id) VALUES
(1, 'Jhessica', 'Martinez',1,1),
(2, 'Joao', 'Ferreira',2,1),
(3, 'Pablo', 'Arocha',2,2),
(4, 'Jesús', 'Jimenez',1,2);

CREATE TABLE employee_hobby (
  id integer PRIMARY KEY,
  name varchar(60),
  description varchar(150)
);

INSERT INTO employee_hobby (id,name, description) VALUES
(1,'Teatro','practicar teatro'),
(2,'Deporte','practicar deporte'),
(3,'Fotografia','tomar fotografias');

