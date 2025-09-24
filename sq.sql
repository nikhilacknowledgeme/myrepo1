SELECT * FROM schema1.student;
use schema1;
select * from student where address='aundh' and city='pune';
select * from student order by id ;
select * from student where id>=3 and id <=8;
select * from student where id between 3 and 8;
select * from student limit 10;
use schema1;
select firstname,max(salary) from student where id=(select Max(id) from student);
SELECT MAX(salary) FROM student WHERE Salary NOT IN ( SELECT Max(Salary) FROM student WHERE Salary NOT IN ( SELECT Max(Salary) FROM student));accountscustomeremployee