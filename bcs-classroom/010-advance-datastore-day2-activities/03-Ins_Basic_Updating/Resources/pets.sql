-- Table: pet
DROP TABLE IF EXISTS pet;
CREATE TABLE pet (
	id SERIAL, 
	name VARCHAR, 
	type VARCHAR, 
	age INTEGER, 
	PRIMARY KEY (id)
);
--INSERT INTO pet (id, name, type, age) VALUES (1, 'Justin Timbersnake', 'snek', 2);
--INSERT INTO pet (id, name, type, age) VALUES (2, 'Pawtrick Stewart', 'good boy', 10);
--INSERT INTO pet (id, name, type, age) VALUES (3, 'Godzilla', 'iguana', 1);

INSERT INTO pet (name, type, age) VALUES ('Justin Timbersnake', 'snek', 2);
INSERT INTO pet (name, type, age) VALUES ('Pawtrick Stewart', 'good boy', 10);
INSERT INTO pet (name, type, age) VALUES ('Godzilla', 'iguana', 1);
