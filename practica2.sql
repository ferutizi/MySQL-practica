CREATE TABLE user (
	id int not null auto_increment,
    name varchar(50) not null,
    age int not null,
    email varchar(100) not null,
    primary key (id)
);

INSERT INTO user (name, age, email) values ('Oscar', 25, 'oscar@gmail.com');
INSERT INTO user (name, age, email) values ('Layla', 15, 'layla@gmail.com');
INSERT INTO user (name, age, email) values ('Nicolas', 36, 'nico@gmail.com');
INSERT INTO user (name, age, email) values ('Jorge', 7, 'jorge@hotmail.com');

SELECT * from user;
SELECT * from user limit 2;
SELECT * from user where age > 15;
SELECT * from user where age >= 15;
SELECT * from user where age > 10 and age < 30;
SELECT * from user where age > 10 or email = 'layla@gmail.com';
SELECT * from user where age > 10 and email = 'nico@gmail.com';
SELECT * from user where age between 15 and 30;
SELECT * from user where email != 'layla@gmail.com';
SELECT * from user where email like '%gmail%';
SELECT * from user where email like '%.com';

SELECT * from user order by age asc;
SELECT * from user order by age desc;

SELECT max(age) as mayor from user;
SELECT min(age) as menor from user;

SELECT id, name from user;
SELECT id, name as nombre from user;
SELECT id as identificador, name as nombre from user;