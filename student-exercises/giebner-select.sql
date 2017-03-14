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

SELECT * FROM individual WHERE ID IN (1, 3, 5, 7, 19);