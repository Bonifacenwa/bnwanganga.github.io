USE [october_Cohort]
GO

SELECT [EmpId]
      ,[FullName]
      ,[ManagerId]
      ,[DateOfJoining]
      ,[City]
  FROM [dbo].[EMPLOYEE DEATILS]

GO


UPDATE [dbo].[EMPLOYEE DEATILS]
SET [DateOfJoining] ='01/31/2019' 
WHERE [EmpId]='121'

SELECT *
FROM [dbo].[EMPLOYEE DEATILS]

UPDATE [dbo].[EMPLOYEE DEATILS]
SET [DateOfJoining] ='01/30/2020' 
WHERE [EmpId]='321'


--1	. Write an SQL query to fetch the EmpId and FullName of all the employees working under the Manager with id – ‘986’.
SELECT  [EmpId],[FullName]
FROM [dbo].[EMPLOYEE DEATILS]
WHERE [ManagerId]='986'

--2	Write an SQL query to fetch the different projects available from the EmployeeSalary table.
SELECT [Project]
FROM [dbo].[EMPLOYEE SALARY]

--3	Write an SQL query to fetch the count of employees working in project ‘P1’.
SELECT COUNT([Project])
FROM [dbo].[EMPLOYEE SALARY]
WHERE [Project] = 'P1'

--4	Write an SQL query to find the maximum, minimum, and average salary of the employees.
SELECT MAX([Salary])
FROM [dbo].[EMPLOYEE SALARY]

SELECT MIN([Salary])
FROM [dbo].[EMPLOYEE SALARY]

SELECT AVG([Salary])
FROM [dbo].[EMPLOYEE SALARY]

--5	Write an SQL query to find the employee id whose salary lies in the range of 9000 and 15000.

select [EmpId]
from [dbo].[EMPLOYEE SALARY]
where [Salary] between 9000 and 15000

--6	Write an SQL query to fetch those employees who live in Toronto and work under the manager with ManagerId – 321.
SELECT [EmpId],[FullName]
FROM [dbo].[EMPLOYEE DEATILS]
WHERE [City]='TORONTO' AND [ManagerId]='321'

--7	Write an SQL query to fetch all the employees who either live in California or work under a manager with ManagerId – 321.

SELECT [EmpId],[FullName]
FROM [dbo].[EMPLOYEE DEATILS]
WHERE [City]='CALIFORNIA' OR [ManagerId]='321'

--8	Write an SQL query to fetch all those employees who work on Projects other than P1.
SELECT [EmpId]
FROM [dbo].[EMPLOYEE SALARY]
WHERE NOT [Project]='P1'


--9	Write an SQL query to display the total salary of each employee adding the Salary with Variable value.
SELECT [Salary]
FROM [dbo].[EMPLOYEE SALARY]


--10	Write an SQL query to fetch the employees whose name begins with any two characters, followed by a text “hn” and ends with any sequence of characters.
SELECT [FullName]
FROM [dbo].[EMPLOYEE DEATILS]
WHERE [FullName] LIKE '__HN%'

--11	Write an SQL query to fetch all the EmpIds which are present in either of the tables – ‘EmployeeDetails’ and ‘EmployeeSalary’.

select * 
from [dbo].[EMPLOYEE DEATILS]
where [EmpId] in (select [EmpId]
				from [dbo].[EMPLOYEE SALARY]
				where [Project] = 'P1')
