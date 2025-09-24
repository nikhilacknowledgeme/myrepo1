-- ******************************************************************************************************* 
use test;
show databases;
show tables;
desc employee;
create table employee(id int not null auto_increment,
firstname varchar(255),lastname varchar(255),
address varchar(255), city varchar(255), salary varchar(255),
primary key(id));

insert into employee1(id,firstname,lastname,address,city,salary)values
         (1,'akshay','deshmukh','deccan','pune','55000'),
         (2,'ajay','patil','dadar','mumbai','95000'),
         (3,'sachin','pawar','nigadi','pune','65000'),
         (4,'rahul','patel','baner','pune','71000'),
         (5,'sharad','jadhav','andhari','mumbai','85000');
         
         
		-- 1) Display all record from employee table 
        select * from employee;
        
        -- 2)Display the total id count from employee table. 
        select count(id) from employee;
        
        -- 3)  Display the sum of total salaries which is present into employee table.
        select sum(salary)from employee; 
        
        -- 4)Display the min and Max salary from employee table
             select min(salary) from employee;
             select max(salary) from employee;

    -- 5) Display all the employees firstName, lastName  with salaries between 35000 to 60000
    select firstname,lastname from employee where salary>=35000 and salary<=60000;
    -- or 
    select firstname,lastname from employee where salary between 35000 and 60000;
    --  ************************************************************************************* 
    -- 6) Design the SQL query to sort by desending order based on firstName
    select * from employee order by firstname desc;
    
    -- 7) Design the SQL query to update city as pune for all the employees.
update employee set city="pune" where id=1 ; 
update employee set city="pune" where id=2 ;
update employee set city="pune" where id=3 ;
update employee set city="pune" where id=4 ;
update employee set city="pune" where id=5 ;

-- or 

update test.employee set city='mumbai' where id>=1; 

-- *****************************************************************************************************