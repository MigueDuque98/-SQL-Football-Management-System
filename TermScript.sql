-- Seleccionar la base de datos del proyecto
USE projecttermcis395;

---------------------------------------------------------
-- TABLA: teams
---------------------------------------------------------
CREATE TABLE teams (
    idTeam INT AUTO_INCREMENT PRIMARY KEY,
    TeamName VARCHAR(100),
    City VARCHAR(100),
    FoundedYear INT,
    CoachName VARCHAR(100)
);

---------------------------------------------------------
-- TABLA: player
---------------------------------------------------------
CREATE TABLE player (
    idPlayer INT AUTO_INCREMENT PRIMARY KEY,
    TeamID INT,
    PlayerName VARCHAR(100),
    PlayerPosition VARCHAR(10),
    JerseyNumber INT,
    Age INT,
    FOREIGN KEY (TeamID) REFERENCES teams(idTeam)
);

---------------------------------------------------------
-- TABLA: matches
---------------------------------------------------------
CREATE TABLE matches (
    idMatch INT AUTO_INCREMENT PRIMARY KEY,
    HomeTeamID INT,
    AwayTeamID INT,
    MatchDate DATE,
    Stadium VARCHAR(100),
    FOREIGN KEY (HomeTeamID) REFERENCES teams(idTeam),
    FOREIGN KEY (AwayTeamID) REFERENCES teams(idTeam)
);

---------------------------------------------------------
-- TABLA: playerstats
-- (estructura real con columna PayerID)
---------------------------------------------------------
CREATE TABLE playerstats (
    idPlayerStats INT AUTO_INCREMENT PRIMARY KEY,
    MatchID INT,
    PayerID INT,
    Goals VARCHAR(45),
    Assists INT,
    YellowCards VARCHAR(45),
    RedCards VARCHAR(45),
    FOREIGN KEY (MatchID) REFERENCES matches(idMatch)
);

---------------------------------------------------------
-- INSERTS DE DATOS
---------------------------------------------------------

-- Insertar equipo
INSERT INTO teams (TeamName, City, FoundedYear, CoachName)
VALUES ('Queens United', 'Queens', 1990, 'Coach Rivera');

-- Insertar jugador
INSERT INTO player (TeamID, PlayerName, PlayerPosition, JerseyNumber, Age)
VALUES (1, 'Miguel Santos', 'FW', 9, 22);

-- Insertar partido (idMatch = 2)
INSERT INTO matches (HomeTeamID, AwayTeamID, MatchDate, Stadium)
VALUES (1, 1, '2024-05-10', 'Queens Stadium');

---------------------------------------------------------
-- INSERT FINAL EN PLAYERSTATS (FUNCIONANDO)
---------------------------------------------------------
INSERT INTO playerstats (MatchID, PayerID, Goals, Assists, YellowCards, RedCards)
VALUES (2, 2, 2, 1, 0, 0);
