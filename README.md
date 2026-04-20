**Title:** Global Pandemic History Analysis using SQL

**Project Overview**
This project features a comprehensive historical analysis of global pandemics and health crises using SQL. It explores a dataset covering centuries of medical history to identify patterns in mortality, transmission methods, and the economic impact of major outbreaks. The repository includes the raw data, schema definitions, and a suite of analytical queries designed to extract meaningful insights from complex historical records.

**Key Features**
**Mortality & Scale Analysis:** Queries to identify the deadliest events in human history and calculate Case Fatality Rates (CFR).

**Pathogen Profiling:** Aggregated data analysis by pathogen type (Virus, Bacteria, etc.) to determine which biological agents have had the highest impact.

**Temporal Trends:** Century-over-century event tracking to visualize the frequency of outbreaks over time.

**Socio-Economic Insights:** Evaluation of economic damage in relation to medical breakthroughs and containment strategies.

**Geographic Spread:** Analysis of how diseases moved across regions and continents.

**Technical Methodology**
The analysis was performed using a structured SQL approach:

**Data Aggregation:** Used GROUP BY and aggregate functions (SUM, AVG, COUNT) to summarize impact by century and pathogen.

**Data Filtering:** Applied complex WHERE and HAVING clauses to isolate high-impact events (e.g., duration > 10 years or CFR > 30%).

**Sorting & Ranking:** Utilized ORDER BY and LIMIT to rank the most catastrophic events based on mortality and economic cost.

**Analytical Insights**
The SQL scripts included in this repository answer critical questions such as:

What are the top 5 deadliest pandemics in history?

Which pathogen type has caused the highest total number of estimated deaths?

How does a medical breakthrough correlate with the average economic impact of an event?

Which transmission methods (Airborne, Vector, etc.) are most frequently associated with global pandemics?

**Repository Structure**
**pandamic.csv: **The primary dataset containing historical records of global health events.

**pandemic.sql:** The SQL script containing the database schema and analytical queries.

Tech Stack
**Database:** MySQL / PostgreSQL

**Language:** SQL

**Tools:** Data Import/Export, Relational Database Management Systems (RDBMS)
