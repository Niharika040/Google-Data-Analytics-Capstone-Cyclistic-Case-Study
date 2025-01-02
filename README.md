# Google-Data-Analytics-Capstone-Cyclistic-Case-Study

## Introduction
In this case study, I will assume the role of a team member at the fictional company, Cyclistic. To address the business questions, adhere to the data analysis framework: [Ask](https://github.com/Niharika040/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/edit/main/README.md#ask), [Prepare](https://github.com/Niharika040/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/edit/main/README.md), [Process](https://github.com/Niharika040/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/edit/main/README.md), [Analyze](https://github.com/Niharika040/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/edit/main/README.md), [Share](https://github.com/Niharika040/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/edit/main/README.md), and [Act](https://github.com/Niharika040/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/edit/main/README.md). The Case Study Roadmap will provide essential guidance.

### Quick links: [divvy_tripdata] (https://divvy-tripdata.s3.amazonaws.com/index.html)
Data Source:

## Background
### Cyclistic
Cyclistic, a bike-sharing pioneer, offers a fleet of 5,800+ bikes across 600 stations. Its inclusive approach, with options like reclining bikes and tricycles, caters to a diverse rider base. While many use it for leisure, a substantial portion relies on Cyclistic for daily commutes.

To fuel future growth, Cyclistic's marketing team aims to convert casual riders into loyal annual members. By understanding the nuances between these two groups, the team will tailor effective digital marketing campaigns.

### Scenario
As a junior data analyst on Cyclistic's marketing team, I'm tasked with analyzing historical bike trip data to identify differences between casual riders and annual members. The goal is to inform a new marketing strategy focused on converting casual riders into annual memberships. To gain executive approval, our recommendations must be supported by strong data insights and visually compelling visualizations.

## Ask

### Business Task
Create strategies to transform casual riders into loyal members.

### Analysis question
Three key questions will shape our future marketing strategy:
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members
   

## Prepare
### Data source
I used Cyclistic’s historical trip data to analyze and identify trends from Jan 2021 to Dec 2021 from [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html). It is made available by Motivate International Inc. under this [license](https://www.divvybikes.com/data-license-agreement).


### Data Organization
The dataset comprises 12 monthly files (YYYYMM-divvy-tripdata), each containing detailed information on individual rides, such as ride ID, bike type, start/end times, station names/IDs, locations, and membership status.

## Process
I will use SQL to combine and clean the data to accommodate the large Cyclistic dataset (over 5.6 million rows).
### Combining the data:
Query for combining: [2021_Combined_data](2021_combined_data.sql)

## Data Exploration
 SQL Query : 
 Before cleaning the data, I am familiarizing myself with the data to find the inconsistencies.

Observations:

1. The table outlines the column names and their corresponding data types. The ride_id column acts as the primary key.
2. The table below displays the number of null values present in each column.
3. Since ride_id contains no null values, we can use it to check for duplicates
4. The started_at and ended_at columns represent the start and end times of trips in the YYYY-MM-DD hh:mm:ss UTC format. A new column, ride_length, can be created to calculate the total trip duration.
5. Columns like day_of_week and month can be created to analyze trips across different times of the year.
6. The member_casual column has two unique values: member and casual, representing the type of rider.
These steps will ensure the dataset is clear.
7. 833,064 rows have both start_station_name and start_station_id missing. These need to be removed. 892,742 rows have both end_station_name and end_station_id missing. End Coordinates: 5,858 rows have both end_lat and end_lng missing. These must be removed as well.
8. start_station_id and end_station_id should be removed as they do not add value to the analysis for the current problem.
9. While start_lat, start_lng, end_lat, and end_lng may not directly contribute to the analysis, they can be retained for visualizing the trips on a map.

## Data Cleaning
SQL Query: Data Cleaning

All the rows having missing values are deleted.
3 more columns ride_length for duration of the trip, day_of_week and month are added.
Trips with duration less than a minute and longer than a day are excluded.
Total 1,375,912 rows are removed in this step.
