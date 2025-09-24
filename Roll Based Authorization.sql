create database Hotel;
use Hotel;

create table users(username varchar(20) primary key,
password varchar(20),enabled integer(1) );

create table authorities(username varchar(20) references users(username),
authority varchar(30));

insert into hotel values('Sahoo','sahoo@123',1);

insert into users values('Ajay','ajay@123',0);

insert into users values('Vijay','vijay@123',0);

insert into authorities values('Sahoo','ROLE_ADMIN');
insert into authorities values('Ajay','ROLE_USER');
insert into authorities values('Vijay','ROLE_ADMIN');