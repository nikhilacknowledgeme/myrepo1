use testingjoins;

create table customer(customerid int(11) primary key auto_increment not null,
customername varchar(255), email varchar(255), mobile varchar(255));


create table account(customerid int, accountid int primary key auto_increment
not null, accounttype varchar(11),balance int(125), foreign key(customerid)
references customer(customerid));

insert into customer(customername , email , mobile )values
         ('akshay','akshaydeshmukh@gmail.com','9888855000'),
         ('ajay','patil@gmail.com','988145000'),('sachin','pawar@gmail.com','9888065000');
         
insert into account(customerid , accounttype , balance )values
         ('1','saving','55000'),
         ('2','current','75000'),('1','saving','65000'); 
         
         
         select customerid from customer union  select accountid from account;
         
   select customer.customername,email,account.accountid,balance from customer
left join account on customer.customerid=account.customerid;  

insert into account(customerid , accounttype , balance )values
         ('3','saving','55000');
      create view customer1 as   
  
select customer.customerid,customername,email,account.accountid,balance
from customer inner join account on customer.customerid=
account.customerid;      

select * from customer left join account
on customer.customerid=account.customerid union

select * from customer right join account
on customer.customerid=account.customerid;

create table Student(Stud_id int(125) not null );
create table Emp( emp_id int(125) not null
references Student(Stud_id));
insert into Student(Stud_id)values(1),(1),(1);
insert into Emp(emp_id )values(1),(1),(1);

select customer.customerid,customername,email,account.accountid,balance
from customer inner join account on customer.customerid=
account.customerid; 

select Student Stud_id,Emp emp_id from Student inner join Emp on Student.Stud_id=
Student.emp_id;    