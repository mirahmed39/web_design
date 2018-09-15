-- MySQL dump 10.14  Distrib 5.5.56-MariaDB, for Linux (x86_64)
--
-- Host: warehouse    Database: ma3599_db1
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `actor_name` varchar(256) NOT NULL,
  `actor_gender` varchar(50) DEFAULT NULL,
  `actor_country` varchar(256) DEFAULT NULL,
  `actor_year_born` int(4) DEFAULT NULL,
  `actor_year_died` int(4) DEFAULT NULL,
  PRIMARY KEY (`actor_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES ('Benedict Cumberbatch','Male','England',1976,NULL),('Chadwick Boseman','Male','USA',1977,NULL),('Chris Evans','Male','USA',1981,NULL),('Christoph Waltz','Male','German',1956,NULL),('Christopher Hemsworth','Male','Australia',1983,NULL),('Dwayne Johnson','Male','USA',1972,NULL),('Emma Stone','Female','USA',1988,NULL),('Emma Watson','Female','England',1990,NULL),('Franka Potente','Female','German',1974,NULL),('Guillaume Canet','Male','France',1973,NULL),('Hugh Jackman','Male','Australia',1968,NULL),('Juliette Binoche','Female','France',1964,NULL),('Kate Winslet','Female','England',1975,NULL),('Leonardo Dicaprio','Male','USA',1974,NULL),('Leslie Caron','Female','France',1931,NULL),('Lindsay Lohan','Female','USA',1986,NULL),('Margot Robbie','Female','Australia',1990,NULL),('Marilyn Monroe','Female','USA',1926,1962),('Matt Damon','Male','USA',1970,NULL),('Michael Fassbender','Male','German',1977,NULL),('Morgan Freeman','Male','USA',1937,NULL),('Natalie Portman','Female','Israel',1981,NULL),('Paul Walker','Male','USA',1973,2013),('Philip Seymour','Male','USA',1967,2014),('Robert Downey Jr.','Male','USA',1965,NULL),('Scarlet Johanson','Female','USA',1984,NULL),('Tom Cruise','Male','USA',1962,NULL),('Tom Hanks','Male','USA',1956,NULL),('Vin Diesel','Male','USA',1967,NULL),('Will Smith','Male','USA',1968,NULL);
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director` (
  `director_name` varchar(256) NOT NULL,
  `director_gender` varchar(50) DEFAULT NULL,
  `director_country` varchar(256) DEFAULT NULL,
  `director_year_born` int(4) DEFAULT NULL,
  `director_year_died` int(4) DEFAULT NULL,
  PRIMARY KEY (`director_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES ('Alex Garland','Male','England',1970,NULL),('Anurag Kashyap','Male','India',1972,NULL),('Bill Condon','Male','USA',1955,NULL),('Charles Walters','Male','USA',1911,1982),('Christophe Barratier','Male','France',1963,NULL),('Christopher McQuarrie','Male','USA',1968,NULL),('Claire Denis','Female','France',1946,NULL),('Damien Chazelle','Male','USA',1985,NULL),('David Ayer','Male','USA',1968,NULL),('Doug Liman','Male','USA',1965,NULL),('F. Gary Grey','Male','USA',1969,NULL),('Fatih Akin','Male','Germany',1973,NULL),('Jake Kasdan','Male','USA',1974,NULL),('James Cameron','Male','Canada',1954,NULL),('Joshua Logan','Male','USA',1908,1988),('Joss Whedon','Male','USA',1964,NULL),('Martin Socrsese','Male','USA',1942,NULL),('Michael Gracey','Male','Australia',1976,NULL),('Morten Tyldum','Male','Norway',1967,NULL),('Patty Jenkins','Female','USA',1971,NULL),('Paul Schrader','Male','USA',1946,NULL),('Ridley Scott','Male','England',1937,NULL),('Robert Zemeckis','Male','USA',1952,NULL),('Ryan Coogler','Male','USA',1986,NULL),('Sam Mendes','Male','England',1965,NULL),('Spike Lee','Male','USA',1957,NULL),('Steve McQueen','Male','USA',1930,1980),('Steven Spielberg','Male','USA',1946,NULL),('Tom Tykwer','Male','Germany',1965,NULL),('Werner Herzog','Male','Germany',1942,NULL),('Yavuz Turgul','Male','Turkey',1946,NULL);
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `movie_name` varchar(256) NOT NULL,
  `movie_release_year` int(4) DEFAULT '0',
  `movie_country_origin` varchar(50) DEFAULT NULL,
  `movie_director` varchar(256) DEFAULT NULL,
  `movie_original_language` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`movie_name`),
  KEY `movie_director` (`movie_director`),
  CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`movie_director`) REFERENCES `director` (`director_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES ('Annihilation',2018,'USA','ALex Garland','English'),('Beauty and the Beast',2017,'USA','Bill Condon','English'),('Black Panther',2018,'USA','Ryan Coogler','English'),('Bus Stop',1956,'USA','Joshua Logan','English'),('Forest Gump',1994,'USA','Robert Zemeckis','English'),('Jumanji: Welcome to the Jungle',2017,'USA','Jake Kasdan','English'),('La La Land',2016,'USA','Damien Chazelle','English'),('Let the Sunshine In',2017,'France','Claire Denis','French'),('Lili',1953,'France','Charles Walters','French'),('Mission Impossible - Rogue Nation',2015,'USA','Christopher McQuarrie','English'),('Run Lola Run',1999,'Germany','Tom Tykwer','German'),('Shame',2011,'England','Steve McQueen','English'),('Spectre',2015,'England','Sam Mendes','English'),('Suicide Squad',2016,'USA','David Ayer','English'),('The Avengers',2012,'USA','Joss Whedon','English'),('The Bourne Identity',2002,'USA','Doug Liman','English'),('The Canyons',2013,'USA','Paul Schrader','English'),('The Fate of the Furious',2017,'USA','F. Gary Grey','English'),('The Greatest Showman',2017,'USA','Michael Gracey','English'),('The Imitation Game',2014,'USA','Morten Tyldum','English'),('The Martian',2015,'USA','Ridley Scott','English'),('The Wolf of Wall Street',2013,'USA','Martin Socrsese','English'),('Titanic',1997,'USA','James Cameron','English'),('War of the Buttons',2012,'France','Christophe Barratier','French');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_cast`
--

DROP TABLE IF EXISTS `movie_cast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_cast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(256) DEFAULT NULL,
  `actor_name` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_name` (`movie_name`),
  KEY `actor_name` (`actor_name`),
  CONSTRAINT `movie_cast_ibfk_1` FOREIGN KEY (`movie_name`) REFERENCES `movie` (`movie_name`),
  CONSTRAINT `movie_cast_ibfk_2` FOREIGN KEY (`actor_name`) REFERENCES `actor` (`actor_name`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_cast`
--

LOCK TABLES `movie_cast` WRITE;
/*!40000 ALTER TABLE `movie_cast` DISABLE KEYS */;
INSERT INTO `movie_cast` VALUES (1,'Black Panther','Chadwick Boseman'),(2,'Suicide Squad','Margot Robbie'),(3,'Suicide Squad','Will Smith'),(4,'The Wolf of Wall Street','Leonardo Dicaprio'),(5,'The Wolf of Wall Street','Margot Robbie'),(6,'Mission Impossible - Rogue Nation','Tom Cruise'),(7,'The Avengers','Dwayne Johnson'),(8,'The Avengers','Robert Downey Jr.'),(9,'The Avengers','Christopher Hemsworth'),(10,'The Avengers','Scarlet Johanson'),(11,'The Avengers','Chris Evans'),(12,'The Imitation Game','Benedict Cumberbatch'),(13,'Beauty and the Beast','Emma Watson'),(14,'The Martian','Matt Damon'),(15,'The Canyons','Lindsay Lohan'),(16,'Titanic','Leonardo Dicaprio'),(17,'Titanic','Kate Winslet'),(18,'Jumanji: Welcome to the Jungle','Dwayne Johnson'),(19,'The Greatest Showman','Hugh Jackman'),(20,'La La Land','Emma Stone'),(21,'Annihilation','Natalie Portman'),(22,'Forest Gump','Tom Hanks'),(23,'War of the Buttons','Guillaume Canet'),(24,'Let the Sunshine In','Juliette Binoche'),(25,'Lili','Leslie Caron'),(26,'Shame','Michael Fassbender'),(27,'The Bourne Identity','Matt Damon'),(28,'The Bourne Identity','Franka Potente'),(29,'Run Lola Run','Franka Potente'),(30,'Spectre','Christoph Waltz'),(31,'The Fate of the Furious','Vin Diesel'),(32,'The Fate of the Furious','Paul Walker'),(33,'Bus Stop','Marilyn Monroe');
/*!40000 ALTER TABLE `movie_cast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_category`
--

DROP TABLE IF EXISTS `movie_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(256) DEFAULT NULL,
  `movie_category` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_name` (`movie_name`),
  CONSTRAINT `movie_category_ibfk_1` FOREIGN KEY (`movie_name`) REFERENCES `movie` (`movie_name`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_category`
--

LOCK TABLES `movie_category` WRITE;
/*!40000 ALTER TABLE `movie_category` DISABLE KEYS */;
INSERT INTO `movie_category` VALUES (1,'Black Panther','Action'),(2,'Black Panther','Adventure'),(3,'Black Panther','Sci-Fi'),(4,'Suicide Squad','Action'),(5,'Suicide Squad','Adventure'),(6,'Suicide Squad','Fantasy'),(7,'The Wolf of Wall Street','Biography'),(8,'The Wolf of Wall Street','Comedy'),(9,'The Wolf of Wall Street','Crime'),(10,'Mission Impossible - Rogue Nation','Adventure'),(11,'Mission Impossible - Rogue Nation','Action'),(12,'Mission Impossible - Rogue Nation','Thriller'),(13,'The Avengers','Sci-Fi'),(14,'The Avengers','Adventure'),(15,'The Avengers','Action'),(16,'The Imitation Game','Biography'),(17,'The Imitation Game','Drama'),(18,'The Imitation Game','History'),(19,'Beauty and the Beast','Family'),(20,'Beauty and the Beast','Fantasy'),(21,'Beauty and the Beast','Musical'),(22,'The Martian','Adventure'),(23,'The Martian','Drama'),(24,'The Martian','Sci-Fi'),(25,'The Canyons','Drama'),(26,'The Canyons','Thriller'),(27,'Titanic','Drama'),(28,'Titanic','Romance'),(29,'Jumanji: Welcome to the Jungle','Adventure'),(30,'Jumanji: Welcome to the Jungle','Action'),(31,'Jumanji: Welcome to the Jungle','Comedy'),(32,'The Greatest Showman','Biography'),(33,'The Greatest Showman','Drama'),(34,'The Greatest Showman','Musical'),(35,'La La Land','Comedy'),(36,'La La Land','Drama'),(37,'La La Land','Music'),(38,'Annihilation','Drama'),(39,'Annihilation','Adventure'),(40,'Annihilation','Fantasy'),(41,'Forest Gump','Drama'),(42,'Forest Gump','Romance'),(43,'War of the Buttons','Adventure'),(44,'War of the Buttons','Family'),(45,'Let the Sunshine In','Drama'),(46,'Let the Sunshine In','Comedy'),(47,'Let the Sunshine In','Romance'),(48,'Lili','Drama'),(49,'Lili','Musical'),(50,'Lili','Romance'),(51,'Shame','Drama'),(52,'The Bourne Identity','Thriller'),(53,'The Bourne Identity','Action'),(54,'The Bourne Identity','Mystery'),(55,'Run Lola Run','Crime'),(56,'Run Lola Run','Drama'),(57,'Run Lola Run','Thriller'),(58,'Spectre','Action'),(59,'Spectre','Adventure'),(60,'Spectre','Thriller'),(61,'The Fate of the Furious','Action'),(62,'The Fate of the Furious','Crime'),(63,'The Fate of the Furious','Thriller'),(64,'Bus Stop','Comedy'),(65,'Bus Stop','Drama'),(66,'Bus Stop','Romance');
/*!40000 ALTER TABLE `movie_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-18 22:37:15
