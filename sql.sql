use test;

create table  question(question_id int not null auto_increment,question varchar(5000),choice1 varchar(255),
choice2 varchar(255),choice3 varchar(255),choice4 varchar(255),correct_answer varchar(255), id int,
score int(11),primary key(question_id));

insert into question(question,choice1,choice2,choice3,choice4,correct_answer,score)values
(' Which of the following is not an OOPS concept in Java?','A. Multiple polymorphism  ','B. Compile time polymorphism','C.Multilevel polymorphism ','D. Execution time polymorphism','D','1')
,('Which exception is thrown when java is out of memory?','A. MemoryError','B. OutOfMemoryError','C. MemoryOutOfBoundsException','D. MemoryFullException','C','1')
,('Which of these are selection statements in Java?','A. break  ','B. continue ','C. for()','D. if()','D','1');

use test;