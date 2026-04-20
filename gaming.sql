use october_sql_batch;
CREATE DATABASE IF NOT EXISTS gaming_db;
USE gaming_db;

DROP TABLE IF EXISTS gaming_stats;

CREATE TABLE gaming_stats (
    User_ID TEXT,
    Age TEXT,
    Gender TEXT,
    Occupation TEXT,
    Game_Type TEXT,
    Daily_Gaming_Hours TEXT,
    Weekly_Gaming_Hours TEXT,
    Primary_Gaming_Time TEXT,
    Sleep_Hours TEXT,
    Stress_Level TEXT,
    Focus_Level TEXT,
    Academic_or_Work_Score TEXT,
    Productivity_Level TEXT,
    Performance_Impact TEXT
);
-- counting the number of rows in the dataset
SELECT count(*) FROM gaming_stats;
-- first 10 rows
SELECT * FROM gaming_stats LIMIT 10;

-- convert them into real numbers
ALTER TABLE gaming_stats 
MODIFY COLUMN Age INT,
MODIFY COLUMN Daily_Gaming_Hours DECIMAL(10,2),
MODIFY COLUMN Weekly_Gaming_Hours DECIMAL(10,2),
MODIFY COLUMN Sleep_Hours DECIMAL(10,2),
MODIFY COLUMN Stress_Level INT,
MODIFY COLUMN Focus_Level INT,
MODIFY COLUMN Academic_or_Work_Score INT,
MODIFY COLUMN Productivity_Level INT;

-- checking nulls and blanks
SELECT * FROM gaming_stats 
WHERE User_ID IS NULL OR User_ID = ''
   OR Gender IS NULL OR Gender = '';
   
-- missing data report
SELECT 
    COUNT(CASE WHEN User_ID IS NULL OR User_ID = '' THEN 1 END) AS Missing_UserID,
    COUNT(CASE WHEN Age IS NULL OR Age = '' THEN 1 END) AS Missing_Age,
    COUNT(CASE WHEN Gender IS NULL OR Gender = '' THEN 1 END) AS Missing_Gender,
    COUNT(CASE WHEN Occupation IS NULL OR Occupation = '' THEN 1 END) AS Missing_Occupation,
    COUNT(CASE WHEN Daily_Gaming_Hours IS NULL OR Daily_Gaming_Hours = '' THEN 1 END) AS Missing_DailyHours
FROM gaming_stats;

-- Identifying "Whitespace" Blanks
SELECT * FROM gaming_stats 
WHERE TRIM(Occupation) = '';

-- Fill them with a default value
-- Turn off safe updates
SET SQL_SAFE_UPDATES = 0;

-- Now your update will work
UPDATE gaming_stats 
SET Gender = 'Unknown' 
WHERE Gender = '' OR Gender IS NULL;

UPDATE gaming_stats 
SET Occupation = NULL 
WHERE Occupation = '';

-- (Optional) Turn it back on when done
SET SQL_SAFE_UPDATES = 1;

-- the average gaming time per Game Type
SELECT Game_Type, AVG(Daily_Gaming_Hours) as Avg_Hours
FROM gaming_stats
GROUP BY Game_Type
ORDER BY Avg_Hours DESC;

-- high gaming hours correlate with higher stress levels
SELECT Stress_Level, AVG(Daily_Gaming_Hours) as Avg_Gaming_Hours
FROM gaming_stats
GROUP BY Stress_Level
ORDER BY Stress_Level;

-- Which occupation games the most at night
SELECT Occupation, COUNT(*) as Night_Gamers
FROM gaming_stats
WHERE Primary_Gaming_Time = 'Night'
GROUP BY Occupation
ORDER BY Night_Gamers DESC;

-- This ensures no duplicate User_IDs and speeds up queries
ALTER TABLE gaming_stats ADD PRIMARY KEY (User_ID(50));

