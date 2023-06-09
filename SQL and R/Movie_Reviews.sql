
CREATE TABLE Movie (
    id int NOT NULL,
    name VARCHAR(100)  NOT NULL,
    year varchar(4) NOT NULL,
    genre varchar(100) NOT NULL,
    duration varchar(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Person(
    id int NOT NULL,
	name VARCHAR(100)  NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Review (
	id int NOT NULL,
    movie_id int NOT NULL,
    person_id int NOT NULL,
    rating int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (movie_id) REFERENCES movie (id),
    FOREIGN KEY (person_id) REFERENCES person (id)
);



INSERT INTO Movie (id,name,year,genre,duration)
VALUES 
(1,"Shrek", 2001, "Comedy", "90 minutes"), 
(2,"Anger Management", 2003, "Comedy", "106 minutes"),
(3,"Wedding Crashers", 2005, "Comedy", "119 minutes"),
(4,"Fast & Furious", 2009, "Action", "107 minutes"),
(5,"The Incredibles", 2004, "Action", "115 minutes"),
(6,"Pirates of the Caribbean: The Curse of the Black Pearl (2003)", 2003, "Action", "143 minutes"),
(7,"Blood Diamond", 2006, "Drama", "143 minutes"),
(8,"The Pianist", 2002, "Drama", "150 minutes");


INSERT INTO Person (id,name)
VALUES 
(1,"Mike"), 
(2,"Kayla"),
(3,"Harvey"),
(4,"Samantha"),
(5,"Justin"),
(6,"Alex"),
(7,"Marina"),
(8,"Oscar");



INSERT INTO Review (id,movie_id,person_id,rating)
VALUES 
(1,1,1,4), 
(2,1,2,3),
(3,1,3,2),
(4,1,4,5),
(5,1,5,1),
(6,1,6,3),
(7,1,7,2),
(8,1,8,4),
(9,2,1,3), 
(10,2,2,4),
(11,2,3,5),
(12,2,4,2),
(13,2,5,4),
(14,2,6,3),
(15,2,7,5),
(16,2,8,3),
(17,3,1,5), 
(18,3,2,3),
(19,3,3,2),
(20,3,4,4),
(21,3,5,4),
(22,3,6,2),
(23,3,7,5),
(24,3,8,3),
(25,4,1,4), 
(26,4,2,3),
(27,4,3,1),
(28,4,4,5),
(29,4,5,4),
(30,4,6,2),
(31,4,7,4),
(32,4,8,3),
(33,5,1,3), 
(34,5,2,4),
(35,5,3,1),
(36,5,4,2),
(37,5,5,3),
(38,5,6,5),
(39,5,7,4),
(40,5,8,3),
(41,6,1,5), 
(42,6,2,4),
(43,6,3,3),
(44,6,4,1),
(45,6,5,3),
(46,6,6,4),
(47,6,7,4),
(48,6,8,3),
(49,7,1,4), 
(50,7,2,5),
(51,7,3,4),
(52,7,4,3),
(53,7,5,5),
(54,7,6,3),
(55,7,7,3),
(56,7,8,2),
(57,8,1,4), 
(58,8,2,5),
(59,8,3,5),
(60,8,4,4),
(61,8,5,3),
(62,8,6,4),
(63,8,7,4),
(64,8,8,5);