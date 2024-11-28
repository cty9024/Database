# Final Project: Kaohsiung Tourism Web Application

**Course:** Introduction to Database Systems  
**Instructor:** Prof. Wen-Chih Peng
**Team Members:** Ting-Yun Chen, Shu-Hao Chang, Chia-Ni Ho

--- 

## Introduction
This project aims to provide a user-friendly web application for exploring activities, attractions, parking facilities, and accommodations in Kaohsiung. Users can search by date or region and access comprehensive information to enhance their travel experience.

## Database
We used **MySQL** as our database system and implemented dynamic updates using government APIs:
* **Parking/Hotels:** Updates are made based on Primary Key.
* **Attractions:** New entries are added if name does not already exist.
* **Events:** Entries with an end date in the past are removed, and new data is added.
* **Comments:** Existing comments are replaced when a duplicate name and user are found.
### Database Connection
The application is connected to the MySQL database using PHP. Queries are executed through the `mysqli_query()` function, with clear exception handling to ensure secure and error-free interactions.

## Application
### Interface
1. Homepage:
* Displays the application name: Kaohsiung Tourism Ambassador.
* Introduces core features to promote Kaohsiung's tourism activities.
2. Search Options:
* **By Date:** Displays all activities occurring within the specified time frame. Nearby attractions, parking, and accommodations are shown for each activity.
* **By Region:** Users select a district (e.g., Zuoying or Qianzhen) to view all attractions, parking, and accommodations in that area.
3. Review Feature:
* Allows users to rate and review attractions, parking, and hotels.
* Displays aggregated reviews and ratings for each location.
### Functionality
1. Query Design:
* Date-Based Search: Filters events using a BETWEEN clause and retrieves nearby points of interest using distance calculations (e.g., within 1 km).
* Region-Based Search: Filters locations using an SQL LIKE query to match the selected region in the address column.
* Review Submission: Inserts new reviews into the comment table using INSERT INTO, and retrieves existing reviews with a SELECT query.
2. Exception Handling:
* User accounts are required to submit reviews, preventing spam or malicious behavior.
* Input validation is performed to maintain data integrity.
