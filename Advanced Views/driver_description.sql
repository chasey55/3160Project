CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `driver_description` AS
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