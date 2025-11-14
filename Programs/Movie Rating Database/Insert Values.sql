-- Insert values on movies table
INSERT INTO movies (movie_id, title, genre, release_year, language) VALUES
(1, 'The Shawshank Redemption', 'Drama', 1994, 'English'),
(2, 'The Godfather', 'Crime', 1972, 'English'),
(3, 'The Dark Knight', 'Action', 2008, 'English'),
(4, 'Pulp Fiction', 'Crime', 1994, 'English'),
(5, 'Forrest Gump', 'Drama', 1994, 'English'),
(6, 'Inception', 'Sci-Fi', 2010, 'English'),
(7, 'The Matrix', 'Sci-Fi', 1999, 'English'),
(8, 'Interstellar', 'Sci-Fi', 2014, 'English'),
(9, 'Parasite', 'Thriller', 2019, 'Korean'),
(10, 'Spirited Away', 'Animation', 2001, 'Japanese'),
(11, '3 Idiots', 'Comedy', 2009, 'Hindi'),
(12, 'Dangal', 'Biography', 2016, 'Hindi'),
(13, 'Baahubali 2: The Conclusion', 'Action', 2017, 'Telugu'),
(14, 'RRR', 'Action', 2022, 'Telugu'),
(15, 'Lagaan', 'Drama', 2001, 'Hindi'),
(16, 'Dilwale Dulhania Le Jayenge', 'Romance', 1995, 'Hindi'),
(17, 'Sholay', 'Action', 1975, 'Hindi'),
(18, 'Gangs of Wasseypur', 'Crime', 2012, 'Hindi'),
(19, 'PK', 'Comedy', 2014, 'Hindi'),
(20, 'Taare Zameen Par', 'Drama', 2007, 'Hindi'),
(21, 'The Avengers', 'Action', 2012, 'English'),
(22, 'Avengers: Endgame', 'Action', 2019, 'English'),
(23, 'Titanic', 'Romance', 1997, 'English'),
(24, 'Jurassic Park', 'Adventure', 1993, 'English'),
(25, 'The Lion King', 'Animation', 1994, 'English'),
(26, 'Harry Potter and the Philosopher''s Stone', 'Fantasy', 2001, 'English'),
(27, 'Gladiator', 'Action', 2000, 'English'),
(28, 'Saving Private Ryan', 'War', 1998, 'English'),
(29, 'Schindler''s List', 'Biography', 1993, 'English'),
(30, 'The Departed', 'Crime', 2006, 'English'),
(31, 'Joker', 'Drama', 2019, 'English'),
(32, 'Oppenheimer', 'Biography', 2023, 'English'),
(33, 'Dune: Part Two', 'Sci-Fi', 2024, 'English'),
(34, 'K.G.F: Chapter 2', 'Action', 2022, 'Kannada'),
(35, 'Pushpa: The Rise', 'Action', 2021, 'Telugu'),
(36, 'Pathaan', 'Action', 2023, 'Hindi'),
(37, 'Jawan', 'Action', 2023, 'Hindi'),
(38, 'Animal', 'Action', 2023, 'Hindi'),
(39, 'Drishyam', 'Thriller', 2015, 'Malayalam'),
(40, 'Premam', 'Romance', 2015, 'Malayalam'),
(41, 'Bangalore Days', 'Comedy', 2014, 'Malayalam'),
(42, 'Manjummel Boys', 'Thriller', 2024, 'Malayalam'),
(43, 'Aadujeevitham', 'Drama', 2024, 'Malayalam'),
(44, 'Lucia', 'Thriller', 2013, 'Kannada'),
(45, 'Kantara', 'Action', 2022, 'Kannada'),
(46, 'Vikram', 'Action', 2022, 'Tamil'),
(47, 'Kaithi', 'Action', 2019, 'Tamil'),
(48, 'Master', 'Action', 2021, 'Tamil'),
(49, 'Soorarai Pottru', 'Drama', 2020, 'Tamil'),
(50, 'Jai Bhim', 'Drama', 2021, 'Tamil');

-- Insert values on users table
INSERT INTO users (user_id, name, age, country) VALUES
(101, 'Aarav Sharma', 28, 'India'),
(102, 'Priya Patel', 34, 'India'),
(103, 'Rahul Mehta', 22, 'India'),
(104, 'Sneha Reddy', 29, 'India'),
(105, 'Vikram Singh', 41, 'India'),
(106, 'Ananya Kapoor', 26, 'India'),
(107, 'Rohan Desai', 33, 'India'),
(108, 'Ishaan Gupta', 19, 'India'),
(109, 'Diya Joshi', 31, 'India'),
(110, 'Arjun Malhotra', 45, 'India'),
(111, 'Neha Verma', 27, 'India'),
(112, 'Karan Bhatia', 38, 'India'),
(113, 'Sofia Ahmed', 30, 'Pakistan'),
(114, 'Liam Chen', 25, 'China'),
(115, 'Emma Johnson', 29, 'USA'),
(116, 'Noah Williams', 35, 'USA'),
(117, 'Olivia Brown', 23, 'USA'),
(118, 'James Lee', 40, 'South Korea'),
(119, 'Mia Garcia', 32, 'Mexico'),
(120, 'Lucas Müller', 28, 'Germany'),
(121, 'Aisha Khan', 26, 'Pakistan'),
(122, 'Zara Ali', 31, 'UAE'),
(123, 'Yuki Tanaka', 29, 'Japan'),
(124, 'Hiroshi Sato', 44, 'Japan'),
(125, 'Amir Hossein', 33, 'Iran'),
(126, 'Fatima Zahra', 27, 'Morocco'),
(127, 'Diego Silva', 30, 'Brazil'),
(128, 'Isabella Costa', 24, 'Brazil'),
(129, 'Mateo López', 36, 'Argentina'),
(130, 'Sofia Rodríguez', 28, 'Spain'),
(131, 'Alexander Ivanov', 39, 'Russia'),
(132, 'Elena Petrova', 25, 'Russia'),
(133, 'Michael O''Connor', 42, 'Ireland'),
(134, 'Sophie Martin', 31, 'France'),
(135, 'Léa Dubois', 27, 'France'),
(136, 'Rajesh Kumar', 35, 'India'),
(137, 'Pooja Nair', 29, 'India'),
(138, 'Siddharth Iyer', 26, 'India'),
(139, 'Meera Menon', 33, 'India'),
(140, 'Aditya Rao', 30, 'India'),
(141, 'Kavya Shetty', 24, 'India'),
(142, 'Nikhil Bose', 37, 'India'),
(143, 'Tanya Gill', 28, 'India'),
(144, 'Ravi Chopra', 45, 'India'),
(145, 'Anjali Thakur', 31, 'India'),
(146, 'Wei Zhang', 29, 'China'),
(147, 'Ji-hoon Park', 34, 'South Korea'),
(148, 'Amina Rahman', 26, 'Bangladesh'),
(149, 'Carlos Mendoza', 38, 'Mexico'),
(150, 'Lila Andersson', 27, 'Sweden');

-- Insert values on ratings table
INSERT INTO ratings (rating_id, user_id, movie_id, rating, rating_date) VALUES
(201, 101, 1, 4.8, '2020-05-15'),
(202, 102, 1, 5.0, '2019-11-22'),
(203, 103, 2, 4.9, '2021-03-10'),
(204, 104, 3, 4.7, '2018-07-30'),
(205, 105, 4, 4.5, '2022-01-18'),
(206, 106, 5, 4.6, '2020-09-05'),
(207, 107, 6, 4.9, '2015-02-27'),
(208, 108, 7, 4.8, '2000-06-12'),
(209, 109, 8, 4.7, '2016-11-03'),
(210, 110, 9, 5.0, '2020-02-20'),
(211, 111, 10, 4.9, '2003-08-14'),
(212, 112, 11, 4.8, '2010-12-25'),
(213, 113, 12, 4.9, '2017-05-19'),
(214, 114, 13, 4.7, '2018-04-11'),
(215, 115, 14, 4.8, '2023-03-30'),
(216, 116, 15, 4.6, '2002-07-07'),
(217, 117, 16, 4.5, '1996-10-20'),
(218, 118, 17, 4.9, '1976-09-01'),
(219, 119, 18, 4.8, '2013-06-15'),
(220, 120, 19, 4.7, '2015-01-02'),
(221, 121, 20, 5.0, '2008-04-22'),
(222, 122, 21, 4.6, '2013-05-10'),
(223, 123, 22, 4.9, '2020-06-05'),
(224, 124, 23, 4.8, '1998-03-14'),
(225, 125, 24, 4.7, '1994-08-20'),
(226, 126, 25, 4.9, '1995-07-01'),
(227, 127, 26, 4.6, '2002-11-30'),
(228, 128, 27, 4.8, '2001-05-18'),
(229, 129, 28, 4.7, '1999-09-25'),
(230, 130, 29, 5.0, '1994-12-10'),
(231, 131, 30, 4.9, '2007-02-28'),
(232, 132, 31, 4.8, '2020-10-15'),
(233, 133, 32, 4.9, '2024-07-22'),
(234, 134, 33, 4.7, '2024-03-05'),
(235, 135, 34, 4.8, '2023-04-12'),
(236, 136, 35, 4.6, '2022-01-20'),
(237, 137, 36, 4.7, '2023-02-15'),
(238, 138, 37, 4.5, '2023-09-08'),
(239, 139, 38, 4.4, '2024-01-10'),
(240, 140, 39, 4.9, '2016-03-18'),
(241, 141, 40, 4.8, '2016-07-05'),
(242, 142, 41, 4.7, '2015-05-22'),
(243, 143, 42, 4.6, '2024-03-01'),
(244, 144, 43, 4.8, '2024-04-20'),
(245, 145, 44, 4.5, '2014-02-14'),
(246, 146, 45, 4.9, '2023-10-05'),
(247, 147, 46, 4.7, '2022-06-10'),
(248, 148, 47, 4.8, '2020-11-11'),
(249, 149, 48, 4.6, '2021-01-15'),
(250, 150, 49, 4.9, '2021-04-03');

-- Insert values on directors table
INSERT INTO directors (director_id, name) VALUES
(301, 'Frank Darabont'),
(302, 'Francis Ford Coppola'),
(303, 'Christopher Nolan'),
(304, 'Quentin Tarantino'),
(305, 'Robert Zemeckis'),
(306, 'Lilly Wachowski'),
(307, 'Lana Wachowski'),
(308, 'Bong Joon-ho'),
(309, 'Hayao Miyazaki'),
(310, 'Rajkumar Hirani'),
(311, 'Nitesh Tiwari'),
(312, 'S.S. Rajamouli'),
(313, 'Ashutosh Gowariker'),
(314, 'Aditya Chopra'),
(315, 'Ramesh Sippy'),
(316, 'Anurag Kashyap'),
(317, 'Aamir Khan'),
(318, 'Zoya Akhtar'),
(319, 'Joss Whedon'),
(320, 'Anthony Russo'),
(321, 'Joe Russo'),
(322, 'James Cameron'),
(323, 'Steven Spielberg'),
(324, 'Roger Allers'),
(325, 'Rob Minkoff'),
(326, 'David Yates'),
(327, 'Ridley Scott'),
(328, 'Martin Scorsese'),
(329, 'Todd Phillips'),
(330, 'Yash'),
(331, 'Sukumar'),
(332, 'Siddharth Anand'),
(333, 'Atlee'),
(334, 'Sandeep Reddy Vanga'),
(335, 'Jeethu Joseph'),
(336, 'Alphonse Puthren'),
(337, 'Anjali Menon'),
(338, 'Lijo Jose Pellissery'),
(339, 'Blessy'),
(340, 'Pawan Kumar'),
(341, 'Rishab Shetty'),
(342, 'Lokesh Kanagaraj'),
(343, 'Karthik Subbaraj'),
(344, 'Vetrimaaran'),
(345, 'Sudha Kongara'),
(346, 'T. J. Gnanavel'),
(347, 'Denis Villeneuve'),
(348, 'Jon Favreau'),
(349, 'Gore Verbinski'),
(350, 'Peter Jackson');

-- Insert values on movie_directors table
INSERT INTO movie_directors (movie_id, director_id) VALUES
(1, 301),   -- The Shawshank Redemption → Frank Darabont
(2, 302),   -- The Godfather → Francis Ford Coppola
(3, 303),   -- The Dark Knight → Christopher Nolan
(4, 304),   -- Pulp Fiction → Quentin Tarantino
(5, 305),   -- Forrest Gump → Robert Zemeckis
(6, 303),   -- Inception → Christopher Nolan
(7, 306),   -- The Matrix → Lana Wachowski (co-director)
(7, 307),   -- The Matrix → Lilly Wachowski (co-director)
(8, 303),   -- Interstellar → Christopher Nolan
(9, 308),   -- Parasite → Bong Joon-ho
(10, 309),  -- Spirited Away → Hayao Miyazaki
(11, 310),  -- 3 Idiots → Rajkumar Hirani
(12, 311),  -- Dangal → Nitesh Tiwari
(13, 312),  -- Baahubali 2 → S.S. Rajamouli
(14, 312),  -- RRR → S.S. Rajamouli
(15, 313),  -- Lagaan → Ashutosh Gowariker
(16, 314),  -- Dilwale Dulhania Le Jayenge → Aditya Chopra
(17, 315),  -- Sholay → Ramesh Sippy
(18, 316),  -- Gangs of Wasseypur → Anurag Kashyap
(19, 310),  -- PK → Rajkumar Hirani
(20, 317),  -- Taare Zameen Par → Aamir Khan (director)
(21, 319),  -- The Avengers → Joss Whedon
(22, 320),  -- Avengers: Endgame → Anthony Russo
(22, 321),  -- Avengers: Endgame → Joe Russo
(23, 322),  -- Titanic → James Cameron
(24, 323),  -- Jurassic Park → Steven Spielberg
(25, 324),  -- The Lion King → Roger Allers
(25, 325),  -- The Lion King → Rob Minkoff
(26, 326),  -- Harry Potter and the Philosopher's Stone → Chris Columbus (corrected)
(27, 327),  -- Gladiator → Ridley Scott
(28, 323),  -- Saving Private Ryan → Steven Spielberg
(29, 323),  -- Schindler's List → Steven Spielberg
(30, 328),  -- The Departed → Martin Scorsese
(31, 329),  -- Joker → Todd Phillips
(32, 303),  -- Oppenheimer → Christopher Nolan
(33, 347),  -- Dune: Part Two → Denis Villeneuve
(34, 330),  -- K.G.F: Chapter 2 → Prashanth Neel (corrected: Yash is actor)
(35, 331),  -- Pushpa: The Rise → Sukumar
(36, 332),  -- Pathaan → Siddharth Anand
(37, 333),  -- Jawan → Atlee
(38, 334),  -- Animal → Sandeep Reddy Vanga
(39, 335),  -- Drishyam (Malayalam) → Jeethu Joseph
(40, 336),  -- Premam → Alphonse Puthren
(41, 337),  -- Bangalore Days → Anjali Menon
(42, 338),  -- Manjummel Boys → Chidambaram (corrected: Lijo Jose Pellissery not director)
(43, 339),  -- Aadujeevitham → Blessy
(44, 340),  -- Lucia → Pawan Kumar
(45, 341),  -- Kantara → Rishab Shetty
(46, 342),  -- Vikram → Lokesh Kanagaraj
(47, 343),  -- Kaithi → Lokesh Kanagaraj (corrected)
(48, 344),  -- Master → Lokesh Kanagaraj (corrected: Vetrimaaran not director)
(49, 345),  -- Soorarai Pottru → Sudha Kongara
(50, 346);  -- Jai Bhim → T. J. Gnanavel