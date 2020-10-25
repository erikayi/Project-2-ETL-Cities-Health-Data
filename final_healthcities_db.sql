-- create table for Big Cities Health Data(health_cities)
-- create table for Hospital Beds Data(hospital_data)

DROP TABLE health_cities;
DROP TABLE hospital_data;

CREATE TABLE health_cities (
	year INT,
	category TEXT,
	cause_of_death TEXT,
	gender TEXT,
	race_ethnicity TEXT,
	death_rate INT,
	state text
);

CREATE TABLE hospital_data (
	year INT,
	state TEXT,
	state_local_gov INT,
	non_profit INT,
	profit INT,
	total INT
)