CREATE TABLE products (
	id int not null auto_increment,
    name varchar(50) not null,
    created_by int not null,
    marca varchar(50) not null,
    primary key (id),
    foreign key(created_by) references user(id)
);

rename table products to product;

insert into product (name, created_by, marca)
values
	('ipad', 1, 'apple'),
	('iphone', 1, 'apple'),
    ('watch', 2, 'apple'),
    ('macbook', 1, 'apple'),
    ('imac', 3, 'apple'),
    ('ipad mini', 2, 'apple');
    
select * from product;

select u.id, u.email, p.name from user u left join product p on u.id = p.created_by; -- LEFT JOIN
select u.id, u.email, p.name from user u right join product p on u.id = p.created_by; -- RIGHT JOIN
select u.id, u.email, p.name from user u inner join product p on u.id = p.created_by; -- INNER JOIN
select u.id, u.name, p.id, p.name from user u cross join product p;					 -- CROSS JOIN
select count(id), marca from product group by marca;								 -- GROUP BY
select count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by;
select count(p.id), u.name from product p left join user u
on u.id = p.created_by group by p.created_by
having count(p.id) >=2;

drop table product;
drop table animales;
drop table user;