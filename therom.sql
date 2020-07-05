drop database if exists SSK_DATA ;
create database if not exists SSK_DATA ;
use SSK_DATA ;
CREATE TABLE `Trainee` (
    TraineeID INT  auto_increment  PRIMARY KEY,
    Full_Name NVARCHAR(50) 	NOT NULL,
    Birth_Date DATE NOT NULL,
    Gender ENUM('Male', 'Female' , 'unknown') NOT NULL,
    ET_IQ INT(3) NOT NULL,
    ET_Gmath INT(3) NOT NULL,
    ET_English INT(3) NOT NULL,
    Training_Class INT primary key,
    Evaluation_Notes TEXT NOT NULL,
    constraint pk_Trainee PRIMARY KEY (TraineeID,Training_class)
) ;

alter table Trainee
ADD  Vti_account int not null FIRST ; 







