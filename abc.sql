drop database if  exists The_data;
create database if not exists THE_data;
use The_data;

create table Departmen (
DepartmentID int primary key,
Departmentname varchar(50)
);

create table Potiton (
Positionid int primary key,
PositionName varchar(50)
);
create table  Accout (
AccountID int primary key,
Email varchar(50),
Username varchar(50),
FullName varchar(50),
DepartmentID int,
Positionid int,
foreign key (DepartmentID) references departmen

);
create table `Group` (
GroupID int,
GroupName varchar(50),
CreatorID int,
CreateDate date
);
create table `type question` (
TypeID int primary key,
TypeName varchar(50)
);

create table `CategoryQuestion` (
 CategoryID tinyint,
 CategoryName Char(5)
 );
 create table ` Question` (
  QuestionID int primary key,
  Content varchar(50),
  CategoryID int,
  TypeID int,
  CreatorID int,
  CreateDate date,
  foreign key (TypeID) references `type question` 
  );
  create table ` Answer ` (
   AnswerID int,
   Content varchar(50),
   QuestionID int,
   isCorrect Char(5),
   foreign key (QuestionID) references `Question`
   );
    create table `exam` (
    ExamID int,
    `Code` varchar(50),
    Title varchar(50),
    CategoryID int,
     Duration time,
     CreatorID int,
     CreateDate date
     );
     create table  ExamQuestion (
      ExamID int,
      QuestionID int
      );
     
    
   
   
  



 




