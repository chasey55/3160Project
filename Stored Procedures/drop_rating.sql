CREATE DEFINER=`root`@`localhost` PROCEDURE `drop_rating`(id int(11))
BEGIN

DELETE FROM rating
WHERE id = rating_id;

END