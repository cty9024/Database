# Final Project: Kaohsiung Tourism Web Application

**Course:** Introduction to Database Systems  
**Instructor:** Prof. Wen-Chih Peng
**Team Members:** Ting-Yun Chen, Shu-Hao Chang, Chia-Ni Ho

--- 

## Introduction
This project aims to develop a user-friendly web application for exploring Kaohsiung's activities, attractions, parking facilities, and accommodations. Users can search by **date** or **region**, accessing comprehensive information to enhance their travel experience.

## Database 
### Database Design
We used **MySQL** as the database system and implemented dynamic updates using government APIs. Key update mechanisms include:
* **Parking/Hotels:** Records are updated based on the Primary Key.
* **Attractions:** New entries are added if the name does not already exist.
* **Events:** Entries with past end dates are removed, and new data is added.
* **Comments:** Existing comments are replaced if duplicates (same name and user) are found.
### Database Connection
The application connects to the MySQL database via PHP, using the `mysqli_query()` function. Robust exception handling ensures secure and error-free interactions.

## Application
### User Interface
1. **Homepage:**
   * Displays the application name: Kaohsiung Tourism Ambassador.
   * Introduces core features, such as exploring activities, attractions, parking, and accommodations.
2. **Search Options:**
   * **By Date:** 
   Displays all activities within the specified time frame, alongside nearby attractions, parking facilities, and accommodations.
   * **By Region:** 
   Allows users to select a district (e.g., Zuoying or Qianzhen) to view all attractions, parking facilities, and accommodations in that area.
3. **Review Feature:**
   * Users can rate and review attractions, parking facilities, and hotels.
   * Aggregated reviews and ratings are displayed for each location.
### Core Functionalities
1. **Query Design:**
   * **Date-Based Search:**
   Filters events using a `BETWEEN` clause and retrieves nearby points of interest via distance calculations (e.g., within 1 km).
   * **Region-Based Search:** 
   Filters locations using an `SQL LIKE` query to match the selected region in the address column.
   * **Review Submission:**
   Inserts new reviews into the `comment` table with `INSERT INTO`, and retrieves existing reviews using `SELECT`.
2. **Exception Handling:**
   * Requires user accounts to submit reviews, preventing spam or malicious behavior.
   * Performs input validation to ensure data integrity.
