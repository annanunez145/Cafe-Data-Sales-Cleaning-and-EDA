# Cafe-Data-Sales-Cleaning-and-EDA
Data cleaning and exploratory data analysis (EDA) of a messy cafe sales dataset using Excel and SQL.

# Cafe Sales Data Cleaning & EDA

## Overview
This project focuses on cleaning and exploring a messy cafe sales dataset using Excel and SQL.  
The goal was to practice realistic data preparation workflows, preserve raw data, and perform exploratory data analysis (EDA) on cleaned data.

---

## Dataset
The dataset contains cafe transaction records with common real-world issues such as:
- inconsistent column names
- invalid rows
- placeholder values like `ERROR` and `UNKNOWN`
- formatting and data type inconsistencies

---

## Data Cleaning (Excel)
Data cleaning was primarily performed in Excel using the following steps:

- Created a copy of the raw dataset to preserve original data
- Renamed and standardized column headers
- Removed invalid or unusable rows
- Replaced `ERROR` and `UNKNOWN` values with appropriate cleaned values or nulls
- Corrected formatting and data types

The cleaned dataset was saved and used as the source for SQL analysis.

---

## Exploratory Data Analysis (EDA)
EDA was conducted in SQL to answer key business questions, including:
- Total and average revenue
- Revenue by item, location, and payment method
- Transaction trends over time
- Identification of missing values and outliers

See: `sql/eda_queries.sql`

---

## Tools Used
- Excel
- SQL
- Data Cleaning
- Exploratory Data Analysis

---

## Key Takeaways
This project reinforced the importance of:
- preserving raw data
- documenting cleaning decisions
- applying consistent, reproducible transformation logic
- validating data before analysis

---

## Next Steps
- Create visualizations from cleaned data
- Expand analysis with additional business questions
- Automate the cleaning workflow
