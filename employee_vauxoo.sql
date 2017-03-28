-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

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


