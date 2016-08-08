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
/* Shows all mission names with the Astronauts that flew on them */ 
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
	
--TRY USING THE WRONG JOIN
--Run this query and see how using LEFT JOINs changes the result set. 
SELECT Mission.Mission_Name, Astronaut.First_Name, Astronaut.Last_Name FROM MissionAstronaut
LEFT JOIN Astronaut
	ON MissionAstronaut.Astronaut_ID = Astronaut.Astronaut_ID
LEFT JOIN Mission
	ON MissionAstronaut.Mission_ID = Mission.Mission_ID
	AND Mission.Mission_ID = 22;
--Using INNER JOIN means you don't get all those Astronaut names joined with null mission values.
	
--TRY USING THE WRONG JOIN PT II
--Run this query and see how using RIGHT JOINs changes the result set. 
SELECT Mission.Mission_Name, Astronaut.First_Name, Astronaut.Last_Name FROM MissionAstronaut
RIGHT JOIN Astronaut
	ON MissionAstronaut.Astronaut_ID = Astronaut.Astronaut_ID
RIGHT JOIN Mission
	ON MissionAstronaut.Mission_ID = Mission.Mission_ID
	AND Mission.Mission_ID = 22;	
--Using INNER JOIN means you don't get null values for all astronaut names in missions that aren't Apollo 11.	


/* All Astronauts who flew on Gemini 7 */
SELECT Mission.Mission_Name, Astronaut.First_Name, Astronaut.Last_Name FROM MissionAstronaut
INNER JOIN Astronaut
	ON MissionAstronaut.Astronaut_ID = Astronaut.Astronaut_ID
INNER JOIN Mission
	ON MissionAstronaut.Mission_ID = Mission.Mission_ID
	AND Mission.Mission_Name = 'Gemini 7';

/* All Astronauts who flew on missions that had '8' in their Mission Name */
SELECT Mission.Mission_Name, Astronaut.First_Name, Astronaut.Last_Name FROM MissionAstronaut
INNER JOIN Astronaut
	ON MissionAstronaut.Astronaut_ID = Astronaut.Astronaut_ID
INNER JOIN Mission
	ON MissionAstronaut.Mission_ID = Mission.Mission_ID
	AND Mission.Mission_Name LIKE '%8%';
	

	