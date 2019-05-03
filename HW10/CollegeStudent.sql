Create Database CollegeStudent
go
Use CollegeStudent

CREATE TABLE Students(
StudentsID INT IDENTITY NOT NULL PRIMARY KEY,
FName VARCHAR(25),
LName VARCHAR(25),
SSN INT,
[Address]VARCHAR(25),
City VARCHAR (30),
[State] VARCHAR (30),
Zip INT,
PhoneNumber BIGINT,)

INSERT INTO Students
	Values('Wilman','Kala','777251425','45 Keskuskatu Road','Milborn', 'Norway','23211','5128567745');

INSERT INTO Students
	Values('Greg','Howard','525859687','1478 Maple Road','Hillsdale','Michigan','44174','7742451455');

INSERT INTO Students
	Values('Stacy','MilHouse','968479633','21870 Haper Road','Bradford','Flordia', '32008','2168744425');

INSERT INTO Students
	Values('James','Walker III','525983304','965 Clay Drive','Allen','Texas','75013','4712123310');

INSERT INTO Students
	Values('Katy','Bradshaw','41257455','3389 Riverside Prk','Irving','Flordia','55712','7142554711');


CREATE TABLE Classes(
ClassesID INT IDENTITY NOT NULL PRIMARY KEY,
TitleID VARCHAR(30),
Number INT,
Department VARCHAR(40),)

INSERT INTO Classes
	Values('Physics I','101','Biology');

INSERT INTO Classes
	Values('Algebra II','102','Math');

INSERT INTO Classes
	Values('Language Arts','103','English');



CREATE TABLE AssignTypes(
AssignTypeID INT IDENTITY NOT NULL PRIMARY KEY CLUSTERED,
HomeWorkID VARCHAR (50),
QuizID VARCHAR (50),
LABID VARCHAR (50),
EXAMID VARCHAR (50),
)


CREATE TABLE Scores(
ScoresID INT IDENTITY NOT NULL PRIMARY KEY,
DateAssigned Date NOT NULL,
DateDue Date NOT NULL,
DateSubmitted Date NOT NULL,
PointsEarned INT,
PointsPossible INT,
)

INSERT INTO Scores
		Values('01/17/2017','01/27/2017','01/26/2017','80','100');

INSERT INTO Scores	
		Values ('02/07/2017','02/16/2017','02/15/2017','70','75');

INSERT INTO Scores	
       Values ('03/05/2017','03/15/2017','03/17/2017','100','100');

 INSERT INTO Scores         
	   Values('04/10/2017','04/17/2017','04/26/2017','25','30');

CREATE TABLE ConTable(
ConTableID	INT IDENTITY NOT NULL PRIMARY KEY CLUSTERED,
FK_Students_StudentsID INT NOT NULL REFERENCES dbo.Students(StudentsID), 
FK_Classes_ClassesID INT  NOT NULL REFERENCES dbo.Classes(ClassesID),
AssignTypesID INT  NOT NULL REFERENCES dbo.AssignTypes(AssignTypeID),
ScoresID INT IDENTITY NOT NULL,

select * from Students
select * from Classes
select * from Scores
select * from AssignTypes
