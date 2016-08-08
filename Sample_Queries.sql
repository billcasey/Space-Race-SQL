/* These sample queries will help you understand SQL SELECTS and JOINS */

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