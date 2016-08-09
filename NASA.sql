/* I created this database using MySQL 5.7 in the command line. 
 *
 * You can import and execute this entire .sql file into MySQL by doing the following:
 * In the mysql command line, type the word 'source ' and then put the path to this file.
 *  
 * Example:
 * mysql> source C:\Users\Bill\Projects\SpaceRaceSQL\NASA.sql;
 *
 * If this does not work, you can always copy the statements and paste them individually.
 */

CREATE DATABASE NASA;
USE NASA;

CREATE TABLE Astronaut (
	Astronaut_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	First_Name varchar(32) NOT NULL,
	Middle_Name varchar(32),
	Last_Name varchar(32) NOT NULL,
	Nickname varchar(32)
);
	
CREATE TABLE Mission (
	Mission_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Mission_Name varchar(32) NOT NULL,
	Launch DATETIME,
	Splashdown DATETIME
);
 
CREATE TABLE MissionAstronaut (
	MiisionAstronaut_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Mission_ID INT NOT NULL,
	Astronaut_ID INT NOT NULL,
	FOREIGN KEY (Mission_ID) REFERENCES Mission(Mission_ID),
	FOREIGN KEY (Astronaut_ID) REFERENCES Astronaut(Astronaut_ID)
);

/* This section populates the Astronauts Table with Data */
INSERT INTO astronaut (First_Name, Middle_Name, Last_Name, Nickname) VALUES
/* Group 1 - 'The Mercury Seven' */
('Malcolm', 'Scott', 'Carpenter', null),
('Leroy', 'Gordon', 'Cooper', 'Gordo'), 
('John', 'Herschel', 'Glenn', null),
('Virgil', 'Ivan', 'Grissom', 'Gus'),
('Walter', 'Marty', 'Schirra', 'Wally'),
('Alan', 'Bartlett', 'Shepard', null),
('Donald', 'Kent', 'Slayton', 'Deke'),
/* Group 2 - 'The Next Nine' */
('Neil', 'Alden', 'Armstrong', null),
('Frank', 'Frederick', 'Borman', null),
('Charles', null, 'Conrad', 'Pete'),
('James', 'Arthur', 'Lovell', 'Jim'),
('James', 'Alton', 'McDivitt', 'Jim'),
('Elliot', 'McKay', 'See', null),
('Thomas', 'Patten', 'Stafford', 'Tom'),
('Edward', 'Higgins', 'White', 'Ed'),
('John', 'Watts', 'Young', null),
/* Group 3 - 'The Original Fourteen' */
('Edwin', 'Eugene', 'Aldrin', 'Buzz'),
('William', 'Alison', 'Anders', 'Bill'),
('Charles', 'Arthur', 'Bassett', 'Charlie'),
('Alan', 'LaVern', 'Bean', null),
('Eugene', 'Andrew', 'Cernan', 'Gene'),
('Roger', 'Bruce', 'Chaffee', null),
('Michael', null, 'Collins', null),
('Ronnie', 'Walter', 'Cunningham', 'Walt'),
('Donn', 'Fulton', 'Eisele', null),
('Theodore', 'Cordy', 'Freeman', 'Ted'),
('Richard', 'Francis', 'Gordon', 'Dick'),
('Russell', 'Louis', 'Schweickart', 'Rusty'),
('David', 'Randolph', 'Scott', 'Dave'),
('Clifton', 'Curtis', 'Williams', 'C.C.'),
/* Group 4 - 'The Scientists' */
('Owen', 'Kay', 'Garriott', null),
('Edward', 'George', 'Gibson', null),
('Duane', 'Edgar', 'Graveline', null),
('Joseph', 'Peter', 'Kerwin', null),
('Frank', 'Curtis', 'Michel', 'Curt'),
('Harrison', 'Hagan', 'Schmitt', 'Jack'),
/* Group 5 - 'The Original Nineteen' */
('Vance', 'DeVoe', 'Brand', null),
('John', 'Sumter', 'Bull', null),
('Gerald', 'Paul', 'Carr', 'Jerry'),
('Charles', 'Moss', 'Duke', 'Charlie'),
('Joe', 'Henry', 'Engle', null),
('Ronald', 'Ellwin', 'Evans', 'Ron'),
('Edward', 'Galen', 'Givens', 'Ed'),
('Fred', 'Wallace', 'Haise', 'Freddo'),
('James', 'Benson', 'Irwin', 'Jim'),
('Don', 'Leslie', 'Lind', null),
('Jack', 'Robert', 'Lousma', null),
('Thomas', 'Kenneth', 'Mattingly', 'Ken'),
('Bruce', null, 'McCandless', null),
('Edgar', 'Dean', 'Mitchell', 'Ed'),
('William', 'Reid', 'Pogue', 'Bill'),
('Stuart', 'Allen', 'Roosa', 'Stu'),
('John', 'Leonard', 'Swigert', 'Jack'),
('Paul', 'Joseph', 'Weitz', null),
('Alfred', 'Merrill', 'Worden', 'Al');


/*This section populates the Mission table */
INSERT INTO Mission (Mission_Name, Launch, Splashdown) VALUES
('Mercury-Redstone 3', '1961-05-05 14:34:13', '1961-05-05 14:49:35'), 
('Mercury-Redstone 4', '1961-07-21 12:20:36', '1961-07-21 12:36:13'),
('Mercury-Atlas 6', '1962-02-20 14:47:39', '1962-02-20 19:43:02'),
('Mercury-Atlas 7', '1962-05-24 12:45:16', '1962-05-24 17:41:21'),
('Mercury-Atlas 8', '1962-08-03 12:15:12', '1962-08-03 21:28:22'),
('Mercury-Atlas 9', '1963-05-15 13:04:13', '1963-05-16 23:24:02'),
('Gemini 3', '1965-03-23 14:24:00', '1965-03-23 19:16:31'),
('Gemini 4', '1965-06-03 15:15:59', '1965-06-07 17:12:11'),
('Gemini 5', '1965-08-21 13:59:59', '1965-08-29 12:55:13'),
('Gemini 7', '1965-12-04 19:30:03', '1965-12-18 14:05:04'),
('Gemini 6A', '1965-12-15 13:37:26', '1965-12-16 15:28:50'),
('Gemini 8', '1966-03-16 16:41:02', '1966-03-17 03:22:28'),
('Gemini 9A', '1966-06-03 13:39:33', '1966-06-06 14:00:23'),
('Gemini 10', '1966-07-18 22:20:26', '1966-07-21 21:07:05'),
('Gemini 11', '1966-09-12 14:42:26', '1966-09-15 13:59:35'),
('Gemini 12', '1966-11-11 20:46:33', '1966-11-15 19:21:04'),
('Apollo 1', null, null),
('Apollo 7', '1968-10-11 15:02:45', '1968-10-22 11:11:48'),
('Apollo 8', '1968-12-21 12:51:00', '1968-12-27 15:51:42'),
('Apollo 9', '1969-03-03 16:00:00', '1969-03-13 17:00:54'),
('Apollo 10', '1969-05-18 16:49:00', '1969-05-26 16:52:23'),
('Apollo 11', '1969-07-16 13:32:00', '1969-07-24 16:50:35'),
('Apollo 12', '1969-11-14 16:22:00', '1969-11-24 20:58:24'),
('Apollo 13', '1970-04-11 19:13:00', '1970-04-17 18:07:41'),
('Apollo 14', '1971-01-31 21:03:02', '1971-02-09 21:05:00'),
('Apollo 15', '1971-07-26 13:34:00', '1971-08-07 20:45:53'),
('Apollo 16', '1972-04-16 17:54:00', '1972-04-27 19:45:05'),
('Apollo 17', '1972-12-07 05:33:00', '1972-12-19 19:24:59'),
('Apollo-Soyuz Test Project', '1975-07-15 19:50:00', '1975-07-24 21:18:00'),
('Skylab 1', '1973-05-25 13:00:00', '1973-06-22 13:49:48'),
('Skylab 2', '1973-07-28 11:10:50', '1973-09-25 22:19:51'),
('Skylab 3', '1973-11-16 14:01:23', '1973-02-28 15:16:53');

/* This section populates the MissionAstronaut table. */
/* It associates the Mission (by its ID) with which crew members flew on it (by thier Astronaut ID) */
INSERT INTO MissionAstronaut (Mission_ID, Astronaut_ID) VALUES
/* Mercury Program */
/* Mercury-Redstone 3 */
(1, 6),
/* Mercury-Redstone 4 */
(2, 4),
/* Mercury-Atlas 6 */
(3, 3),
/* Mercury-Atlas 7 */
(4, 1),
/* Mercury-Atlas 8 */
(5, 5),
/* Mercury-Atlas 9 */
(6, 2),
/* Gemini Program */
/* Gemini 3 */
(7, 4),
(7, 16),
/* Gemini 4 */
(8, 12),
(8, 15),
/* Gemini 5 */
(9, 2),
(9, 10),
/* Gemini 7 */
(10, 9),
(10, 11),
/* Gemini 6A */
(11, 5),
(11, 14),
/* Gemini 8 */
(12, 8),
(12, 29),
/* Gemini 9A */
(13, 14),
(13, 21), 
/* Gemini 10 */
(14, 16),
(14, 23),
/* Gemini 11 */
(15, 10),
(15, 27),
/* Gemini 12 */
(16, 11),
(16, 17),
/* Apollo Program */
/* Apollo 1 */
(17, 4),
(17, 15),
(17, 22),
/* Apollo 7 */
(18, 5),
(18, 25),
(18, 24),
/* Apollo 8 */
(19, 9),
(19, 11),
(19, 18),
/* Apollo 9 */
(20, 12),
(20, 29),
(20, 28),
/* Apollo 10 */
(21, 14),
(21, 16),
(21, 21),
/* Apollo 11 */
(22, 8),
(22, 17),
(22, 23),
/* Apollo 12 */
(23, 10),
(23, 27),
(23, 20),
/* Apollo 13 */
(24, 11),
(24, 53),
(24, 44),
/* Apollo 14 */
(25, 6),
(25, 52),
(25, 50),
/* Apollo 15 */
(26, 29),
(26, 55),
(26, 45),
/* Apollo 16 */
(27, 16),
(27, 48),
(27, 40),
/* Apollo 17 */
(28, 21),
(28, 42),
(28, 36),
/* Apollo Soyuz */
(29, 14),
(29, 37),
(29, 7),
/* Skylab Space Station Program */
/* Skylab 1 */
(30, 10),
(30, 34),
(30, 54),
/* Skylab 2 */
(31, 20),
(31, 31),
(31, 47),
/* Skylab 3 */
(31, 39),
(31, 32),
(31, 51);

