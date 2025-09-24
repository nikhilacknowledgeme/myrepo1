create table customer(customer_Id int primary key auto_increment not null,customer_name varchar(255)
,customer_city varchar(255),customer_state varchar(255));


caccountreate table account(customer_Id int,account_Id int primary key auto_increment not null  , account_type varchar(255)
,account_balance int(125),foreign key(customer_id) references customer(customer_Id));

insert into customer(customer_name,customer_city,customer_state)values("shreya","pune","maharashtra"),("ram","pune","maharashtra"),
("shreyash","mumbai","maharashtra"),("rahul","nagpur","maharashtra");

insert into account(account_type,account_balance)values("saving","5000"),("current","6000"),
("saving","7000"),("current","8000");


select customer_id,customer_name,customer_city,customer_state from customer inner join account on customer.customer_Id = account.customer_Id;
student