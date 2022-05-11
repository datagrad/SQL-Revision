-- INSERT Statement
USE Sakila;

CREATE TABLE Actor_trial (
  actor_id smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  first_name varchar(45) NOT NULL,
  last_name varchar(45) NULL,
  last_update timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP 
		ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (actor_id)
);

-- Insert Single Row
INSERT INTO sakila.Actor_trial (first_name,last_name,last_update)
VALUES ('Kamal','Kumar','2013-04-15');
-- Check Data
SELECT *
FROM Actor_trial;

-- Insert Single Row
INSERT INTO sakila.Actor_trial 
VALUES (DEFAULT,'Akshay','Kumar','2013-04-16');
-- Check Data
SELECT *
FROM Actor_trial;


-- Insert Single Row
INSERT INTO sakila.Actor_trial (first_name,last_name)
VALUES ('Amitabh','Bachan');
-- Last_updated value takes the default value
-- Check Data
SELECT *
FROM Actor_trial;

-- Insert Single Row
INSERT INTO sakila.Actor_trial (first_name)
VALUES ('Kamal');
-- Check Data
SELECT *
FROM Actor_trial;

-- Insert Single Row
-- Error as First Name is restricted to "NOT NULL"
INSERT INTO sakila.Actor_trial (last_name)
VALUES ('Kumar');
-- Check Data
SELECT *
FROM Actor_trial;

-- Insert Single Row
INSERT INTO sakila.Actor_trial (first_name,last_name,last_update)
VALUES ('Amir',NULL,DEFAULT);
-- Check Data
SELECT *
FROM Actor_trial;


-- --------------------------------------
-- Insert Multiple Values
-- --------------------------------------
INSERT INTO sakila.Actor_trial (first_name,last_name,last_update)
VALUES 	('Kamal','Kumar','2007-02-12'),
		('Rhul','Roy','2015-12-31'),
		('Rajat','Kapoor','2011-11-21');
-- Check Data
SELECT *
FROM Actor_trial;

-- Subquery

INSERT INTO sakila.Actor_trial (first_name,last_name,last_update)
SELECT first_name,last_name,last_update
FROM actor
WHERE first_name = 'Nick';
-- Check Data
SELECT *
FROM Actor_trial;

-- Clean up
-- DROP TABLE Actor_trial;


