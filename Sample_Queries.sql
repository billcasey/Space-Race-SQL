/* These sample queries will help you understand SQL SELECTS and JOINS */

/* Show all the missions, and show all the mission information */
SELECT * FROM Mission;

/* Show all the missions, but only show mission's name */
SELECT Mission_Name FROM Mission;

/* Print all the project mercury missions with flight details */
SELECT * FROM Mission
WHERE Mission_Name LIKE 'Mercury%';

/* Print all the project mercury mission names only */
SELECT Mission_Name FROM Mission
WHERE Mission_Name LIKE 'Mercury%';