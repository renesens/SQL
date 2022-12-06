-- Output all fields and all rows.
select * from students;

-- ¬ывести всех студентов в таблице
select name from students;

--¬ывести только Id пользователей
select id from students;

-- ¬ывести только email пользователей
select email from students;

-- ¬ывести им€ и email пользователей
select name, email  from students;

-- ¬ывести id, им€, email и дату создани€ пользователей
select id, name, email, created_on  from students;

-- ¬ывести пользователей где password 12333
select * from students where password = '12333';

-- ¬ывести пользователей которые были созданы 2021-03-26 00:00:00
select name from students where created_on = '2021-03-26 00:00:00';

--  ¬ывести пользователей где в имени есть слово јнна
select name from students where name like '%Anna%';

-- ¬ывести пользователей где в имени в конце есть 8
select name from students where name like '%8';

--¬ывести пользователей где в имени в есть буква а
select name from students where name like '%a%';

-- ¬ывести пользователей которые были созданы 2021-07-12 00:00:00
select name from students where created_on='2021-07-12 00:00:00';

-- ¬ывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
select name from students where created_on='2021-07-12 00:00:00' and password='1m313';

--  ¬ывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
select name from students where created_on='2021-07-12 00:00:00' and name like '%Andrey%';

-- ¬ывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
select name from students where created_on='2021-07-12 00:00:00' and name like '%8%';

-- 17. ¬ывести пользовател€ у которых id равен 110
select * from students where id='110';

-- 18. ¬ывести пользовател€ у которых id равен 153
select * from students where id='153';

-- 19. ¬ывести пользовател€ у которых id больше 140
select * from students where id>140;

-- 20. ¬ывести пользовател€ у которых id меньше 130
select * from students where id<130;

-- 21. ¬ывести пользовател€ у которых id меньше 127 или больше 188
select * from students where id < 127 or id > 188;

-- 22. ¬ывести пользовател€ у которых id меньше либо равно 137
select * from students where id <= 137;

-- 23. ¬ывести пользовател€ у которых id больше либо равно 137
select * from students where id >= 137;

-- 24. ¬ывести пользовател€ у которых id больше 180 но меньше 190
select * from students where id > 180 and id < 190;

-- 25. ¬ывести пользовател€ у которых id между 180 и 190
select * from students where id between 180 and 190;

-- 26. ¬ывести пользователей где password равен 12333, 1m313, 123313
select name,password from students where password in ('12333', '1m313', '123313');

-- 27. ¬ывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select name, created_on from students where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

-- 28. ¬ывести минимальный id
select MIN(id) from students;

-- 29. ¬ывести максимальный.
select MAX(id) from students;

-- 30. ¬ывести количество пользователей
select count(name) from students;

-- 31. ¬ывести id пользовател€, им€, дату создани€ пользовател€. ќтсортировать по пор€дку возрастани€ даты добавлени€ пользоватлел€.
select id, name, created_on from students order by created_on ;

-- 32. ¬ывести id пользовател€, им€, дату создани€ пользовател€. ќтсортировать по пор€дку убывани€ даты добавлени€ пользоватлел€.
select id, name, created_on from students order by created_on desc ;
















