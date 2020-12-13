CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_avg_rating`()
    DETERMINISTIC
BEGIN
SELECT average_score();
END