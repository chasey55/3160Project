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
The database design contains 12 tables and has the following assumptions:

•	A person creates an order that belongs to a restaurant and driver.

•	A driver can also be a student.

•	Ratings for restaurants and drivers are assigned by a person after an order has been delivered.

•	Each restaurant and driver has a score pertaining to them and is represented in the ratings table design.

•	Each restaurant and driver has a description pertaining to them and is represented in the ratings table design.

![Image of 3160 Project EERD](https://github.com/chasey55/3160Project/blob/main/images/EERD.PNG)
<br/>
<br/>
## Data Dictionary
![Image of 3160 Project Data Dictionary](https://github.com/chasey55/3160Project/blob/main/images/Data%20Dictionary.PNG) 
<br/>
<br/>
## MySQL Queries
[Screenshots of select statements](https://github.com/chasey55/3160Project/tree/main/Screenshots%20of%20Select%20Statements)
<br>
## Function

The functions can be found inside the [SQL Dump File](https://github.com/chasey55/3160Project/tree/main/SQL%20Dump%20File/Campus_Eats_Dump.sql)\
The 'num_of_best_restaurants' is utilized to retrieve the number of restaurants that have a rating of 10.

```mysql
CREATE DEFINER=`root`@`localhost` FUNCTION `num_of_best_restaurants`() RETURNS int
    DETERMINISTIC
BEGIN
DECLARE num_restaurants FLOAT; 
SELECT COUNT(*) INTO num_restaurants
FROM rating
WHERE score = 10;

RETURN num_restaurants;
END ;
```

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

Another stored procedure is the 'calculate_avg_rating' procedure. The 'calculate_avg_rating' procedure uses the 'average_rating' function to calculate the average rating from all rating entries.

```mysql
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_avg_rating`()
    DETERMINISTIC
BEGIN

SELECT average_score();

END
```

## Two Advanced Views
[Advanced Views](https://github.com/chasey55/3160Project/tree/main/Advanced%20Views)

This advanced view finds all restaurants with an average rating of 4 or higher, and displays them in a table.


```mysql
CREATE VIEW `rating_over_4` AS
    SELECT 
        `restaurant`.`restaurant_name` AS `Restaurant`,
        `sub`.`avg_rating` AS `avg_rating`
    FROM
        (`restaurant`
        JOIN (SELECT 
            `rating`.`restaurant_id` AS `restaurant_id`,
                AVG(`rating`.`score`) AS `avg_rating`
        FROM
            `rating`
        GROUP BY `rating`.`restaurant_id`) `sub`)
    WHERE
        (`restaurant`.`restaurant_id` = `sub`.`restaurant_id`)
    GROUP BY `restaurant`.`restaurant_name`
    HAVING (`sub`.`avg_rating` > 4)
    ORDER BY `sub`.`avg_rating` DESC
```

This advanced view gets the average rating for each driver, and gives a general description of the quality of the driver based on their average score. It then displays the description in a table. 

```mysql
CREATE VIEW `driver_description` AS
    SELECT 
        `rating`.`driver_id` AS `driver_id`,
        AVG(`rating`.`score`) AS `avg_score`,
        (CASE
            WHEN (AVG(`rating`.`score`) >= 5) THEN 'This is a good driver.'
            WHEN
                ((AVG(`rating`.`score`) >= 4)
                    AND (AVG(`rating`.`score`) < 5))
            THEN
                'This is an average driver.'
            ELSE 'This is a bad driver.'
        END) AS `Driver Quality Description`
    FROM
        `rating`
    GROUP BY `rating`.`driver_id`
```

### Indexes
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
