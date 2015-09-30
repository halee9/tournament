-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
DROP TABLE matches;
DROP TABLE players;

CREATE TABLE players (
    id SERIAL,
    name TEXT NOT NULL,
    wins INT DEFAULT 0,
    matches INT DEFAULT 0,
    PRIMARY KEY (id)
);

CREATE TABLE matches (
    id SERIAL,
    winner INT REFERENCES players(id),
    loser INT REFERENCES players(id),
    PRIMARY KEY (id)
);

