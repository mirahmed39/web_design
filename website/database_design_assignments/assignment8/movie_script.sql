SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS director;
DROP TABLE IF EXISTS actor;	
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS movie_cast;
DROP TABLE IF EXISTS movie_category;
SET FOREIGN_KEY_CHECKS = 1;
-- ------------------------------------
-- creating the director table
-- ------------------------------------
CREATE TABLE director (
  director_name VARCHAR(256) NOT NULL,
  director_gender VARCHAR(50) NULL DEFAULT NULL,
  director_country VARCHAR(256) NULL DEFAULT NULL,
  director_year_born INT(4) NULL DEFAULT NULL,
  director_year_died INT(4) NULL DEFAULT NULL,
  PRIMARY KEY (director_name)
)
TYPE = INNODB;

INSERT INTO director VALUES ("Ryan Coogler", "Male", "USA", 1986, NULL);
INSERT INTO director VALUES ("David Ayer", "Male", "USA", 1968, NULL);
INSERT INTO director VALUES ("Martin Socrsese", "Male", "USA", 1942, NULL);
INSERT INTO director VALUES ("Christopher McQuarrie", "Male", "USA", 1968, NULL);
INSERT INTO director VALUES ("Joss Whedon", "Male", "USA", 1964, NULL);
INSERT INTO director VALUES ("Morten Tyldum", "Male", "Norway", 1967, NULL);
INSERT INTO director VALUES ("Bill Condon", "Male", "USA", 1955, NULL);
INSERT INTO director VALUES ("Ridley Scott", "Male", "England", 1937, NULL);
INSERT INTO director VALUES ("Paul Schrader", "Male", "USA", 1946, NULL);
INSERT INTO director VALUES ("James Cameron", "Male", "Canada", 1954, NULL);
INSERT INTO director VALUES ("Jake Kasdan", "Male", "USA", 1974, NULL);
INSERT INTO director VALUES ("Michael Gracey", "Male", "Australia", 1976, NULL);
INSERT INTO director VALUES ("Damien Chazelle", "Male", "USA", 1985, NULL);
INSERT INTO director VALUES ("Alex Garland", "Male", "England", 1970, NULL);
INSERT INTO director VALUES ("Robert Zemeckis", "Male", "USA", 1952, NULL);
INSERT INTO director VALUES ("Christophe Barratier", "Male", "France", 1963, NULL);
INSERT INTO director VALUES ("Claire Denis", "Female", "France", 1946, NULL);
INSERT INTO director VALUES ("Doug Liman", "Male", "USA", 1965, NULL);
INSERT INTO director VALUES ("Charles Walters", "Male", "USA", 1911, 1982);
INSERT INTO director VALUES ("Steve McQueen", "Male", "USA", 1930, 1980);
INSERT INTO director VALUES ("Tom Tykwer", "Male", "Germany", 1965, NULL);
INSERT INTO director VALUES ("Sam Mendes", "Male", "England", 1965, NULL);
INSERT INTO director VALUES ("F. Gary Grey", "Male", "USA", 1969, NULL);
INSERT INTO director VALUES ("Steven Spielberg", "Male", "USA", 1946, NULL);
INSERT INTO director VALUES ("Werner Herzog", "Male", "Germany", 1942, NULL);
INSERT INTO director VALUES ("Fatih Akin", "Male", "Germany", 1973, NULL);
INSERT INTO director VALUES ("Anurag Kashyap", "Male", "India", 1972, NULL);
INSERT INTO director VALUES ("Yavuz Turgul", "Male", "Turkey", 1946, NULL);
INSERT INTO director VALUES ("Spike Lee", "Male", "USA", 1957, NULL);
INSERT INTO director VALUES ("Patty Jenkins", "Female", "USA", 1971, NULL);
INSERT INTO director VALUES ("Joshua Logan", "Male", "USA", 1908, 1988);
-- ------------------------------------
-- creating the actor table
-- ------------------------------------
CREATE TABLE actor (
  actor_name VARCHAR(256) NOT NULL,
  actor_gender VARCHAR(50) NULL DEFAULT NULL,
  actor_country VARCHAR(256) NULL DEFAULT NULL,
  actor_year_born INT(4) NULL DEFAULT NULL,
  actor_year_died INT(4) NULL DEFAULT NULL,
  PRIMARY KEY (actor_name)
)
TYPE = INNODB;

INSERT INTO actor VALUES ("Leonardo Dicaprio","Male", "USA", 1974, NULL);
INSERT INTO actor VALUES ("Lindsay Lohan","Female", "USA", 1986, NULL);
INSERT INTO actor VALUES ("Dwayne Johnson","Male", "USA", 1972, NULL);
INSERT INTO actor VALUES ("Will Smith","Male", "USA", 1968, NULL);
INSERT INTO actor VALUES ("Hugh Jackman","Male", "Australia", 1968, NULL);
INSERT INTO actor VALUES ("Kate Winslet","Female", "England", 1975, NULL);
INSERT INTO actor VALUES ("Emma Stone","Female", "USA", 1988, NULL);
INSERT INTO actor VALUES ("Emma Watson","Female", "England", 1990, NULL);
INSERT INTO actor VALUES ("Scarlet Johanson","Female", "USA", 1984, NULL);
INSERT INTO actor VALUES ("Natalie Portman","Female", "Israel", 1981, NULL);
INSERT INTO actor VALUES ("Christopher Hemsworth","Male", "Australia", 1983, NULL);
INSERT INTO actor VALUES ("Matt Damon","Male", "USA", 1970, NULL);
INSERT INTO actor VALUES ("Tom Hanks","Male", "USA", 1956, NULL);
INSERT INTO actor VALUES ("Tom Cruise","Male", "USA", 1962, NULL);
INSERT INTO actor VALUES ("Guillaume Canet","Male", "France", 1973, NULL);
INSERT INTO actor VALUES ("Juliette Binoche","Female", "France", 1964, NULL);
INSERT INTO actor VALUES ("Leslie Caron","Female", "France", 1931, NULL);
INSERT INTO actor VALUES ("Michael Fassbender","Male", "German", 1977, NULL);
INSERT INTO actor VALUES ("Christoph Waltz","Male", "German", 1956, NULL);
INSERT INTO actor VALUES ("Franka Potente","Female", "German", 1974, NULL);
INSERT INTO actor VALUES ("Robert Downey Jr.","Male", "USA", 1965, NULL);
INSERT INTO actor VALUES ("Chadwick Boseman","Male", "USA", 1977, NULL);
INSERT INTO actor VALUES ("Chris Evans","Male", "USA", 1981, NULL);
INSERT INTO actor VALUES ("Benedict Cumberbatch","Male", "England", 1976, NULL);
INSERT INTO actor VALUES ("Morgan Freeman","Male", "USA", 1937, NULL);
INSERT INTO actor VALUES ("Paul Walker","Male", "USA", 1973, 2013);
INSERT INTO actor VALUES ("Vin Diesel","Male", "USA", 1967, NULL);
INSERT INTO actor VALUES ("Marilyn Monroe","Female", "USA", 1926, 1962);
INSERT INTO actor VALUES ("Philip Seymour","Male", "USA", 1967, 2014);
INSERT INTO actor VALUES ("Margot Robbie","Female", "Australia", 1990, NULL);

-- ------------------------------------
-- creating movie table
-- ------------------------------------
CREATE TABLE movie(
  movie_name VARCHAR(256) NOT NULL,
  movie_release_year INT(4) NULL DEFAULT 0,
  movie_country_origin VARCHAR(50) NULL DEFAULT NULL,
  movie_director VARCHAR(256) NULL DEFAULT NULL,
  movie_original_language VARCHAR(256) NULL DEFAULT NULL,
  PRIMARY KEY (movie_name),
  CONSTRAINT 
    FOREIGN KEY (movie_director) REFERENCES director (director_name)
)
TYPE = INNODB;


INSERT INTO movie VALUES ("Black Panther", 2018, "USA", "Ryan Coogler", "English");
INSERT INTO movie VALUES ("Suicide Squad", 2016, "USA", "David Ayer", "English");
INSERT INTO movie VALUES ("The Wolf of Wall Street", 2013, "USA", "Martin Socrsese", "English");
INSERT INTO movie VALUES ("Mission Impossible - Rogue Nation", 2015, "USA", "Christopher McQuarrie", "English");
INSERT INTO movie VALUES ("The Avengers", 2012, "USA", "Joss Whedon", "English");
INSERT INTO movie VALUES ("The Imitation Game", 2014, "USA", "Morten Tyldum", "English");
INSERT INTO movie VALUES ("Beauty and the Beast", 2017, "USA", "Bill Condon", "English");
INSERT INTO movie VALUES ("The Martian", 2015, "USA", "Ridley Scott", "English");
INSERT INTO movie VALUES ("The Canyons", 2013, "USA", "Paul Schrader", "English");
INSERT INTO movie VALUES ("Titanic", 1997, "USA", "James Cameron", "English");
INSERT INTO movie VALUES ("Jumanji: Welcome to the Jungle", 2017, "USA", "Jake Kasdan", "English");
INSERT INTO movie VALUES ("The Greatest Showman", 2017, "USA", "Michael Gracey", "English");
INSERT INTO movie VALUES ("La La Land", 2016, "USA", "Damien Chazelle", "English");
INSERT INTO movie VALUES ("Annihilation", 2018, "USA", "ALex Garland", "English");
INSERT INTO movie VALUES ("Forest Gump", 1994, "USA", "Robert Zemeckis", "English");
INSERT INTO movie VALUES ("War of the Buttons", 2012,  "France", "Christophe Barratier", "French");
INSERT INTO movie VALUES ("Let the Sunshine In", 2017, "France", "Claire Denis", "French");
INSERT INTO movie VALUES ("Lili", 1953, "France", "Charles Walters", "French");
INSERT INTO movie VALUES ("Shame", 2011, "England", "Steve McQueen", "English");
INSERT INTO movie VALUES ("The Bourne Identity", 2002, "USA", "Doug Liman", "English");
INSERT INTO movie VALUES ("Run Lola Run", 1999, "Germany", "Tom Tykwer", "German");
INSERT INTO movie VALUES ("Spectre", 2015, "England", "Sam Mendes", "English");
INSERT INTO movie VALUES ("The Fate of the Furious", 2017, "USA", "F. Gary Grey", "English");
INSERT INTO movie VALUES ("Bus Stop", 1956, "USA", "Joshua Logan", "English");

-- ------------------------------------
-- creating the movie_cast table
-- ------------------------------------
CREATE TABLE movie_cast (
  id INT NOT NULL AUTO_INCREMENT,
  movie_name VARCHAR(256) NULL DEFAULT NULL,
  actor_name VARCHAR(256) NULL DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT
	FOREIGN KEY (movie_name) REFERENCES movie(movie_name),
  CONSTRAINT
	FOREIGN KEY (actor_name) REFERENCES actor(actor_name)
)
TYPE = INNODB;


INSERT INTO movie_cast VALUES (NULL, "Black Panther", "Chadwick Boseman");
INSERT INTO movie_cast VALUES (NULL, "Suicide Squad", "Margot Robbie");
INSERT INTO movie_cast VALUES (NULL, "Suicide Squad", "Will Smith");
INSERT INTO movie_cast VALUES (NULL, "The Wolf of Wall Street", "Leonardo Dicaprio");
INSERT INTO movie_cast VALUES (NULL, "The Wolf of Wall Street", "Margot Robbie");
INSERT INTO movie_cast VALUES (NULL, "Mission Impossible - Rogue Nation", "Tom Cruise");
INSERT INTO movie_cast VALUES (NULL, "The Avengers", "Dwayne Johnson");
INSERT INTO movie_cast VALUES (NULL, "The Avengers", "Robert Downey Jr.");
INSERT INTO movie_cast VALUES (NULL, "The Avengers", "Christopher Hemsworth");

INSERT INTO movie_cast VALUES (NULL, "The Avengers", "Scarlet Johanson");
INSERT INTO movie_cast VALUES (NULL, "The Avengers", "Chris Evans");
INSERT INTO movie_cast VALUES (NULL, "The Imitation Game", "Benedict Cumberbatch");
INSERT INTO movie_cast VALUES (NULL, "Beauty and the Beast", "Emma Watson");
INSERT INTO movie_cast VALUES (NULL, "The Martian", "Matt Damon");
INSERT INTO movie_cast VALUES (NULL, "The Canyons", "Lindsay Lohan");
INSERT INTO movie_cast VALUES (NULL, "Titanic", "Leonardo Dicaprio");
INSERT INTO movie_cast VALUES (NULL, "Titanic", "Kate Winslet");
INSERT INTO movie_cast VALUES (NULL, "Jumanji: Welcome to the Jungle", "Dwayne Johnson");

INSERT INTO movie_cast VALUES (NULL, "The Greatest Showman", "Hugh Jackman");
INSERT INTO movie_cast VALUES (NULL, "La La Land", "Emma Stone");
INSERT INTO movie_cast VALUES (NULL, "Annihilation", "Natalie Portman");
INSERT INTO movie_cast VALUES (NULL, "Forest Gump", "Tom Hanks");
INSERT INTO movie_cast VALUES (NULL, "War of the Buttons", "Guillaume Canet");
INSERT INTO movie_cast VALUES (NULL, "Let the Sunshine In", "Juliette Binoche");
INSERT INTO movie_cast VALUES (NULL, "Lili", "Leslie Caron");
INSERT INTO movie_cast VALUES (NULL, "Shame", "Michael Fassbender");
INSERT INTO movie_cast VALUES (NULL, "The Bourne Identity", "Matt Damon");

INSERT INTO movie_cast VALUES (NULL, "The Bourne Identity", "Franka Potente");
INSERT INTO movie_cast VALUES (NULL, "Run Lola Run", "Franka Potente");
INSERT INTO movie_cast VALUES (NULL, "Spectre", "Christoph Waltz");
INSERT INTO movie_cast VALUES (NULL, "The Fate of the Furious", "Vin Diesel");
INSERT INTO movie_cast VALUES (NULL, "The Fate of the Furious", "Paul Walker");
INSERT INTO movie_cast VALUES (NULL, "Bus Stop", "Marilyn Monroe");

	

-- ------------------------------------
-- creating the movie_category table
-- ------------------------------------
CREATE TABLE movie_category (
  id INT NOT NULL AUTO_INCREMENT,
  movie_name VARCHAR(256) NULL DEFAULT NULL,
  movie_category VARCHAR(256) NULL DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT
	FOREIGN KEY (movie_name) REFERENCES movie(movie_name)
)
TYPE = INNODB;


INSERT INTO movie_category VALUES (NULL, "Black Panther", "Action");
INSERT INTO movie_category VALUES (NULL, "Black Panther", "Adventure");
INSERT INTO movie_category VALUES (NULL, "Black Panther", "Sci-Fi");
INSERT INTO movie_category VALUES (NULL, "Suicide Squad", "Action");
INSERT INTO movie_category VALUES (NULL, "Suicide Squad", "Adventure");
INSERT INTO movie_category VALUES (NULL, "Suicide Squad", "Fantasy");
INSERT INTO movie_category VALUES (NULL, "The Wolf of Wall Street", "Biography");
INSERT INTO movie_category VALUES (NULL, "The Wolf of Wall Street", "Comedy");
INSERT INTO movie_category VALUES (NULL, "The Wolf of Wall Street", "Crime");
INSERT INTO movie_category VALUES (NULL, "Mission Impossible - Rogue Nation", "Adventure");
INSERT INTO movie_category VALUES (NULL, "Mission Impossible - Rogue Nation", "Action");
INSERT INTO movie_category VALUES (NULL, "Mission Impossible - Rogue Nation", "Thriller");
INSERT INTO movie_category VALUES (NULL, "The Avengers", "Sci-Fi");
INSERT INTO movie_category VALUES (NULL, "The Avengers", "Adventure");
INSERT INTO movie_category VALUES (NULL, "The Avengers", "Action");
INSERT INTO movie_category VALUES (NULL, "The Imitation Game", "Biography");
INSERT INTO movie_category VALUES (NULL, "The Imitation Game", "Drama");
INSERT INTO movie_category VALUES (NULL, "The Imitation Game", "History");
INSERT INTO movie_category VALUES (NULL, "Beauty and the Beast", "Family");
INSERT INTO movie_category VALUES (NULL, "Beauty and the Beast", "Fantasy");
INSERT INTO movie_category VALUES (NULL, "Beauty and the Beast", "Musical");
INSERT INTO movie_category VALUES (NULL, "The Martian", "Adventure");
INSERT INTO movie_category VALUES (NULL, "The Martian", "Drama");
INSERT INTO movie_category VALUES (NULL, "The Martian", "Sci-Fi");
INSERT INTO movie_category VALUES (NULL, "The Canyons", "Drama");
INSERT INTO movie_category VALUES (NULL, "The Canyons", "Thriller");
INSERT INTO movie_category VALUES (NULL, "Titanic", "Drama");
INSERT INTO movie_category VALUES (NULL, "Titanic", "Romance");
INSERT INTO movie_category VALUES (NULL, "Jumanji: Welcome to the Jungle", "Adventure");
INSERT INTO movie_category VALUES (NULL, "Jumanji: Welcome to the Jungle", "Action");
INSERT INTO movie_category VALUES (NULL, "Jumanji: Welcome to the Jungle", "Comedy");
INSERT INTO movie_category VALUES (NULL, "The Greatest Showman", "Biography");
INSERT INTO movie_category VALUES (NULL, "The Greatest Showman", "Drama");
INSERT INTO movie_category VALUES (NULL, "The Greatest Showman", "Musical");
INSERT INTO movie_category VALUES (NULL, "La La Land", "Comedy");
INSERT INTO movie_category VALUES (NULL, "La La Land", "Drama");
INSERT INTO movie_category VALUES (NULL, "La La Land", "Music");
INSERT INTO movie_category VALUES (NULL, "Annihilation", "Drama");
INSERT INTO movie_category VALUES (NULL, "Annihilation", "Adventure");
INSERT INTO movie_category VALUES (NULL, "Annihilation", "Fantasy");
INSERT INTO movie_category VALUES (NULL, "Forest Gump", "Drama");
INSERT INTO movie_category VALUES (NULL, "Forest Gump", "Romance");
INSERT INTO movie_category VALUES (NULL, "War of the Buttons", "Adventure");
INSERT INTO movie_category VALUES (NULL, "War of the Buttons", "Family");
INSERT INTO movie_category VALUES (NULL, "Let the Sunshine In", "Drama");
INSERT INTO movie_category VALUES (NULL, "Let the Sunshine In", "Comedy");
INSERT INTO movie_category VALUES (NULL, "Let the Sunshine In", "Romance");
INSERT INTO movie_category VALUES (NULL, "Lili", "Drama");
INSERT INTO movie_category VALUES (NULL, "Lili", "Musical");
INSERT INTO movie_category VALUES (NULL, "Lili", "Romance");
INSERT INTO movie_category VALUES (NULL, "Shame", "Drama");
INSERT INTO movie_category VALUES (NULL, "The Bourne Identity", "Thriller");
INSERT INTO movie_category VALUES (NULL, "The Bourne Identity", "Action");
INSERT INTO movie_category VALUES (NULL, "The Bourne Identity", "Mystery");
INSERT INTO movie_category VALUES (NULL, "Run Lola Run", "Crime");
INSERT INTO movie_category VALUES (NULL, "Run Lola Run", "Drama");
INSERT INTO movie_category VALUES (NULL, "Run Lola Run", "Thriller");
INSERT INTO movie_category VALUES (NULL, "Spectre", "Action");
INSERT INTO movie_category VALUES (NULL, "Spectre", "Adventure");
INSERT INTO movie_category VALUES (NULL, "Spectre", "Thriller");
INSERT INTO movie_category VALUES (NULL, "The Fate of the Furious", "Action");
INSERT INTO movie_category VALUES (NULL, "The Fate of the Furious", "Crime");
INSERT INTO movie_category VALUES (NULL, "The Fate of the Furious", "Thriller");
INSERT INTO movie_category VALUES (NULL, "Bus Stop", "Comedy");
INSERT INTO movie_category VALUES (NULL, "Bus Stop", "Drama");
INSERT INTO movie_category VALUES (NULL, "Bus Stop", "Romance");

-- ------------------------------------
-- creating the movie_links  table
-- ------------------------------------
CREATE TABLE movie_link(
  id INT NOT NULL AUTO_INCREMENT,
  movie_name VARCHAR(256) NULL DEFAULT NULL,
  movie_url VARCHAR(800) NULL DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT
	FOREIGN KEY (movie_name) REFERENCES movie(movie_name)
)
TYPE = INNODB;

INSERT INTO movie_link VALUES (NULL, 'Annihilation', 'https://www.imdb.com/title/tt2798920');
INSERT INTO movie_link VALUES (NULL, 'Beauty and the Beast', 'https://www.imdb.com/title/tt2771200/?ref_=nv_sr_1');
INSERT INTO movie_link VALUES (NULL, 'Lili', 'https://www.imdb.com/title/tt0046000/');
INSERT INTO movie_link VALUES (NULL, 'War of the Buttons', 'https://www.imdb.com/title/tt1837587/');
INSERT INTO movie_link VALUES (NULL, 'Mission Impossible - Rogue Nation', 'https://www.imdb.com/title/tt2381249/?ref_=nv_sr_2');
INSERT INTO movie_link VALUES (NULL, 'Let the Sunshine In', 'https://www.imdb.com/title/tt6423776/?ref_=nv_sr_1');
INSERT INTO movie_link VALUES (NULL, 'La La Land', 'https://www.imdb.com/title/tt3783958/?ref_=nv_sr_1');
INSERT INTO movie_link VALUES (NULL, 'Suicide Squad', 'https://www.imdb.com/title/tt1386697/?ref_=nv_sr_1');
INSERT INTO movie_link VALUES (NULL, 'The Bourne Identity', 'https://www.imdb.com/title/tt0258463/?ref_=nv_sr_2');
INSERT INTO movie_link VALUES (NULL, 'The Fate of the Furious', 'https://www.imdb.com/title/tt4630562/?ref_=nv_sr_1');
INSERT INTO movie_link VALUES (NULL, 'Jumanji: Welcome to the Jungle', 'https://www.imdb.com/title/tt2283362/?ref_=nv_sr_1');
INSERT INTO movie_link VALUES (NULL, 'Titanic', 'https://www.imdb.com/title/tt0120338/?ref_=nv_sr_1');
INSERT INTO movie_link VALUES (NULL, 'Bus Stop', 'https://www.imdb.com/title/tt0049038/?ref_=nv_sr_1');
INSERT INTO movie_link VALUES (NULL, 'The Avengers', 'https://www.imdb.com/title/tt0848228/?ref_=nv_sr_1');
INSERT INTO movie_link VALUES (NULL, 'The Wolf of Wall Street', 'https://www.imdb.com/title/tt0993846/?ref_=nv_sr_1');
INSERT INTO movie_link VALUES (NULL, 'The Greatest Showman', 'https://www.imdb.com/title/tt1485796/?ref_=nv_sr_1');
INSERT INTO movie_link VALUES (NULL, 'The Imitation Game', 'https://www.imdb.com/title/tt2084970/?ref_=nv_sr_1');
INSERT INTO movie_link VALUES (NULL, 'The Canyons', 'https://www.imdb.com/title/tt2292959/?ref_=nv_sr_1');
INSERT INTO movie_link VALUES (NULL, 'The Martian', 'https://www.imdb.com/title/tt3659388/?ref_=fn_al_tt_1');
INSERT INTO movie_link VALUES (NULL, 'Forest Gump', 'https://www.imdb.com/title/tt0109830/?ref_=nv_sr_2');
INSERT INTO movie_link VALUES (NULL, 'Black Panther', 'https://www.imdb.com/title/tt1825683/?ref_=nv_sr_1');
INSERT INTO movie_link VALUES (NULL, 'Spectre', 'https://www.imdb.com/title/tt2379713/?ref_=nv_sr_1');
INSERT INTO movie_link VALUES (NULL, 'Shame', 'https://www.imdb.com/title/tt1723811/?ref_=nv_sr_2');
INSERT INTO movie_link VALUES (NULL, 'Run Lola Run', 'https://www.imdb.com/title/tt0130827/?ref_=nv_sr_1');
