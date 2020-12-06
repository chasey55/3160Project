# 3160 Project
### Group 20: Chase Blackwelder, Neal Borad, Wilson Githiiyi, Luis Gutierrez, Caleb Janvier
Group project for ITCS 3160 -  Database Design and Implementation
<br/>
<br/>
*Headings are placeholders. Sections will be completed as the project progresses*

## Introduction
Our main objective for the project is to understand a test database for a campus controlled food delivery service and enhance it with a rating system for restaurants and delivery drivers. This GitHub site is to hold all of the work that is completed from each deliverable for the project. We are only expanding upon an existing prototype of the test database and not implementing a full model. The following documents and bodies of text highlight the work our group has completed in order to understand the test database and present our implementation of the rating system.
The test database was designed by a previous team of the course, the "Mavericks".
<br/>
<br/>
## Use Case for Rating System
![Image of 3160 Project Use Case for Rating System](https://github.com/chasey55/3160Project/blob/main/images/Rating%20Use%20Case%20Diagram.png)
<br/>
<br/>
## Business Rules
Business Rules

•	This web service will be able to support three types of users(Campus faculty, Staff, Students)

•	Each of the persons will sign up with the system and will be able to include name, email, cell and etc. 

•	Each persons can only have one account under their name. 

•	Students can be drivers if and only if they are approved. 

•	A person can order food one to many times, but the order can only come from one restaurant, each order has a $5 dollar delivery fee, each order is tied to one person.

•	Each restaurant has to be approved within the system.

•	There will be a rating system to rate each restaurant and driver. 
<br/>
<br/>
## EERD
The datbase design contains 12 tables and has the following assumptions:

•	A person creates an order that belongs to a restaurant and driver.

•	A driver can also be a student.

•	Ratings for restuarants and drivers are assigned by a person after an order has been delivered.

•	Each restuarant and driver has a score pertaining to them and is represented in the ratings table design.

•	Each restuarant and driver has a description pertaining to them and is represented in the ratings table design.

![Image of 3160 Project EERD](https://github.com/chasey55/3160Project/blob/main/images/EERD.PNG)
<br/>
<br/>
## Data Dictionary
![Image of 3160 Project Data Dictionary](https://github.com/chasey55/3160Project/blob/main/images/Data%20Dictionary.PNG) 
<br/>
<br/>
## MySQL Queries
[Screenshots of select statements](https://github.com/chasey55/3160Project/tree/main/Screenshots%20of%20Select%20Statements)
<br/>
<br/>
## Stored Procedure
[Stored Procedures](https://github.com/chasey55/3160Project/tree/main/Stored%20Procedures)

One stored procedure for the database is the 'add_rating' procedure. The 'add_rating' procedure inserts the record followed by the attributes associated with the product. 

```mysql 
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_rating`(in rating_id int(11), in person_id int(11), restaurant_id int(11), driver_id int(11), score FLOAT, descr VARCHAR(75))
BEGIN

insert into rating (rating_id, person_id, restaurant_id, driver_id, score, description) 
values(rating_id, person_id, restaurant_id, driver_id, score, descr);

END
```
<br/>
<br/>
## Web/APP Implementation or Description of Future Work
*text here*
<br/>
<br/>
## MySQL Dump
[SQL Dump File](https://github.com/chasey55/3160Project/tree/main/SQL%20Dump%20File)
<br/>
<br/>
## PPT Video
*text here*
<br/>
<br/>
