-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

ALTER TABLE employee ADD COLUMN boss_id integer REFERENCES employee (id);


UPDATE employee SET boss_id = 1 WHERE id = 1;
UPDATE employee SET boss_id = 1 WHERE id = 2;
UPDATE employee SET boss_id = 2 WHERE id = 3;
UPDATE employee SET boss_id = 3 WHERE id = 4;
