/* These sample queries will help you understand SQL SELECTS and JOINS */

--SELECT STATEMENTS ONLY
/* Show all the missions, and show all the mission information */
SELECT * FROM Mission;

/* Show all the missions, but only show mission's name */
SELECT Mission_Name FROM Mission;

/* Show all the Project Mercury missions with flight details */
SELECT * FROM Mission
WHERE Mission_Name LIKE 'Mercury%';

/* Only show Project Mercury mission names */
SELECT Mission_Name FROM Mission
WHERE Mission_Name LIKE 'Mercury%';

/* Show all astronauts */
SELECT * FROM Astronaut;

/* Show only astronauts with Nicknames */
SELECT * FROM Astronaut
WHERE Nickname IS NOT NULL;

/* Select only astronauts with nicknames, then show them as Nickname, Lastname */
SELECT Nickname, Last_Name FROM Astronaut
WHERE Nickname IS NOT NULL;

/* Select only astronauts who flew in space */
SELECT First_Name, Last_Name FROM Astronaut
WHERE Astronaut_ID IN 
(
	SELECT Astronaut_ID FROM MissionAstronaut
);

/* Astronauts who did not fly in space */
SELECT First_Name, Last_Name FROM Astronaut
WHERE Astronaut_ID NOT IN 
(
	SELECT Astronaut_ID FROM MissionAstronaut
);

--JOINS
/* Prints All Missions with the Astronauts that flew on them */ 
SELECT Mission.Mission_Name, Astronaut.First_Name, Astronaut.Last_Name FROM MissionAstronaut
LEFT JOIN Astronaut
	ON MissionAstronaut.Astronaut_ID = Astronaut.Astronaut_ID
LEFT Join Mission
	ON MissionAstronaut.Mission_ID = Mission.Mission_ID;
	
/* Select all Astronauts who flew on a specific mission by its Mission_ID */
SELECT Mission.Mission_Name, Astronaut.First_Name, Astronaut.Last_Name FROM MissionAstronaut
INNER JOIN Astronaut
	ON MissionAstronaut.Astronaut_ID = Astronaut.Astronaut_ID
INNER JOIN Mission
	ON MissionAstronaut.Mission_ID = Mission.Mission_ID
	AND Mission.Mission_ID = 22; /* 22 was Apollo 11 */