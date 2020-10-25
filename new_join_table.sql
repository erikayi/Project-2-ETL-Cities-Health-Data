-- DROP MATERIALIZED VIEW hospital;

-- Joins tables

-- CREATE MATERIALIZED VIEW hospital AS
-- it's not necessary to create materialized view because this is not a large data that takes up too much of data to load
-- so, we commented out the create materialized view part here. 

-- this one didn't work go through, since we need to combine the table by year and state 
-- because of filtering the data by only left join and year/state, it did not combined the rest of data in the hospital beds data. 

-- SELECT hc.indicator_category, hc.indicator, hc.gender, hc.race_ethnicity, hc.rate, ho.state,
-- 		hc.year, ho.state_local_gov, ho.non_profit, ho.for_profit, ho.total
-- FROM health_cities hc
-- LEFT JOIN hospital_data ho
-- ON hc.year = ho.year
-- AND hc.state = ho.state;

-- so we need to use inner join, since they both have a common field in state and a year, after we extracted and cleaned the data in jupyter notebook. 
DROP TABLE join_data;

CREATE TABLE join_data AS
SELECT hc.category, hc.cause_of_death, hc.gender, hc.race_ethnicity, hc.death_rate, ho.state,
		hc.year, ho.state_local_gov, ho.non_profit, ho.profit, ho.total
FROM health_cities hc
INNER JOIN hospital_data ho
ON hc.year = ho.year
AND hc.state = ho.state
ORDER BY hc.year ASC;

-- check each data if it correctly went through, and examine any errors. 
SELECT COUNT(*)
FROM join_data;

SELECT count(*)
FROM health_cities;

SELECT count(*)
FROM hospital_data;