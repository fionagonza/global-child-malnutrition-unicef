-- 1) Create a database for this project (if you don't already have one)
CREATE DATABASE IF NOT EXISTS ngo_malnutrition;

-- 2) Switch to that database
USE ngo_malnutrition;

-- 3) Create the cleaned malnutrition table
CREATE TABLE malnutrition_clean (
    country VARCHAR(100),
    year INT,
    stunting DECIMAL(5,2),
    wasting DECIMAL(5,2),
    underweight DECIMAL(5,2),
    overweight DECIMAL(5,2),
    income_class VARCHAR(30),
    u5_population_thousands DECIMAL(10,2)
);

USE ngo_malnutrition;
USE ngo_malnutrition;

-- How many rows?
SELECT COUNT(*) FROM malnutrition_clean;

-- Look at a sample
SELECT * FROM malnutrition_clean
LIMIT 5;

-- Query 1: Highest Global Stunting
SELECT 
    country,
    year,
    stunting
FROM malnutrition_clean
ORDER BY stunting DESC
LIMIT 10;

-- Query 2: Highest Global Wasting
SELECT 
    country,
    year,
    wasting
FROM malnutrition_clean
ORDER BY wasting DESC
LIMIT 10;

-- Query 3: Highest Underweight Levels
select
country,
year,
underweight
from malnutrition_clean
order by underweight DESC
Limit 10;

-- Query 4 : Countries with the Highest Overweight Levels
SELECT 
    country,
    year,
    overweight
FROM malnutrition_clean
ORDER BY overweight DESC
LIMIT 10;

-- Query 5 : Global Trend in Child Stunting Over Time
SELECT 
    year,
    AVG(stunting) AS avg_stunting
FROM malnutrition_clean
GROUP BY year
ORDER BY year;

-- Query 6 – Initial Income Group Comparison (All Years)
SELECT
    year,
    income_class,
    AVG(stunting) AS avg_stunting
FROM malnutrition_clean
GROUP BY year, income_class
ORDER BY year, avg_stunting DESC;

## Query 7 – Income Group Comparison for the Most Recent Year
-- Identify the most recent year first
SELECT MAX(year) AS most_recent_year
FROM malnutrition_clean;
-- Now compare stunting levels by income for that year
SELECT
    income_class,
    AVG(stunting) AS avg_stunting
FROM malnutrition_clean
WHERE year = 2019
GROUP BY income_class
ORDER BY avg_stunting DESC;



