# Title: Gaming Behavior & Productivity Analysis using SQL

# Project Overview:
This project explores the relationship between gaming habits, lifestyle factors, and productivity. Using a dataset of 1,000 unique users, the analysis investigates how daily gaming hours impact stress levels, sleep patterns, and academic or professional performance. The project demonstrates advanced SQL techniques for data cleaning, type casting, and multi-dimensional analysis to derive insights into the "Performance Impact" of digital entertainment.

# Key Features
**Data Sanitization & Type Casting:** Converted raw text-based data into precise numerical formats (INT, DECIMAL) for accurate mathematical computation.

**Missing Data Reporting:** Implemented custom logic to identify and report "whitespace" blanks and NULL values across all attributes.

**Correlation Analysis:** Queried the relationship between high gaming volume and elevated stress levels.

**Productivity Profiling:** Analyzed gaming time preferences (Morning, Evening, Night) against work/academic scores to identify peak performance windows.

**Behavioral Segmentation:** Grouped data by Occupation and Game Type to identify which demographics are most susceptible to negative performance impacts.

# Technical Methodology
The project follows a structured SQL workflow:

**Schema Definition:** Built a robust table structure to handle diverse data types.

**Data Cleaning:** Used SQL_SAFE_UPDATES and TRIM functions to handle data entry errors and standardize gender/occupation labels.

**Aggregation:** Leveraged GROUP BY and AVG functions to find trends across different game genres (Action, Strategy, Puzzle, etc.).

**Logical Filtering:** Used CASE WHEN statements to generate comprehensive data health reports.

# Analytical Insights
The SQL scripts included in this repository answer critical questions such as:

Which game types are associated with the highest daily gaming hours?

Do users who game primarily at night suffer from lower productivity scores?

Is there a statistically significant correlation between sleep hours and gaming frequency?

How do stress levels fluctuate between students and working professionals based on their gaming habits?

# Repository Structure
gaming.csv: The raw dataset containing user-reported gaming and lifestyle statistics.

gaming.sql: The complete SQL script including database setup, data cleaning, and analytical queries.

# Tools used
**Database:** MySQL

**Language:** SQL

**Techniques:** Data Cleaning, Feature Transformation, Statistical Aggregation
