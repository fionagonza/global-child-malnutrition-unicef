# Global Child Malnutrition Analysis (UNICEF)

## Project Overview
This project analyzes global UNICEF child malnutrition data to identify countries and income groups most affected by chronic child malnutrition (stunting). The analysis is designed to support data-driven decision-making for NGOs and policymakers.

## Objective
- Identify countries with high child stunting prevalence
- Analyze global trends in child stunting over time
- Compare stunting levels across income classifications using the most recent data

## Dataset
**Source:** UNICEF global child malnutrition estimates  
**Population:** Children under age 5  

Key indicators include:
- Stunting
- Wasting
- Underweight
- Overweight

This project focuses on **stunting** as the primary indicator of chronic malnutrition due to its widespread use in global health monitoring.

## Tools Used
- **Python (Pandas):** Data cleaning and preparation
- **MySQL:** Analytical querying and aggregation
- **Tableau Public:** Interactive data visualization and dashboarding

## Methodology
1. Cleaned and filtered raw UNICEF data for analytical use
2. Handled missing values and standardized variables
3. Loaded cleaned data into MySQL for analysis
4. Performed SQL queries to identify trends, high-risk regions, and income disparities
5. Built an interactive Tableau dashboard to communicate insights

## Key Insights
- Global child stunting levels have declined over time, but remain uneven across regions
- Stunting is present across all income groups, including high-income countries
- Comparing income groups using the most recent year provides the most policy-relevant insights
- Some countries are excluded from geographic visualizations due to missing mapping data

## Tableau Dashboard

🔗 **Live Dashboard:**  
https://public.tableau.com/app/profile/fiona.anguche4342/viz/GlobalChildMalnutritionOverviewUNICEF/GlobalChildMalnutritionUNICEF?publish=yes

The dashboard visualizes:
- Global stunting prevalence by country (map)
- Average stunting trend over time (line chart)
- Stunting comparison by income group (bar chart)

Interact with the filters and hover to explore patterns visually.


## Project Structure
