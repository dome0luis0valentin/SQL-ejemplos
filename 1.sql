CREATE TABLE user(
	id int not null auto_increment,
    name varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    primary key (id)
);

INSERT INTO user(name, edad, email) values('Oscar', 20, 'oscar@gmail.com'); 
INSERT INTO user(name, edad, email) values('Laila', 21, 'laila@gmail.com'); 
INSERT INTO user(name, edad, email) values('Jose', 22, 'jose@gmail.com'); 
INSERT INTO user(name, edad, email) values('Hernan', 23, 'hernan@gmail.com'); 

select * from user;

select * from user limit 1;

select * from user where edad > 21;

select * from user where edad >= 21;

select * from user where edad > 21 and email = 'jose@gmail.com';
select * from user where edad > 21 or email = 'jose@gmail.com';

delete from user where id = 5 or id = 6;

select * from user where email like '%@gmail%';

select * from user where email like '%@gmail';

select * from user where email like 'oscar%';

select * from user order by edad asc;
select * from user order by edad desc;

select max(edad) as mayor from user;
select min(edad) as menor from user;

select id, name as nombre from user;

