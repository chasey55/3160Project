CREATE DEFINER=`root`@`localhost` PROCEDURE `add_rating`(in rating_id int(11), in person_id int(11), restaurant_id int(11), driver_id int(11), score FLOAT, descr VARCHAR(75))
BEGIN

insert into rating (rating_id, person_id, restaurant_id, driver_id, score, description) 
values(rating_id, person_id, restaurant_id, driver_id, score, descr);

END