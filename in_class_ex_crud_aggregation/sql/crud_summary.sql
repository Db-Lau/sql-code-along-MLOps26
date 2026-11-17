CREATE SCHEMA IF NOT EXISTS database

CREATE TABLE IF NOT EXISTS database.sql (
	id INTEGER DEFAULT 1,
	word STRING,
	description STRING);

INSERT
	INTO
	database.sql
	(word,
	description)
VALUES 
	('CRUD', 'create, read, update, delete - basic actions to be performed on data'),
	('range condition', 'filter data within a specific range of values');

DROP TABLE;

CREATE SEQUENCE IF NOT EXISTS id_sql_sequence START 1;

CREATE TABLE IF NOT EXISTS database.sql (
	id INTEGER DEFAULT nextval('id_sql_sequence'),
	word STRING,
	description STRING);

INSERT
	INTO
	database.sql
	(word,
	description)
VALUES 
	('CRUD', 'create, read, update, delete - basic actions to be performed on data'),
	('range condition', 'filter data within a specific range of values');

ALTER TABLE database.duckdb 
ADD COLUMN learnt BOOLEAN DEFAULT FALSE;

UPDATE database.duckdb 
SET learnt = TRUE 
WHERE id = 2;

SELECT * FROM database.database.sql WHERE id = 2;

DELETE
FROM
	database.database.sql
WHERE
	id = 2;