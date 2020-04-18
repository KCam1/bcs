
DROP TABLE IF EXISTS icecreamstore;
CREATE TABLE icecreamstore (
  ID SERIAL,
  Flavors varchar(45) DEFAULT NULL,
  Quantities INT DEFAULT NULL,
  Price FLOAT DEFAULT NULL,
  PRIMARY KEY (ID)
);
--
-- Dumping data for table icecreamstore
--

INSERT INTO icecreamstore VALUES (1,'Vanilla',100,1.00),(2,'Chocolate',150,1.25),(3,'Strawberry',95,1.25),(4,'Rocky Road',50,1.50),(5,'Cookie Dough',75,1.50),(25,'testflavor',5,0.25);
