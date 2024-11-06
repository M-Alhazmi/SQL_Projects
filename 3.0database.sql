--CREATE TABLE comments 

--( 

--  comment_ID    INT          NOT NULL, 

--  Text          VARCHAR(255) NOT NULL, 

--  posting_time  DATETIME     NOT NULL, 

--  Commenter_ID INT       NOT NULL, 

--  Project_ID    INT       NOT NULL, 

--  PRIMARY KEY (comment_ID)  

--); 

  

--CREATE TABLE Person 

--( 

--  SSN          INT           NOT NULL, 

--  First_Name   VARCHAR(11)   NOT NULL, 

--  Second_Name  VARCHAR(11)   NOT NULL, 

--  Last_Name    VARCHAR(11)   NOT NULL, 

--  Email        NVARCHAR(max) NOT NULL, 

--  Sex          VARCHAR(10)   NOT NULL, 

--  Phone_number VARCHAR(10)   NOT NULL, 

--  Password     NVARCHAR(max) NOT NULL, 

--  Work_Type    NVARCHAR(MAX) NOT NULL, 

--  PRIMARY KEY (SSN) 

--); 

  

--CREATE TABLE Project 

--( 

--  Project_ID    INT      NOT NULL, 

--  Title         VARCHAR(50) NOT NULL, 

--  Start_date    DATETIME     NOT NULL, 

--  End_date      DATETIME     NOT NULL, 

--  Supervisor_ID INT      NOT NULL, 

--  Team_ID       INT       NOT NULL, 

--  PRIMARY KEY (Project_ID) 

--); 

  

--CREATE TABLE Student 

--( 

--  Student_ID     INT  NOT NULL, 

--  Team_ID      INT NOT NULL, 

--  S_SSN         int  NOT NULL, 

--  PRIMARY KEY (Student_ID) 

   

--); 

  

--CREATE TABLE Supervisor 

--( 

--  Supervisor_ID   INT      NOT NULL, 

--  Rank          VARCHAR(11) NOT NULL, 

--  SP_SSN         int  NOT NULL, 

--  PRIMARY KEY (Supervisor_ID) 

--); 

  

--CREATE TABLE Tasks 

--( 

--  Task_ID   INT         NOT NULL, 

--  P_SSN        INT         NOT NULL, 

--  Title      VARCHAR(11) NOT NULL, 

--  priority   VARCHAR(11) NOT NULL, 

--  due_date   DATETIME     NOT NULL, 

--  Project_ID INT      NOT NULL, 

--  PRIMARY KEY (Task_ID) 

--); 

  

--CREATE TABLE Team 

--( 

--  Team_ID       INT  NOT NULL, 

--  Supervisor_ID INT NOT NULL, 

--  PRIMARY KEY (Team_ID) 

--); 

  

--ALTER TABLE Student 

--  ADD CONSTRAINT FK_Student_TO_Person 

--    FOREIGN KEY (S_SSN) 

--    REFERENCES Person (SSN); 

  

--ALTER TABLE Student 

--  ADD CONSTRAINT FK_Student_TO_Team 

--    FOREIGN KEY (Team_ID) 

--    REFERENCES Team (Team_ID); 

  

--ALTER TABLE Team 

--  ADD CONSTRAINT FK_Team_TO_Supervisor 

--    FOREIGN KEY (Supervisor_ID) 

--    REFERENCES Supervisor (Supervisor_ID); 

  

--ALTER TABLE Tasks 

--  ADD CONSTRAINT FK_Tasks_TO_Person 

--    FOREIGN KEY (P_SSN) 

--    REFERENCES Person (SSN); 

  

--ALTER TABLE Tasks 

--  ADD CONSTRAINT FK_Tasks_TO_Project 

--    FOREIGN KEY (Project_ID) 

--    REFERENCES Project (Project_ID); 

  

--ALTER TABLE comments 

--  ADD CONSTRAINT FK_Comments_TO_Supervisor 

--    FOREIGN KEY (Commenter_ID) 

--    REFERENCES Supervisor (Supervisor_ID); 

  

--ALTER TABLE comments 

--  ADD CONSTRAINT FK_Comments_TO_Project 

--    FOREIGN KEY (Project_ID) 

--    REFERENCES Project (Project_ID); 

  

--ALTER TABLE Project 

--  ADD CONSTRAINT FK_Supervisor_TO_Project 

--    FOREIGN KEY (Supervisor_ID) 

--    REFERENCES Supervisor (Supervisor_ID); 

  

--ALTER TABLE Project 

--  ADD CONSTRAINT FK_Team_TO_Project 

--    FOREIGN KEY (Team_ID) 

--    REFERENCES Team (Team_ID); 

  

--ALTER TABLE Supervisor 

--  ADD CONSTRAINT FK_Supervisor_TO_Person 

--    FOREIGN KEY (SP_SSN) 

--    REFERENCES Person (SSN); 

  

--insert into person  

--values (0011223344,'ahmad','marwan','algharbi','ahmad@gmail.com','male','0551112222','adfer@#8904f','student') 

--insert into person  

--values (0011223355,'mohammed','yasser','alharbi','mohammed@gmail.com','male','0551113333','adfer@#5498','student') 

--insert into person  

--values (0011223366,'yasser','khaled','alamri','yasser@gmail.com','male','0551114444','adfer@#3215','student') 

--insert into person  

--values (0011223377,'ahmad','khaled','alsehli','ahmad@gmail.com','male','0551115555','adfer@#2468','student') 

--insert into person  

--values (0011223388,'abdullah','khaled','alsehli','ahmad@gmail.com','male','0551115555','adfer@#2468','supervisor') 

  

  

--insert into supervisor 

--values(00112,'Doctor',0011223388) 

  

--insert into team 

--values(001,00112) 

  

--insert into student  

--values(0000,001,0011223344) 

--insert into student  

--values(0001,001,0011223355) 

--insert into student  

--values(0002,001,0011223366) 

--insert into student  

--values(0003,001,0011223377) 

  

--insert into project  

--values(0000,'projects management','2023-05-05 12:12:10.000','2024-05-05 10:10:00.000',00112,001) 

  

  

--insert into comments 

--values(1,'Change manage to create one for project and one for team','2023-05-18 08:15:10.120',112,0000) 

  

--insert into tasks 

--values(11,0011223388,'schema','high','2023-05-19 05:30:55.000',0000) 

--SELECT tasks.task_id , tasks.title , priority , due_date ,tasks.project_ID, project.title , project.team_id from Tasks INNER JOIN project on project.project_ID = tasks.project_ID  
SELECT comment_id ,Text ,posting_time ,commenter_id , project.title, project.team_id from comments INNER JOIN project on comments.project_ID = comments.project_ID 

 