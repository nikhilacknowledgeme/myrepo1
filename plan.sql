

create database plandb12;
use plandb;
create table plans(plan_id varchar(10),plan_name varchar(20),
validity varchar(20),description varchar(30),
primary key(plan_id));
insert into plans values('P-199','Topup Recharge','30 days'
,'1GB/day,100SMS/day');

insert into plans values('P-399','Regular Recharge','45 days'
,'2GB/day,200SMS/day');

insert into plans values('P-599','Smart Recharge','76 days'
,'3GB/day,300SMS/day');

commit;
select * from plans;

