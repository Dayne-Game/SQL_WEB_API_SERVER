/*  
MAINTAINED BY JEFF Kranenburg
Uncomment LINE 6 - 15 to recreate the database
*/

USE Master
Go

If EXISTS(select * from sys.databases where name = 'Rugby7db')
DROP DATABASE Rugby7db

CREATE DATABASE Rugby7db
Go

USE Rugby7db

DROP TABLE IF EXISTS "players";
DROP TABLE IF EXISTS "staff";
DROP TABLE IF EXISTS "game_schedule";
DROP TABLE IF EXISTS "pool_points";
DROP TABLE IF EXISTS "teams";

CREATE TABLE "teams" (
  "id" varchar(4) NOT NULL PRIMARY KEY,
  "pool" varchar(10) NOT NULL,
  "name" varchar(255) NOT NULL,
)

CREATE TABLE "players" (
  "id" smallint NOT NULL IDENTITY(1,1) PRIMARY KEY,
  "name" varchar(255) NOT NULL,
  "team_id" varchar(4) NOT NULL
)

CREATE TABLE "staff" (
  "id" smallint NOT NULL IDENTITY(1,1) PRIMARY KEY,
  "title" varchar(255) NOT NULL,
  "name" varchar(255) NOT NULL,
  "team_id" varchar(4) NOT NULL
)

CREATE TABLE "game_schedule" (
  "id" varchar(4) NOT NULL PRIMARY KEY,
  "field_number" smallint NOT NULL,
  "time" varchar(7) NOT NULL,
  "team_a" varchar(4) NOT NULL,
  "team_b" varchar(4) NOT NULL,
  "team_a_score" smallint DEFAULT NULL,
  "team_b_score" smallint DEFAULT NULL
)

CREATE TABLE "pool_points" (
  "ppid" int NOT NULL IDENTITY(1,1) PRIMARY KEY,
  "team_id" varchar(4) NOT NULL,
  "game_id" smallint NOT NULL, -- Should be a FK 
  "points" smallint NOT NULL,
) 

SELECT * FROM Rugby7db.INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'
Go