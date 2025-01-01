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
1. What are the key differences in bike usage between annual members and casual riders?
2. What motivates casual riders to purchase annual memberships?
3. How can digital media be leveraged to convert casual riders into members?
   
I'm diving into the data to uncover how annual members and casual riders use Cyclistic bikes differently.

## Prepare
### Data source
use of Cyclistic’s historical trip data to analyze and identify trends from Jan 2021to Dec 2021 from [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html). It is made available by Motivate International Inc. under this [license](https://www.divvybikes.com/data-license-agreement).

While we have access to public bike usage data, privacy regulations prevent us from linking personal information. This means we cannot directly connect pass purchases to rider demographics or specific locations.

### Data OrganiZation
The dataset comprises 12 monthly files (YYYYMM-divvy-tripdata), each containing detailed information on individual rides, such as ride ID, bike type, start/end times, station names/IDs, locations, and membership status.

## Process
To accommodate the large Cyclistic dataset (over 5.6 million rows), we'll use BigQuery to combine and clean the data. Excel's row limit of 1,048,576 makes it unsuitable for this task.
### Combining the data:
Query for combining: [Dataexp](https://github.com/Niharika040/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/64df502f4d8c59d807cb6333c6cf856e944859eb/02.Dataexp.sql)

