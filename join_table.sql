-- DROP MATERIALIZED VIEW hospital;
-- Joins tables
-- CREATE MATERIALIZED VIEW hospital AS
SELECT hc.indicator_category, hc.indicator, hc.gender, hc.race_ethnicity, hc.rate, ho.state,
		hc.year, ho.state_local_gov, ho.non_profit, ho.for_profit, ho.total
FROM health_cities hc
LEFT JOIN hospital_data ho
ON hc.year = ho.year
AND hc.state = ho.state;

SELECT hc.indicator_category, hc.indicator, hc.gender, hc.race_ethnicity, hc.rate, ho.state,
		hc.year, ho.state_local_gov, ho.non_profit, ho.for_profit, ho.total
FROM health_cities hc
INNER JOIN hospital_data ho
ON hc.year = ho.year
AND hc.state = ho.state
ORDER BY hc.year ASC;

SELECT count(*)
FROM health_cities;

SELECT count(*)
FROM hospital_data;