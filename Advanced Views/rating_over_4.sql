CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `rating_over_4` AS
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