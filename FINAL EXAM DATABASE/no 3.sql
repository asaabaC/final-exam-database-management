-- Based on the scenario provided, we can identify the following entities:

-- TV Series
-- Episodes
-- Actors
-- Directors


-- under the TV Series we have,

-- Title
-- Genre
-- Release date
-- Description
-- Number of episodes
-- Episodes: Individual parts of a TV series.

--under the actors we have;
-- Actor ID
-- Name
-- Date of Birth
-- Nationality
-- Gender
-- Role(s) played
-- Series (Foreign Key)
-- Directors: Individuals who direct the episodes.






-- Episode ID (Primary Key)
-- Series ID (Foreign Key)
-- Episode Number
-- Title
-- Duration
-- Air Date
-- Actors: People who play roles in the series.
-- Attributes:

-- Actor ID (Primary Key)
-- Name
-- Date of Birth
-- Nationality
-- Gender
-- Directors: Individuals who direct the episodes.
-- Attributes:

-- Director ID (Primary Key)
-- Name
-- Date of Birth
-- Nationality
-- Gender

--part c
-- Table: TVSeries
-- CREATE TABLE TVSeries (
--     SeriesID INT PRIMARY KEY,
--     Title VARCHAR(255),
--     Genre VARCHAR(100),
--     Description TEXT,
--     NumOfSeasons INT,
--     SeriesStartDate DATE,
--     SeriesEndDate DATE
-- );

-- Table: Episodes
CREATE TABLE Episodes (
    EpisodeID INT PRIMARY KEY,
    SeriesID INT,
    EpisodeNumber INT,
    Title VARCHAR(255),
    Duration INT,
    AirDate DATE,
    FOREIGN KEY (SeriesID) REFERENCES TVSeries(SeriesID)
);

-- Table: Actors
CREATE TABLE Actors (
    ActorID INT PRIMARY KEY,
    Name VARCHAR(100),
    DateOfBirth DATE,
    Nationality VARCHAR(100),
    Gender CHAR(1)
);

-- Table: Directors
CREATE TABLE Directors (
    DirectorID INT PRIMARY KEY,
    Name VARCHAR(100),
    DateOfBirth DATE,
    Nationality VARCHAR(100),
    Gender CHAR(1)
);

CREATE TABLE SeriesActors (
    SeriesID INT,
    ActorID INT,
    PRIMARY KEY (SeriesID, ActorID),
    FOREIGN KEY (SeriesID) REFERENCES TVSeries(SeriesID),
    FOREIGN KEY (ActorID) REFERENCES Actors(ActorID)
);


CREATE TABLE EpisodeDirectors (
    EpisodeID INT,
    DirectorID INT,
    PRIMARY KEY (EpisodeID, DirectorID),
    FOREIGN KEY (EpisodeID) REFERENCES Episodes(EpisodeID),
    FOREIGN KEY (DirectorID) REFERENCES Directors(DirectorID)
);


--primary key
CREATE TABLE TVSeries (
    SeriesID INT PRIMARY KEY,
    Title VARCHAR(255),
    Genre VARCHAR(100),
    Description TEXT,
    NumOfSeasons INT,
    SeriesStartDate DATE,
    SeriesEndDate DATE
);


INSERT INTO TVSeries (SeriesID, Title, Genre, Description, NumOfSeasons, SeriesStartDate, SeriesEndDate)
VALUES (1, 'Breaking Bad', 'Drama', 'A high school chemistry teacher turned methamphetamine manufacturer.', 5, '2008-01-20', '2013-09-29');


--foreign key
CREATE TABLE Episodes (
    EpisodeID INT PRIMARY KEY,
    SeriesID INT,
    EpisodeNumber INT,
    Title VARCHAR(255),
    Duration INT,
    AirDate DATE,
    FOREIGN KEY (SeriesID) REFERENCES TVSeries(SeriesID)
);


--In this example, SeriesID is a foreign key in the Episodes table, referencing the SeriesID in the TVSeries table. For instance:


INSERT INTO Episodes (EpisodeID, SeriesID, EpisodeNumber, Title, Duration, AirDate)
VALUES (1, 1, 1, 'Pilot', 58, '2008-01-20');





