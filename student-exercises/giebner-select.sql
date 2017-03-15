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

SELECT * FROM band WHERE name LIKE '%[irv]%';

# baseball

USE baseball;

SELECT * FROM player;
SELECT * FROM team;
SELECT * FROM batting;
SELECT * FROM roster;

SELECT team.teamName
, batting.teamID
, batting.rank
, batting.battingAvg
  FROM team
  INNER JOIN batting on batting.teamID = team.ID;
  
  SELECT player.firstName, player.lastName, batting.battingAvg FROM batting
    INNER JOIN player ON batting.playerID = player.ID
    WHERE batting.battingAVG > 299;
    
    SELECT player.lastName
    , player.firstName
    , player.birthplaceCountry
    , team.teamName
    FROM player
      INNER JOIN roster ON roster.playerID = player.ID
      INNER JOIN team ON roster.teamID = team.ID
      WHERE team.teamName = 'Boston Red Sox';
    
SELECT * FROM vteamRoster;    

DESCRIBE vteamRoster;

SHOW CREATE VIEW vteamRoster;

# More fun with Joins
USE baseball;

SELECT player.*, batting.* FROM player
  LEFT JOIN batting ON batting.playerID = player.ID;
  
SELECT team.*, roster.* FROM roster
    RIGHT JOIN team ON roster.teamID = team.ID;
    
SELECT roster.* FROM roster
  INNER JOIN player ON roster.playerID = player.ID
  LEFT JOIN team ON roster.teamID = team.ID;
  
  SELECT DISTINCT team.* FROM team
    INNER JOIN roster ON roster.teamID = team.ID
    LEFT JOIN player ON roster.playerID = player.ID;
    alter
    
# query 1
SELECT v.* FROM vteamRoster as v
INNER JOIN batting ON v.playerID = batting.playerID;    
    
# query 2
SELECT divisionName, AVG(v.weight) FROM vteamRoster as v
INNER JOIN batting ON v.playerID = batting.playerID
GROUP BY divisionName;  
 
 # query 3 
 SELECT v.* FROM vteamRoster as v;
 
# query 4
    SELECT v.position, COUNT(v.position) FROM vteamRoster as v
    GROUP BY v.position;
    