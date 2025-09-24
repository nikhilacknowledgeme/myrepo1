use minipoject;

create table  question(question_id int not null auto_increment,question varchar(5000),choice1 varchar(255),
choice2 varchar(255),choice3 varchar(255),choice4 varchar(255),correct_answer varchar(255), id int,
question_marks int(11),primary key(question_id),foreign key(id) REFERENCES  student(id));


insert into question(question,choice1,choice2,choice3,choice4,correct_answer)values
-- ('Which statement is true about Java?','','','','','','1')
-- ,('What is the extension of java code files ?','','','','','','1'),
-- ('Who invented Java Programming?','','','','','','1')
-- ,('Which one of the following is not a Java feature?','','','','','','1')
-- ,('Which of these cannot be used for a variable name in Java?','','','','','','1')
-- ,('Which environment variable is used to set the java path?','','','','','','1')
(' Which of the following is not an OOPS concept in Java?','A. Multiple polymorphism  ','B. Compile time polymorphism','C.Multilevel polymorphism ','D. Execution time polymorphism','D','1')
,('Which exception is thrown when java is out of memory?','A. MemoryError','B. OutOfMemoryError','C. MemoryOutOfBoundsException','D. MemoryFullException','C','1')
,('Which of these are selection statements in Java?','A. break  ','B. continue ','C. for()','D. if()','D','1');

         



show tables;


create table answer(student_id int not null auto_increment,question_id(50),answer varchar(255));


create table student(id int not null auto_increment,
firstname varchar(255),lastname varchar(255),
address varchar(255), city varchar(255),country varchar(255),
primary key(id));
show tables;
