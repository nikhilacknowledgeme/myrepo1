use practicedb;
create table Students(
StudentId int primary key,
FirstName varchar(50),
LastName varchar(50),
Gender char(1),
Email varchar(100) unique,
PhoneNumber varchar(15),
Address varchar(255)
);
insert into Students(StudentId,FirstName,LastName,Gender,Email,PhoneNumber,Address)
values(1,'Jay','Shah','M','jay@gmail.com','932-832-2334','123 Main st,Cityvilla'),
(2,'Ajay','Mehata','M','Ajay@gmail.com','993-831-2224','321 Main Road ,Thomvillaa'),
(3,'Ram','Singh','M','ram@gmail.com','977-992-9934','212 Disney Land,Romains House'),
(4,'Shrikant','Patel','M','Shrikant@gmail.com','932-900-9834','543 Orange Villa, B-Town'),
(5,'Samantha','Prabha','F','Samantha@gmail.com','992-832-4383','342 Bandra Kurla, The Villa'),
(6,'Rashmika','Mandanna','F','rashmika@gmail.com','998-763-2334','322 City Land, The House of town'),
(7,'Aishwarya','Rai','F','Aishwarya@gmail.com','932-734-8433','193 Dubai ,Twins Tower '),
(8,'Chetan','Kumar','M','chetan@gmail.com','883-344-4829','178 Streat ,Pinkvilla'),
(9,'Amitabh','Bachan','M','amitabh@gmail.com','837-888-2323','092 Honour of  house,The villa'),
(10,'Viajy','Setupati','M','vijay@gmail.com','992-934-7483','324 Main Land, Bussiness House'),


DELIMITER //
CREATE PROCEDURE GetStdInfo(In id INT)
BEGIN
SELECT *
FROM students
WHERE StudentID=id;
END;
//
DELIMITER ;

Call GetStdInfo(5);

DELIMITER //
CREATE PROCEDURE GetStdInfo1(In stdid INT)
BEGIN
SELECT FirstName,LastName
FROM students
WHERE StudentID=stdid;

SELECT PhoneNumber
FROM students
WHERE StudentID=stdid;
END;
//
DELIMITER ;

Call GetStdInfo1(5);
