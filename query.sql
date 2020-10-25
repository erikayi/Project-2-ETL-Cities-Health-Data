-- DROP MATERIALIZED VIEW cities;
-- DROP MATERIALIZED VIEW hospital_bed;

-- CREATE MATERIALIZED VIEW cities AS

-- again, I commented out the create materialized view, since I don't think it is necessary to make a view for this data because it is not that large data.

SELECT *
FROM health_cities;

-- CREATE MATERIALIZED VIEW hospital_bed AS

SELECT *
FROM hospital_data;

-- SELECT *
-- FROM hospital_data_2010;

-- SELECT *
-- FROM hospital_data_2011;

-- SELECT *
-- FROM hospital_data_2012;

-- SELECT *
-- FROM hospital_data_2013;

-- SELECT *
-- FROM hospital_data_2014;

-- SELECT *
-- FROM hospital_data_2015;