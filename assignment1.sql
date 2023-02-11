drop database if exists fresh_training_management;
create database if not exists fresh_training_mangement;
use fresh_training_mangement;
drop database if exists Trainee;
create database if not exists Trainee;
create table Trainee(
TraineeID int primary key auto_increment,
Full_name varchar(100) not null unique,
Brith_Date date,
Gender enum('male','female','unknow'),
ET_IQ tinyint check (ET_IQ > 0 and ET_IQ <=20),
ET_Gmath tinyint check (ET_Gmath >=0 and ET_Gmath <=20),
ET_English tinyint check (ET_English >=0 and ET_English <=20),
Traning_class varchar(100) not null,
Evaluation_notes varchar(500)
);
alter table trainee 
add VTI_account varchar(100) not null unique;



