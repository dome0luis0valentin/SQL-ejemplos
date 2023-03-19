create table products (
	id int not null auto_increment,
    name varchar(50) not null,
    create_by int not null,
    marca varchar(50) not null,
    primary key(id),
    foreign key(create_by) references user(id)
);

rename table products to product;

insert into product ( name, create_by, marca)
values
	('ipad',  1, 'apple'),
    ('iphone',2, 'apple'),
    ('watch', 2, 'apple'),
    ('macbook',1 , 'apple'),
    ('imac',   3, 'apple'),
    ('ipad mini',7 , 'apple');
    
delete from product where id = 18;
    
select * from product;

select u.id, u.email, p.name from user as u left join product as p on u.id = p.create_by;
   
select u.id, u.email, p.name from user as u right join product as p on u.id = p.create_by;

select u.id, u.email, p.name from user as u inner join product as p on u.id = p.create_by;

select count(id), marca from product group by marca;

select * from product;

select count(p.id), u.name from product p left join user u on u.id = p.create_by group by p.create_by;

select count(p.id), u.name from product p left join user u 
on u.id = p.create_by group by p.create_by
having count (p.id) >= 2;















