-- Joining tables
SELECT hc.indicator_category, hc.indicator, hc.gender, hc.race_ethnicity, hc.rate, ho.state,
		hc.year, ho.state_local_gov, ho.non_profit, ho.for_profit, ho.total
FROM health_cities hc
LEFT JOIN hospital_data ho
ON hc.year = ho.year
AND hc.state = ho.state;

CREATE TABLE join_data AS
SELECT hc.indicator_category, hc.indicator, hc.gender, hc.race_ethnicity, hc.rate, ho.state,
		hc.year, ho.state_local_gov, ho.non_profit, ho.for_profit, ho.total
FROM health_cities hc
INNER JOIN hospital_data ho
ON hc.year = ho.year
AND hc.state = ho.state
ORDER BY hc.year ASC;

SELECT COUNT(*)
FROM join_data;

SELECT count(*)
FROM health_cities;

SELECT count(*)
FROM hospital_data;

-- DROP MATERIALIZED VIEW hospital;
-- CREATE MATERIALIZED VIEW hospital AS

-- WE DON'T HAVE TO MATERIALIZED VIEW FOR THIS ONE. IT'S NOT A BIG DATA.