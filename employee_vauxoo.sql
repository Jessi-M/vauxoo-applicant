-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.
CREATE TABLE employee (
  id integer PRIMARY KEY,
  first_name varchar(60),
  last_name varchar(60)
);


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

--	modificar employee_employee para poder asignar un departamento a cada empleado
ALTER TABLE employee ADD COLUMN department_id integer REFERENCES employee_department (id);

--	Inserta 4 empleados
--	Insert data into table  employee_employee
INSERT INTO employee_employee (id, first_name, last_name, department_id) VALUES
(1, 'Jhessica', 'Martinez', 1),
(2, 'Joao', 'Ferreira', 2),
(3, 'Pablo', 'Arocha', 2),
(4, 'Jesús', 'Jimenez', 1);

CREATE TABLE employee_hobby(
  id integer PRIMARY kEY,
  name varchar(60),
  descaription varchar (150)
);

INSERT INTO employee_hobby(id,name,description) VALUES 
(1,'Teatro','practicar tetro'),
(2,'Deporte','practicar deporte'),
(1,'Fotografia','tomar fotografias');

CREATE TABLE employees_hobbies (
  employee_id integer REFERENCES employee (id),
  hobby_id integer REFERENCES employee (id),
  PRIMARY KEY (employee_id,hobby_id)
);

INSERT INTO employees_hobbies (employee_id,hobby_id) VALUES
(1,2),
(1,3),

(2,3),
(2,1),

(3,2),
(3,3),

(4,2),
(4,1);

ALTER TABLE employee ADD COLUMN boss_id integer REFERENCES employee (id);


UPDATE employee SET boss_id = 1 WHERE id = 1;
UPDATE employee SET boss_id = 1 WHERE id = 2;
UPDATE employee SET boss_id = 2 WHERE id = 3;
UPDATE employee SET boss_id = 3 WHERE id = 4;

