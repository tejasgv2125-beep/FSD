create database login_demo_ise;
use login_demo_ise;
Create table users(
id int auto_increment primary key,
username varchar(50),
password varchar(50));

Insert into users(username,password) values
('Tejas','tejas@gmail.comm'),('Shreya','shreya@gmail.com'),('amit','amit@gmail.com'),('poojith','poojith@gmail.com'),('heamanth','heamanth@gmail.com');

select * from users;

select * From users where username='amit' and password='amit@gmail.com';
-- invalid login
select * From users where username='amit' and password='wrongPass';

select * From users where username='' or '1'='1';