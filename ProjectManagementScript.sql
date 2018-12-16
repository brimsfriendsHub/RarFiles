--CREATE DATABASE ProjectManagement

--USE ProjectManagement

CREATE TABLE dbo.Parent_Task_Table
(
	ParentTaskId int identity(1,1),
	ParentTaskTitle varchar(500)
)
GO

Create table dbo.Task_Table
(
	TaskId int identity(1,1),
	Title varchar(500),
	ParentTaskId int,
	ProjectId int,
	StartDate datetime,
	EndDate Datetime NULL,
	[Priority] int,
	[Status] varchar(3)
)
GO

Create table dbo.Project_Table
(
	ProjectId int identity(1,1),
	Title varchar(500),
	StartDate datetime,
	EndDate Datetime null,
	[Priority] int,	
)
GO

Create table dbo.Users_Table
(
	UserId int identity(1,1),
	FirstName varchar(500),
	LastName varchar(500),
	EmployeeId int,
	ProjectId int,
	TaskId int
)
GO