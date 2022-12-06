-- Output all fields and all rows.
select * from students;

-- Output all students in the table
select name from students;

--Output only Id users
select id from students;

-- Output users' emails only
select email from students;

-- Display name and email of users
select name, email  from students;

-- Output users' id, name, email and creation date
select id, name, email, created_on  from students;

-- Output users where password 12333
select * from students where password = '12333';

-- Output users who were created 2021-03-26 00:00:00
select name from students where created_on = '2021-03-26 00:00:00';

--  Display users with the word Anna in their name
select name from students where name like '%Anna%';

-- Output users with an 8 at the end of their name
select name from students where name like '%8';

--Output users with the letter a in their name
select name from students where name like '%a%';

-- Output users who were created 2021-07-12 00:00:00
select name from students where created_on='2021-07-12 00:00:00';

-- Display users who were created 2021-07-12 00:00:00 and have a password of 1m313
select name from students where created_on='2021-07-12 00:00:00' and password='1m313';

--  Display the users who were created 2021-07-12 00:00:00 and who have the word Andrey in their name
select name from students where created_on='2021-07-12 00:00:00' and name like '%Andrey%';

-- Display users who were created 2021-07-12 00:00:00 and who have a number 8 in their name
select name from students where created_on='2021-07-12 00:00:00' and name like '%8%';

-- Output the user whose id is 110
select * from students where id='110';

-- Output the user whose id is 153
select * from students where id='153';

--  Display users with an id greater than 140
select * from students where id>140;

-- Output the user whose id is less than 130
select * from students where id<130;

--  Display users with an id less than 127 or greater than 188
select * from students where id < 127 or id > 188;

--  Output the user whose id is less than or equal to 137
select * from students where id <= 137;

-- Output the user with an id greater than or equal to 137
select * from students where id >= 137;

-- Display users with an id greater than 180 but less than 190
select * from students where id > 180 and id < 190;

--  Output the user whose id is between 180 and 190
select * from students where id between 180 and 190;

-- Output users where password is 12333, 1m313, 123313
select name,password from students where password in ('12333', '1m313', '123313');

-- Output users where created_on is 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select name, created_on from students where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

--  Output the minimum id
select MIN(id) from students;

-- Output the maximum.
select MAX(id) from students;

-- Output the number of users
select count(name) from students;

-- Output user id, name, date the user was created. Sort in ascending order of the date the user was added.
select id, name, created_on from students order by created_on ;

-- Output user id, name, date the user was created. Sort in descending order of the date the user was added.
select id, name, created_on from students order by created_on desc ;
















