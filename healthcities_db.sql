DROP TABLE health_cities;
DROP TABLE hospital_data_2010;
DROP TABLE hospital_data_2011;
DROP TABLE hospital_data_2012;
DROP TABLE hospital_data_2013;
DROP TABLE hospital_data_2014;
DROP TABLE hospital_data_2015;

CREATE TABLE health_cities (
	year INT,
	indicator_category TEXT,
	indicator TEXT,
	gender TEXT,
	race_ethnicity TEXT,
	population_rate INT,
	state text
);

CREATE TABLE hospital_data_2010 (
	year INT,
	state TEXT,
	state_local_2010 INT,
	nonprofit_2010 INT,
	profit_2010 INT
);

CREATE TABLE hospital_data_2011 (
	year INT,
	state TEXT,
	state_local_2011 INT,
	nonprofit_2011 INT,
	profit_2011 INT
);

CREATE TABLE hospital_data_2012 (
	year INT,
	state TEXT,
	state_local_2012 INT,
	nonprofit_2012 INT,
	profit_2012 INT
);

CREATE TABLE hospital_data_2013 (
	year INT,
	state TEXT,
	state_local_2013 INT,
	nonprofit_2013 INT,
	profit_2013 INT
);

CREATE TABLE hospital_data_2014 (
	year INT,
	state TEXT,
	state_local_2014 INT,
	nonprofit_2014 INT,
	profit_2014 INT
);

CREATE TABLE hospital_data_2015 (
	year INT,
	state TEXT,
	state_local_2015 INT,
	nonprofit_2015 INT,
	profit_2015 INT
);