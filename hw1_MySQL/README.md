# Homework 1: SQL Tasks in MySQL

**Course:** Introduction to Database Systems 
**Instructor:** Prof. Wen-Chih Peng  

---

## Overview
This project focuses on practicing basic SQL tasks in MySQL, including creating databases, designing tables, loading datasets, and performing queries to solve data-related problems. By completing this project, you will gain practical skills in using SQL for querying and analyzing data.

The dataset used is MLB game data from the 2016 season through the 2021 postseason. The data is modified from Kaggle datasets. You will create a database, load CSV files, and write queries to answer a set of predefined tasks.

## Features
### 1. Database Setup
   * Design and create tables with strict adherence to provided schema, including:
     - Table names
     - Attribute names and types
     - Primary and foreign key relationships
     - Nullability rules
   * Tables include games, inning, hitters, pitchers, pitches, and players.
### 2. Data Loading
   * Import the MLB dataset from CSV files into MySQL.
   * Validate the data to ensure all records are correctly loaded:
     - **games:** 13,413 records
     - **inning:** 238,096 records
     - **hitters:** 334,336 records
     - **pitchers:** 116,551 records
     - **pitches:** 3,879,438 records
     - **players:** 3,341 records
### 3. SQL Query Challenges   
Write SQL queries to solve 12 tasks, ranging from basic to advanced. Highlights include:
* Counting games with a score difference of 10 or more.
* Finding games with the most innings and listing them in ascending order by game ID.
* Identifying top-performing players and teams based on specific metrics like pitching innings, batting averages, and more.
* Performing analysis on strikeout rates, pitch types, and game intervals.
### 4. Advanced Analysis
Explore complex relationships in the data, such as:
* Hit rate differences that lead to a win probability of 95% or higher.
* Comparing pitchers based on trade status, using metrics like strikeout rates and pitch statistics.
* Finding players with the highest batting averages per game in the top-performing teams of 2021.
