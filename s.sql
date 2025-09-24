employeesSELECT * FROM schema1.customer;
use nikhildb;
create table customers(
customerid int(10)primary key auto_increment not null, customername varchar(32),
email varchar(32), phone Varchar(255));
select * from customers;



create table accounts( customerid int,
accountsid int primary key auto_increment not null,
accountstype varchar(10), balance int(50), foreign key(customerid) references customers(customerid));

select customers.customerid,customername,email,accounts.accountid,balance
from customer inner join account on customers.customerid=
accounts.customerid;