--
-- File generated with SQLiteStudio v3.2.1 on Mon Feb 17 14:54:57 2020
--
-- Text encoding used: System
--

-- Table: garbage_collection
DROP TABLE IF EXISTS garbage_collection;
CREATE TABLE garbage_collection (
	id SERIAL, 
	item VARCHAR(255), 
	weight FLOAT, 
	collector VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO garbage_collection (item, weight, collector) VALUES ('Sofa', 90.5, 'Jacob Deming');
INSERT INTO garbage_collection (item, weight, collector) VALUES ('Broken TV', 11.25, 'Paul');

SELECT * from garbage_collection;