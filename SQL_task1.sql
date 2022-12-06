-- Output all fields and all rows.
select * from students;

-- ������� ���� ��������� � �������
select name from students;

--������� ������ Id �������������
select id from students;

-- ������� ������ email �������������
select email from students;

-- ������� ��� � email �������������
select name, email  from students;

-- ������� id, ���, email � ���� �������� �������������
select id, name, email, created_on  from students;

-- ������� ������������� ��� password 12333
select * from students where password = '12333';

-- ������� ������������� ������� ���� ������� 2021-03-26 00:00:00
select name from students where created_on = '2021-03-26 00:00:00';

--  ������� ������������� ��� � ����� ���� ����� ����
select name from students where name like '%Anna%';

-- ������� ������������� ��� � ����� � ����� ���� 8
select name from students where name like '%8';

--������� ������������� ��� � ����� � ���� ����� �
select name from students where name like '%a%';

-- ������� ������������� ������� ���� ������� 2021-07-12 00:00:00
select name from students where created_on='2021-07-12 00:00:00';

-- ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313
select name from students where created_on='2021-07-12 00:00:00' and password='1m313';

--  ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� Andrey
select name from students where created_on='2021-07-12 00:00:00' and name like '%Andrey%';

-- ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8
select name from students where created_on='2021-07-12 00:00:00' and name like '%8%';

-- 17. ������� ������������ � ������� id ����� 110
select * from students where id='110';

-- 18. ������� ������������ � ������� id ����� 153
select * from students where id='153';

-- 19. ������� ������������ � ������� id ������ 140
select * from students where id>140;

-- 20. ������� ������������ � ������� id ������ 130
select * from students where id<130;

-- 21. ������� ������������ � ������� id ������ 127 ��� ������ 188
select * from students where id < 127 or id > 188;

-- 22. ������� ������������ � ������� id ������ ���� ����� 137
select * from students where id <= 137;

-- 23. ������� ������������ � ������� id ������ ���� ����� 137
select * from students where id >= 137;

-- 24. ������� ������������ � ������� id ������ 180 �� ������ 190
select * from students where id > 180 and id < 190;

-- 25. ������� ������������ � ������� id ����� 180 � 190
select * from students where id between 180 and 190;

-- 26. ������� ������������� ��� password ����� 12333, 1m313, 123313
select name,password from students where password in ('12333', '1m313', '123313');

-- 27. ������� ������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select name, created_on from students where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

-- 28. ������� ����������� id
select MIN(id) from students;

-- 29. ������� ������������.
select MAX(id) from students;

-- 30. ������� ���������� �������������
select count(name) from students;

-- 31. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� �������������.
select id, name, created_on from students order by created_on ;

-- 32. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� �������������.
select id, name, created_on from students order by created_on desc ;
















