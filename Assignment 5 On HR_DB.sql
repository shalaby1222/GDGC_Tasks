-- Q1
select count(*) as "Number Of Employee"
from Employees ;

--Q2
select e.DepartmentID ,count(*) as "Number Of Employee"
from Employees e
group by e.DepartmentID;

--Q3
select count(*) as "Number  Of Employee  with  Bonus"
from Employees e
where e.BonusPerc is not null;

--Q4
select SUM(e.MonthlySalary) as "Total  Salary "
from Employees e;

--Q5
select e.DepartmentID ,SUM(e.MonthlySalary) as "Total  Salary  for  each  department"
from Employees e
group by e.DepartmentID;

--Q6
select AVG(e.MonthlySalary) as "Average  Salary "
from Employees e;

--Q7 
select top 1 Name as "Short Name"
from Countries
order by len(name) ASC; --تصاعدي

--Q8
select CountryID , COUNT(e.DepartmentID) as "Department  Count" 
from Employees e
group by CountryID ;

--Q9
select DepartmentID , AVG(e.MonthlySalary) as "Average Salary"
from Employees e 
group by DepartmentID;

--Q10
select MIN(e.MonthlySalary) as "Lowest  Salary "
from Employees e;

--Q11  
select  top 1 DepartmentID , AVG(MonthlySalary) as "lowest average salary"
from Employees 
group by DepartmentID
order by "lowest average salary" ASC; --تصاعدي

--Q12
select MAX(e.MonthlySalary) as "Highest salary"
from Employees e;

--Q13 
select top 1 DepartmentID ,sum(MonthlySalary) as  "highest total salary"
from Employees 
group by DepartmentID
order by "highest total salary" desc ; -- تنازلي

--Q14 
select CountryID, COUNT(*) as "Hired Employee"  ,YEAR(e.HireDate) as "Hire Year"
from Employees e
group by CountryID , YEAR(e.HireDate)

--Q15
select CountryID , COUNT(*) as "ExitedEmployees" 
from Employees e
WHERE ExitDate IS NOT NULL 
group by CountryID  ;

--Q16
select ISNULL(c.Name ,'Unkown') as  "Country Name"
from Countries c;

--Q17
select e.ID ,e.ExitDate , ISNULL (convert(varchar(20),e.ExitDate) ,'Still Employed') as "ExitDate afert convert"
from Employees e;

--Q18
select  e.ID ,e.FirstName ,e.MonthlySalary  ,ISNULL(e.MonthlySalary,0) as "MonthlySalary"
from Employees e

--Q19 حاولت فيها معرفتش احلها غير لما بحثت عن الفانكشن دي
select  e.ID ,e.FirstName ,e.BonusPerc  ,ISNULL (NULLIF(BonusPerc, 0 ), 5.0) as  BonusPerc 
from Employees e ;

َ--Q20
select CONVERT(nvarchar(20),e.HireDate) as "Format"
from Employees e;

--Q21
select CAST(BonusPerc as INT) as "BonusPerc Int"
from Employees;
	
--Q22
select CAST(CountryID as  NVARCHAR(10)) as CountryID
from Employees;

--Q23
select FORMAT(HireDate,'yyyy-MM-dd') as "HireDate Format"
from Employees

--Q24
select FORMAT(HireDate,'yyyy-MMMM d') as "HireDate Format"
from Employees

--Q25
select FORMAT(MonthlySalary,'N2') as "MonthlySalary Format"
from Employees

--Q26
select FORMAT(ExitDate ,'yyyy') as "ExitDate Format"
from Employees

--Q27
select concat(BonusPerc ,'%') as "BonusPerc Format"
from Employees

--Q28
select GETUTCDATE() as "current system date and time" ;

--Q29  هبده بس ان شاء تكون صح يعني
select DateOfBirth , Year(GETDATE()) - year(DateOfBirth) as Age
from Employees
group by DateOfBirth

--Q30
select year(HireDate) as "HireDate Format"
from Employees;

--Q31
SELECT  DATEDIFF(DAY, HireDate, ExitDate) AS "difference in days"
FROM Employees 
WHERE ExitDate IS NOT NULL;

--Q32
select HireDate, DATEADD(MONTH, 6, HireDate) AS "New HireDate"
FROM Employees;

--Q33
select FirstName, Len(e.FirstName) as " Name Length "
from Employees e ;

--Q34
select UPPER(e.LastName) as " Name LastName "
from Employees e ;

--Q35
select Substring(c.Name,1,3) as " Name column "
from Countries c;

--Q36
select REPLACE(e.FirstName , 'a', '@')
from Employees e ;

--Q37
select LastName As "Last Name Contain son"
FROM Employees 
WHERE LastName LIKE '%son%';

--Q38
select log10(e.MonthlySalary) as "log10 MonthlySalary "
from Employees e ;

--Q39
select sin(e.BonusPerc) as " sin BonusPerc "
from Employees e ;

--Q40
select ABS(MonthlySalary - BonusPerc ) as "absolute difference between MonthlySalary"
from Employees e ;

--Q41
select  e.id ,Rand() as " random number "
from Employees e 
group by e.id ;
