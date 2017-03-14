 USE rockStarDay2;

SHOW COLUMNS FROM band;

SELECT * FROM band;

SELECT ID, name, genre FROM band;

SELECT ID, name, genre
FROM band
WHERE isTogether= '1';

SELECT * FROM individual WHERE lastName= 'Jennings';

SELECT ID, lastName From individual WHERE deceasedDate is NOT NULL;

SELECT ID, lastname, birthDate FROM individual WHERE Year(birthDate) > 1940;

# Translating requirements into SQL Statements

SELECT 	name, genre, isTogether FROM band WHERE  genre = 'alternative' AND isTogether = 0;

SELECT id, name FROM band WHERE id = 4;

# SQL Wildcards

SELECT * FROM band WHERE name LIKE 	'The%';
SELECT * FROM band WHERE name LIKE '%Stones';
SELECT * FROM individual WHERE firstName LIKE '__ck';

SELECT * FROM band WHERE name LIKE '% and %';

SELECT * FROM individual WHERE firstName LIKE '___';

SELECT * FROM band WHERE name LIKE '%s';
