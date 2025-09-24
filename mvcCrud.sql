create database Hotelproducts;
use Hotelproducts;
create database Hotel;
use Hotel;

create database mvcCrud;
use mvcRegister;
show tables;
select * from citizen_plans_info;

create table users(username varchar(20) primary key,
password varchar(20),enabled integer(1) );

create table authorities(username varchar(20) references users(username),
authority varchar(30));

insert into users values('Sahoo','sahoo@123',1);

insert into users values('Ajay','ajay@123',0);

insert into users values('Vijay','vijay@123',0);

insert into authorities values('Sahoo','ROLE_ADMIN');
insert into authorities values('Ajay','ROLE_USER');
insert into authorities values('Vijay','ROLE_ADMIN');

commit;

select * from users;

select * from authorities;

update users set enabled=1 where username='Ajay';
commit;