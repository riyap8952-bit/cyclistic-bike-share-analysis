## PROJECT INTRODUCTION

The case study - Cyclistic Bike share, involves working for a fictional company, Cyclistic.
Company authority and management aims to maximize annual memberships for future success. 
To achieve this, bike memberships and type of riders, need to be studied and opportunities identified.

## BUSINESS TASK

The Cyclistic team aims to convert casual riders to annual members. This makes it crucial to understand how 
the usage of casual riders and annual members of Cyclistic bikes differs. These insights will help Cyclistic develop 
data-driven marketing strategies to encourage casual riders to purchase annual memberships.

## DATA SOURCES AND CREDIBILITY

The 12 months of cyclistic trip data used spans from October 2025 to September 2026 and has been updated which
makes it relevant and reliable for analysis . Originally data is made available by Motivate International Inc.
It is public data with data- privacy issues which do not allow to use rider's personally identifiable information. Otherwise
the data is comprehensive in nature and forms relevant source for answering the business question.

## TOOLS USED

- WPS Office Spreadsheets: Initial data cleaning and preparation.
- Google BigQuery (SQL): Combining datasets, further cleaning, validation, and analysis.
- Tableau: Data visualization and dashboard creation.

## DATA CLEANING & PREPARATION

To tackle the business problem into the consideration 12 months of Cyclistic Historical Trip data was studied and analyzed. 
Before beginning with analysis of data the pre- cleaning activities were carried out. These activities ensured that the data
that is used is Accurate, Reliable, Complete, and Consistent.

Then after, data cleaning process was carried forward. It involved identifying and fixing the data errors and constraints.
In an order to clean such large set of data, the initial step was to use Spreadsheets and later BigQuery as tools  to get 
rid of irrelevant data. 
The dataset was examined for following aspects -
- Missing or NULL values
- Duplicate records
- Inconsistent date and time formats
- Negative ride duration
- Invalid or inconsistent values
- Inconsistent formatting

A. Initial data preparation

- Examined the 12 monthly datasets individually.
- Used WPS Spreadsheets for initial cleaning and preparation.

B. Data cleaning

- Removed rides with zero duration and identical start and end timestamps.
- Removed rides with negative duration.
- Retained rides lasting more than zero but less than 30 seconds, flagging them as potential anomalies rather than automatically excluding them.
- Standardized ride-duration formatting and checked for duplicate records.

C. Data consolidation and validation

- Imported the cleaned monthly datasets into BigQuery because of spreadsheet row limitations.
- Combined the 12 monthly datasets into a single table for analysis.
- Rechecked the consolidated dataset for duplicate records and inconsistencies.
- Removed 71 rides belonging to September 2025 that were included in the October 2025 source data.

## DATA ANALYSIS SUMMARY

The analysis to study trends and patterns of Riders was conducted majorly on five lines, 
- Analysis of casual riders and annual members
- Analysis of Rides by Day of the Week
- Analysis of Rides by Month
- Analysis of Bike ride types and rider types
- Summary Statistics

TRENDS & RELATIONSHIP OBSERVED -
- Rider distribution: Annual members account for 64.53% of rides, 
  while casual riders account for 35.47%.
- Ride duration: Casual riders take longer rides on average, with ride duration approximately 66% longer 
  than those of members.
- Weekly patterns: Casual rides peak on Saturdays, while member rides are strongest on weekdays,
  particularly Tuesday through Thursday.
- Monthly trends: Member rides peak in August 2026, while casual rides peak in July 2026.
  Both groups experience seasonal fluctuations, with members recording more rides than casual riders in every month.
- Bike preferences: Annual members record higher usage of both classic and electric bikes than casual riders.

## BUSINESS RECOMMENDATIONS

1) Cyclistic could explore targeted membership promotions for casual riders, particularly around weekends, and 
highlight the potential benefits of annual membership. 
2) Highlight how an annual membership could benefit casual riders who use bikes frequently.

## TABLEAU DASHBOARD

Explore the interactive dashboard: https://public.tableau.com/app/profile/micro.ar/viz/CyclisticBikes_17927505703990/Dashboard1
View Cyclistic Bikes Dashboard on Tableau Public 

## CONCLUSION 

The analysis makes uses of suitable tools to examine the data errors and clean it for further study. It follows six phases of 
Data Analysis Process - Ask, Prepare, Process, Analyze, Share, Act. 

The trends and patterns of rider types, ride lengths are analyzed to give business recommendations. These findings provide insights 
that can help Cyclistic develop data-driven strategies to encourage casual riders to become annual members.



