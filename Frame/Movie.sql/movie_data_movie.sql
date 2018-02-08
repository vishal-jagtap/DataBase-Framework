-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: movie_data
-- ------------------------------------------------------
-- Server version	5.7.7-rc-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `name` varchar(100) DEFAULT NULL,
  `year` int(20) DEFAULT NULL,
  `rating` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES ('The Shawshank Redemption',1994,9.2),('The Godfather',1972,9.2),('The Godfather: Part II',1974,9),('The Dark Knight',2008,9),('12 Angry Men',1957,8.9),('Schindler\'s List',1993,8.9),('Pulp Fiction',1994,8.9),('The Lord of the Rings: The Return of the King',2003,8.9),('The Good, the Bad and the Ugly',1966,8.8),('Fight Club',1999,8.8),('The Lord of the Rings: The Fellowship of the Ring',2001,8.8),('Forrest Gump',1994,8.7),('Star Wars: Episode V - The Empire Strikes Back',1980,8.7),('Inception',2010,8.7),('The Lord of the Rings: The Two Towers',2002,8.7),('One Flew Over the Cuckoo\'s Nest',1975,8.7),('Goodfellas',1990,8.7),('The Matrix',1999,8.7),('Seven Samurai',1954,8.6),('Star Wars: Episode IV - A New Hope',1977,8.6),('City of God',2002,8.6),('Se7en',1995,8.6),('The Silence of the Lambs',1991,8.6),('It\'s a Wonderful Life',1946,8.6),('Life Is Beautiful',1997,8.6),('The Usual Suspects',1995,8.6),('Léon: The Professional',1994,8.5),('Saving Private Ryan',1998,8.5),('Spirited Away',2001,8.5),('Interstellar',2014,8.5),('American History X',1998,8.5),('The Green Mile',1999,8.5),('Once Upon a Time in the West',1968,8.5),('Psycho',1960,8.5),('City Lights',1931,8.5),('Casablanca',1942,8.5),('The Intouchables',2011,8.5),('Modern Times',1936,8.5),('The Pianist',2002,8.5),('The Departed',2006,8.5),('Raiders of the Lost Ark',1981,8.5),('Terminator 2',1991,8.5),('Rear Window',1954,8.5),('Back to the Future',1985,8.5),('Whiplash',2014,8.5),('Coco',2017,8.5),('Gladiator',2000,8.5),('The Lion King',1994,8.5),('The Prestige',2006,8.5),('Memento',2000,8.5),('Apocalypse Now',1979,8.4),('Alien',1979,8.4),('The Great Dictator',1940,8.4),('Cinema Paradiso',1988,8.4),('Sunset Boulevard',1950,8.4),('Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb',1964,8.4),('Grave of the Fireflies',1988,8.4),('The Lives of Others',2006,8.4),('Paths of Glory',1957,8.4),('Django Unchained',2012,8.4),('The Shining',1980,8.4),('WALL·E',2008,8.4),('American Beauty',1999,8.4),('Princess Mononoke',1997,8.4),('The Dark Knight Rises',2012,8.4),('Witness for the Prosecution',1957,8.4),('Oldboy',2003,8.4),('Aliens',1986,8.4),('Once Upon a Time in America',1984,8.4),('Das Boot',1981,8.3),('Citizen Kane',1941,8.3),('Vertigo',1958,8.3),('North by Northwest',1959,8.3),('Dangal',2016,8.3),('Braveheart',1995,8.3),('Star Wars: Episode VI - Return of the Jedi',1983,8.3),('Reservoir Dogs',1992,8.3),('M',1931,8.3),('Your Name',2016,8.3),('Requiem for a Dream',2000,8.3),('Taare Zameen Par',2007,8.3),('Amélie',2001,8.3),('A Clockwork Orange',1971,8.3),('Amadeus',1984,8.3),('Lawrence of Arabia',1962,8.3),('Double Indemnity',1944,8.3),('Eternal Sunshine of the Spotless Mind',2004,8.3),('Taxi Driver',1976,8.3),('To Kill a Mockingbird',1962,8.3),('Singin\' in the Rain',1952,8.3),('2001: A Space Odyssey',1968,8.3),('Full Metal Jacket',1987,8.3),('3 Idiots',2009,8.3),('Toy Story',1995,8.3),('The Sting',1973,8.3),('Bicycle Thieves',1948,8.3),('Inglourious Basterds',2009,8.3),('Toy Story 3',2010,8.3),('The Kid',1921,8.3),('Snatch',2000,8.3),('The Hunt',2012,8.3),('Good Will Hunting',1997,8.3),('Monty Python and the Holy Grail',1975,8.3),('For a Few Dollars More',1965,8.3),('Scarface',1983,8.3),('L.A. Confidential',1997,8.3),('The Apartment',1960,8.2),('Metropolis',1927,8.2),('A Separation',2011,8.2),('Three Billboards Outside Ebbing, Missouri',2017,8.2),('Rashomon',1950,8.2),('Indiana Jones and the Last Crusade',1989,8.2),('Yojimbo',1961,8.2),('All About Eve',1950,8.2),('Up',2009,8.2),('Batman Begins',2005,8.2),('My Father and My Son',2005,8.2),('Some Like It Hot',1959,8.2),('The Treasure of the Sierra Madre',1948,8.2),('Unforgiven',1992,8.2),('Downfall',2004,8.2),('Die Hard',1988,8.2),('Heat',1995,8.2),('Raging Bull',1980,8.2),('Ikiru',1952,8.2),('The Great Escape',1963,8.2),('The Third Man',1949,8.2),('Children of Heaven',1997,8.2),('Chinatown',1974,8.2),('Pan\'s Labyrinth',2006,8.2),('Incendies',2010,8.2),('My Neighbor Totoro',1988,8.2),('Ran',1985,8.2),('Judgment at Nuremberg',1961,8.2),('The Secret in Their Eyes',2009,8.2),('The Gold Rush',1925,8.2),('Howl\'s Moving Castle',2004,8.2),('Blade Runner 2049',2017,8.2),('The Bridge on the River Kwai',1957,8.2),('On the Waterfront',1954,8.2),('Inside Out',2015,8.2),('The Seventh Seal',1957,8.2),('Lock, Stock and Two Smoking Barrels',1998,8.2),('Room',2015,8.2),('A Beautiful Mind',2001,8.2),('Mr. Smith Goes to Washington',1939,8.2),('Casino',1995,8.2),('The Elephant Man',1980,8.1),('Blade Runner',1982,8.1),('The Wolf of Wall Street',2013,8.1),('V for Vendetta',2005,8.1),('Wild Strawberries',1957,8.1),('The General',1926,8.1),('Warrior',2011,8.1),('Dial M for Murder',1954,8.1),('Trainspotting',1996,8.1),('Gone with the Wind',1939,8.1),('Gran Torino',2008,8.1),('The Sixth Sense',1999,8.1),('The Deer Hunter',1978,8.1),('Fargo',1996,8.1),('No Country for Old Men',2007,8.1),('The Thing',1982,8.1),('Sunrise',1927,8.1),('Finding Nemo',2003,8.1),('There Will Be Blood',2007,8.1),('The Big Lebowski',1998,8.1),('Andrei Rublev',1966,8.1),('Come and See',1985,8.1),('Tokyo Story',1953,8.1),('The Bandit',1996,8.1),('Cool Hand Luke',1967,8.1),('Rebecca',1940,8.1),('Kill Bill: Vol. 1',2003,8.1),('Hacksaw Ridge',2016,8.1),('How to Train Your Dragon',2010,8.1),('Shutter Island',2010,8.1),('Mary and Max',2009,8.1),('Gone Girl',2014,8.1),('Call Me by Your Name',2017,8.1),('Rang De Basanti',2006,8.1),('Into the Wild',2007,8.1),('The Passion of Joan of Arc',1928,8.1),('Life of Brian',1979,8.1),('It Happened One Night',1934,8.1),('Wild Tales',2014,8.1),('Platoon',1986,8.1),('In the Name of the Father',1993,8.1),('Hotel Rwanda',2004,8.1),('The Wages of Fear',1953,8.1),('Network',1976,8.1),('Stand by Me',1986,8.1),('Rush',2013,8.1),('The Grand Budapest Hotel',2014,8.1),('Ben-Hur',1959,8.1),('Persona',1966,8.1),('Stalker',1979,8.1),('Jurassic Park',1993,8.1),('Logan',2017,8.1),('Memories of Murder',2003,8.1),('12 Years a Slave',2013,8.1),('The 400 Blows',1959,8.1),('La La Land',2016,8.1),('Million Dollar Baby',2004,8.1),('Spotlight',2015,8.1),('Mad Max: Fury Road',2015,8.1),('The Truman Show',1998,8.1),('A Wednesday',2008,8.1),('Amores Perros',2000,8.1),('Butch Cassidy and the Sundance Kid',1969,8.1),('Before Sunrise',1995,8.1),('Hachi: A Dog\'s Tale',2009,8.1),('Nausicaä of the Valley of the Wind',1984,8.1),('The Princess Bride',1987,8.1),('Prisoners',2013,8),('The Maltese Falcon',1941,8),('The Nights of Cabiria',1957,8),('Harry Potter and the Deathly Hallows: Part 2',2011,8),('Catch Me If You Can',2002,8),('Rocky',1976,8),('Paper Moon',1973,8),('The Grapes of Wrath',1940,8),('Diabolique',1955,8),('Monsters, Inc.',2001,8),('Donnie Darko',2001,8),('Barry Lyndon',1975,8),('Gandhi',1982,8),('Touch of Evil',1958,8),('Dunkirk',2017,8),('The Terminator',1984,8),('Groundhog Day',1993,8),('The Wizard of Oz',1939,8),('La Haine',1995,8),('Annie Hall',1977,8),('The Bourne Ultimatum',2007,8),('8½',1963,8),('Jaws',1975,8),('Dead Poets Society',1989,8),('The Legend of 1900',1998,8),('In the Mood for Love',2000,8),('The Best Years of Our Lives',1946,8),('The Help',2011,8),('Infernal Affairs',2002,8),('Twelve Monkeys',1995,8),('Paris, Texas',1984,8),('The Handmaiden',2016,8),('Beauty and the Beast',1991,8),('Pirates of the Caribbean: The Curse of the Black Pearl',2003,8),('Castle in the Sky',1986,8),('Dog Day Afternoon',1975,8);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-08  9:30:29
