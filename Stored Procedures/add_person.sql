CREATE DEFINER=`root`@`localhost` PROCEDURE `add_person`(in person_name varchar(300), in email varchar(150), cellno bigint (15), person_type varchar(10))
BEGIN
insert into person (person_name, person_email, cell) values(person_name, email, cellno);
if(person_type = 'student') then
insert into student (person_id, graduation_year, major, type) values 
((select person_id from person where cell = cellno), 2019, 'Computer Science', 'Graduate');
elseif(person_type = 'faculty') then
insert into faculty (person_id, title, degree_college, highest_degree) values 
((select person_id from person where cell = cellno), 'Assistant Professor', 'UCLA', 'PhD');
elseif(person_type = 'staff') then
insert into student (person_id, position, is_admin) values 
((select person_id from person where cell = cellno), 'Bus Driver', 'N');
end if;
END