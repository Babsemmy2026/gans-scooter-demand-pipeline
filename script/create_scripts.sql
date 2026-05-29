/***************************
Setting up the environment
***************************/

-- Drop the database if it already exists
DROP DATABASE IF EXISTS wikipedia ;

-- Create the database
CREATE DATABASE wikipedia;

-- Use the database
USE wikipedia;



/***************************
Creating the first table
***************************/

-- Create the 'cities' table
CREATE TABLE cities (
    city_id INT AUTO_INCREMENT, -- Automatically generated ID for each city
    city VARCHAR(255) NOT NULL, -- Name of the city
    country VARCHAR(255) NOT NULL,
    latitude FLOAT NOT NULL,
    longitude FLOAT NOT NULL,
    PRIMARY KEY (city_id) -- Primary key to uniquely identify each city
);
drop table cities;
/* An auto-increment attribute automatically generates a unique number
(typically used for a primary key) for each new record inserted into a table. */

/* A primary key is a unique identifier for each record in a database table,
ensuring that no two rows have the same value in this column. */

/* VARCHAR(255) data type can store strings of up to 255 characters, 
but strings can also be shorter than that. 
VARCHAR stands for "variable character"*/

/* NOT NULL constraint is used to specify that a column must not be NULL. 
This means that when you insert a new row into a table or update an existing row, 
you must provide a value for the column. */

SELECT * FROM cities;
-- it's empty at the moment



/***************************
Inserting information into a table
***************************/

-- Inserting a single record

INSERT INTO cities (city_name) 
VALUES ("Berlin");

SELECT * 
FROM cities;

-- Inserting multiple records

INSERT INTO cities(city_name) 
VALUES ("Hamburg"), ("Munich");

SELECT * 
FROM cities;

drop table cities;

/***************************
Creating the population table
***************************/

CREATE TABLE population (
    city_id INT AUTO_INCREMENT, -- Automatically generated ID for each book
    Population INT NOT NULL, -- Population of each city
    timestamp_population DATE NOT NULL,    
	PRIMARY KEY (city_id, timestamp_population), -- Primary key to uniquely identify each book  
    
    FOREIGN KEY(city_id) -- Foreign key constraint
		REFERENCES cities (city_id)
);

SELECT * 
FROM population;

drop table population;
/* INT is a numeric data type that stores signed integers. 
This means that INT values can represent both positive and negative whole numbers. */

/* A foreign key is a constraint that links a column in one table to a primary key in another table. */

SELECT * 
FROM population;

/***************************
Creating the weather table
***************************/

CREATE TABLE weather (
    city_id INT NOT NULL,
    forecast_time DATETIME NOT NULL,
    temperature FLOAT,
    forecast VARCHAR(255),
    rain_in_last_3h FLOAT,
    wind_speed FLOAT,
    data_retrieved_at DATETIME NOT NULL,

    PRIMARY KEY (city_id, forecast_time, data_retrieved_at),

    FOREIGN KEY (city_id)
        REFERENCES cities(city_id)
);


select *
from weather;

drop table weather;

/***************************
Creating the airports table
***************************/

CREATE TABLE airports(
    icao VARCHAR(10),
    airport_name VARCHAR(255),
    city_id INT NOT NULL,
    PRIMARY KEY (icao),
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);

select *
FROM airports;

drop table airports;

/***************************
Creating the flights table
***************************/

CREATE TABLE flights(
	flight_id INT AUTO_INCREMENT,
    arrival_airport_icao VARCHAR(10),
    departure_airport_icao VARCHAR(10),
    departure_airport_name VARCHAR(30),
    scheduled_arrival_time DATETIME,
    flight_number VARCHAR(30),
    data_retrieved_at DATETIME,
    PRIMARY KEY (flight_id),
    FOREIGN KEY (arrival_airport_icao) REFERENCES airports(icao)
);

select *
from flights;

drop table flights;