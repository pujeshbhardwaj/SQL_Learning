--SQL tutorial


--Insert into EmployeeDemo VALUES
--(1002, 'Jatin' , 'Kushwaha' , 30 , 'Male'),
--(1003, 'Mayank' , 'Prajapati' , 27, 'Male'),
--(1004, 'Deep' , 'Araya' , 27, 'Male'),
--(1005, 'Sanjana' , 'Siri' , 25 , 'Female'),
--(1006, 'Asim' , 'Hasan' , 29 , 'Male'),
--(1007, 'Devansh' , 'Bajpai' , 28, 'Male'),
--(1008, 'Shivangi', 'Bajpai' , 26, 'Female'),
--(1009, 'Mukesh' , 'Singh' , 31 , 'Male')



--SELECT*
--FROM Employee_Demo



--Select firstname
--from Employee_demo


--select firstname, lastname
--from Employee_demo

--select top 5*
--from employee_demo


--#DISTINCT
--select distinct (employeeid)
--from employee_demo
--Note - distinct is used to select unique data since employeid is unique it gives all rows, whereas below in gender we get only to male and female unique values


--select distinct (gender)
--from employee_demo



-- #COUNT
--select count(lastname)
--from employee_demo
----(since we are getting no column name so as to give column name we can use Alias(as) function)

--select count(lastname) AS lastnamecount
--from employee_demo




--# MAX, MIN , AVG
--select max(salary)
--from EmployeeSalary

--select min(salary)
--from EmployeeSalary

--select avg(salary)
--from EmployeeSalary


-- if at top instead of our database (SQL tutorial) any other databse present then we can write databasename.dbo.tablename in from statement
--select*
--from [SQL tutorial].dbo.employee_demo


--#WHERE with (>,<,=,and,or,like, null, not null, in)
--Select*
--From Employee_Demo
--Where FirstName = 'sanjana' 

--select*
--From Employee_Demo
--Where age > 28

--select*
--From Employee_Demo
--Where age >= 28

--select*
--From Employee_Demo
--Where age < 28

--select*
--from Employee_Demo
--where Age <=29 and gender = 'female'

--select*
--from Employee_Demo
--where Age >=29 or gender = 'female'

--select*
--from Employee_Demo
--where LastName like 's%'
--(here % is called wildcard which is used to specify first few alphabets, if we use % after any alpha then denotes first alphbet)

--select*
--from Employee_Demo
--where LastName like '%s%'
--(% used both side of letter means lastname has s letter anywhere

--select*
--from Employee_Demo
--where LastName like 's%r%'

--select*
--from Employee_Demo
--where LastName like 'k%waha%'

--select*
--from Employee_Demo
--where LastName like 'k%u%waha%'


--#NULL
--select*
--from Employee_Demo
--where firstname is Null
--(this will not show any result since in our table there is nothing as such empty cell but when we use not null it will give entire table isnce nothing is emplty)

--select*
--from Employee_Demo
--where firstname is  not Null

-- IN (in is kind of equal statement but multiple equal statement)
--select*
--from Employee_Demo
--where firstname in ('deep','mayank')



-- GROUP BY (simillar to distinct and select statement) , ORDER BY

--select gender, count(gender)
--from employee_demo
--group by gender

--select gender,age, count(gender)
--from employee_demo
--group by gender, age

--select gender,age, count(gender)
--from employee_demo
--where age >= 27
--group by gender, age

--select gender, count(gender) As countgender
--from employee_demo
--where age <= 28
--group by gender
--order by countgender 
--(since sql automatically give results ascendin for descendin write desc after order by)

--select gender, count(gender) As countgender
--from employee_demo
--where age <= 28
--group by gender
--order by countgender desc

--select gender, count(gender) As countgender
--from employee_demo
--where age <= 28
--group by gender
--order by gender

--select gender, count(gender) As countgender
--from employee_demo
--where age <= 28
--group by gender
--order by gender desc

--easy example
--select* 
--from Employee_Demo
--order by age

--select* 
--from Employee_Demo
--order by age

--we can also order by multiple coulums
--select* 
--from Employee_Demo
--order by age desc, firstname 

--select* 
--from Employee_Demo
--order by age desc, firstname desc
--(in above two query ro show sirf deep aur mayank hai same age k aur un dono ko bhi upar neeche la sate hai first name mai desc laga r)


--select* 
--from Employee_Demo
--order by age, firstname 

--select* 
--from Employee_Demo
--order by age, firstname desc

----(same above query ko order by mai bina column name dale - coulumn a number specify kr  bhi kr sakte hai = jese k firstname ho jaega 2 aur age 4)
--select* 
--from Employee_Demo
--order by 4, 2 desc





-- Joins :- Inner joins, full/left/right/outer joins
--select* 
--from Employee_Demo

--select*
--from EmployeeSalary



--Insert into [sql tutorial].dbo.Employee_Demo VALUES
--(1001, 'Pujesh' , 'Bhardwaj', 28, 'Male'),
--(1002, 'Jatin' , 'kushwaha', 29, 'Male')


--delete from Employee_Demo where EmployeeID = 1001

--select*
--from Employee_Demo

----#Inner join
--select*
--from [sql tutorial].dbo.Employee_Demo
--inner join [sql tutorial].dbo.EmployeeSalary
--on Employee_Demo.EmployeeID = EmployeeSalary.EmployeeID

--# outer join
--select*
--from [sql tutorial].dbo.employee_demo
--full Outer join [sql tutorial].dbo.employeesalary
--on employee_demo.employeeid = employeesalary.employeeid


----# right outer join (right means right mai jo hai salary table vo, so right outer join mai jitna data salary table mai hai vo join hokar a jaega)
--select*
--from [sql tutorial].dbo.employee_demo
--right Outer join [sql tutorial].dbo.employeesalary
--on employee_demo.employeeid = employeesalary.employeeid


----# left outer join (left mai jitna data emmployee_demo table mai milega vo join ho jaega therefore we can see join data of empdemo with empslary even if it is null in salary table)
--select*
--from [sql tutorial].dbo.employee_demo
--left Outer join [sql tutorial].dbo.employeesalary
--on employee_demo.employeeid = employeesalary.employeeid


----#selecting specific columns
--select employee_demo.employeeid, firstname, lastname,jobtitle
--from [SQL Tutorial].dbo.Employee_Demo
--inner join [SQL Tutorial].dbo.EmployeeSalary
--on Employee_Demo.EmployeeID = EmployeeSalary.EmployeeID

--select employee_demo.employeeid, firstname, lastname,jobtitle
--from [SQL Tutorial].dbo.Employee_Demo
--right outer join [SQL Tutorial].dbo.EmployeeSalary
--on Employee_Demo.EmployeeID = EmployeeSalary.EmployeeID

--select employee_demo.employeeid, firstname, lastname,jobtitle
--from [SQL Tutorial].dbo.Employee_Demo
--left outer join [SQL Tutorial].dbo.EmployeeSalary
--on Employee_Demo.EmployeeID = EmployeeSalary.EmployeeID


--select EmployeeSalary.employeeid, firstname, lastname,jobtitle
--from [SQL Tutorial].dbo.Employee_Demo
--left outer join [SQL Tutorial].dbo.EmployeeSalary
--on Employee_Demo.EmployeeID = EmployeeSalary.EmployeeID

----# exercise - we need to find out out person paid highest salary other than mukesh
--select Employee_Demo.EmployeeID, firstname, lastname, salary
--from [SQL Tutorial].dbo.Employee_Demo
--inner join [SQL Tutorial].dbo.EmployeeSalary
--on Employee_Demo.EmployeeID =EmployeeSalary.EmployeeID
--where firstname <> 'mukesh'
--order by salary desc


----# we need to find the avg salary of male
--select gender, avg(salary)
--from [SQL Tutorial].dbo.Employee_Demo
--inner join [SQL Tutorial].dbo.EmployeeSalary
--on Employee_Demo.EmployeeID =EmployeeSalary.EmployeeID
--where gender = 'male'
--group by Gender






-- UNION , UNION ALL (union can be used when we have two different tables with same columns)
-- first we need to create another table with same sets of columns

--create table karamchari_demo
--(EmployeeID int,
--FirstName varchar(10),
--LastName varchar(10),
--Age int,
--Gender varchar(10)
--)

--insert into karamchari_demo values
--(1001, 'Pujesh' , 'Bhardwaj' , 28, 'Male'),
--(1021, 'Satyam' , 'chourey' , 27, 'Male'),
--(1022, 'Namrata' , 'Dubey' ,  26, 'Female')

--(Now thereare two tables empdemo and karamcharidemo in which humko inka data single table mai show karna hai, hum join statement use karenge to ye alag alag coulums show karega,
--so we can use union statemnt for this)

--Select*
--from Employee_Demo
--inner join EmployeeSalary
--on Employee_Demo.EmployeeID = EmployeeSalary.EmployeeID

--#UNION (ismai jo employedemo aur employeesalary mai duplicate hai vo nahi ayinge)
--select*
--from Employee_Demo
--UNION
--Select*
--From karamchari_demo

--#(ismai duplicate bhi a jainge)
--select*
--from Employee_Demo
--UNION all
--Select*
--From karamchari_demo



--(two different column table, ismai bhi query work kr rahi hai kyuki table fiels lag hai lekin data type same hai-ex int, varchar)

--select EmployeeID, FirstName, Age
--from Employee_Demo
--UNION all
--select EmployeeID, JobTitle, Salary
--from EmployeeSalary




--  CASE statement- allows you to specify condition and then also allows you to specify what you want in return when that condition is met- that conditional case will come as a result in an seperate column)
--select*
--from [SQL Tutorial].dbo.Employee_Demo

--insert into [SQL Tutorial].dbo.Employee_Demo values
--(NULL, 'jayant' , '' , NULL, 'Male')

--select firstname, lastname, age,
--case 
--when age > 27 then 'Old'
--else 'Young'
--end
--from [SQL Tutorial].dbo.Employee_Demo
--where age is not null
--order by age 

----we can use as many as when statement we want
--select firstname, lastname, age,
--case 
--when age > 28 then 'Old'
--when age between 27 and 28 then 'Young'
--else 'Baby'
--end as result
--from [SQL Tutorial].dbo.Employee_Demo
--where age is not null
--order by age


--select firstname, lastname, age,
--case 
--when age > 28 then 'Old'
--when age = 25 then 'sanjana'
--else 'Baby'
--end
--from [SQL Tutorial].dbo.Employee_Demo
--where age is not null
--order by age

----# Exercise ( we haveto take few columns from both table and , using case statement we have to increase person with sales lead  salary by 10%, data analyst by 5% , developer by 3%
---- and rest by 1%)

--select firstname, lastname, jobtitle, salary,
--case 
--when jobtitle = 'sales Lead' then salary + (salary * .10)
--when jobtitle = 'data analyst' then salary + (salary * .05)
--when jobtitle = 'developer' then salary + (salary * .03)
--else salary + (salary * 0.01)
--end as SalaryAfterRaise
--from Employee_Demo
--join EmployeeSalary
--on Employee_Demo.EmployeeID =EmployeeSalary.EmployeeID







----# HAVING clause (always used after group by statement) not used much but veryinp if you understand real use

--select jobtitle, count(jobtitle)
--from Employee_Demo
--join EmployeeSalary
--on Employee_Demo.EmployeeID =EmployeeSalary.EmployeeID
--group by JobTitle
--having count(JobTitle) > 1

--select jobtitle, Avg(salary)
--from Employee_Demo
--join EmployeeSalary
--on Employee_Demo.EmployeeID =EmployeeSalary.EmployeeID
--group by JobTitle
--having avg(salary) < 40000
--order by avg(salary)

--# UPDATING/DELETE DATA

--# UPDATING (updating is alter in pre existing row)- "set" is also used here
--select*
--from EmployeeSalary

--select*
--from Employee_Demo


--update Employee_Demo
--set EmployeeID = 1010
--where firstname = 'jayant'

--update Employee_Demo
--set LastName = 'Vishwkarma', age = '28'
--where EmployeeID = 1010 and firstname = 'jayant'

--update EmployeeSalary
--set Salary = 35000
--where EmployeeID = 1001


----#DELETE- to delete the entire row we use delete statement (Be very carefull while using this because once you delete entire row will be delete and you will never get back)
--Delete
--from Employee_Demo
--where EmployeeID = 1010






----ALIAS funstion (AS)- Used to give name to the column you have created through the query
--select firstname AS Fname
--from Employee_demo

--select firstname + ' ' + lastname as FullName
--From Employee_Demo

--select avg(age) as AvgAge
--from Employee_Demo


----(we can also use to short the table name useng Alias, this is helpful when we have lots of joins and all)
--select demo.FirstName
--from Employee_Demo as demo

----can use for joins
--select Demo.EmployeeID, FirstName
--from Employee_Demo as demo
--join EmployeeSalary as sal
--on Demo.EmployeeID = sal.EmployeeID

--select* 
--from karamchari_demo

--select* 
--from Employee_Demo

--select* 
--from EmployeeSalary

--select demo.EmployeeID , demo.FirstName, sal.JobTitle, kdemo.Age
--from Employee_Demo as demo
--left join EmployeeSalary as sal
--on demo.EmployeeID = sal.EmployeeID
--left join karamchari_demo as kdemo
--on demo.EmployeeID = kdemo.EmployeeID





---- PARTITION BY - divides the result into partition and changes how window function is calculated does notreduce the no fo rows(often compared to group by statement-reduce no of rows by rolling up same entities)
--select firstname, lastname, gender, salary,
--count(gender) over (partition by gender) as totalgender
--from Employee_Demo as demo
--left join EmployeeSalary as sal
--on demo.EmployeeID = sal.EmployeeID

----(group by mai rows kam ar deta hai aur baki columns bhi sath mai nahi a pate)



--LET'S MOVE TO THE "ADVANCE SQL TUTORIAL"

-- Temp Table

create table #temp_empolyee 
(EmployeeID int,
JobTitle varchar(20),
Salary int)

select*
from #temp_empolyee

Insert into #temp_empolyee values
(1001 , 'Data Scientist' , 80000)

insert into #temp_empolyee
select* 
from EmployeeSalary

--We can also create temp table of coplex queries like joins and use it again and again rather than writing full query
create table #temp_employee2
(Jobtitle varchar (20),
EmployeePerJob int,
AvgAge int,
AvgSalary int)

insert into #temp_employee2
select jobtitle, count(jobtitle), avg(age), avg(salary)
from Employee_Demo AS emp
join EmployeeSalary AS sal
on emp.EmployeeID = sal.EmployeeID
group by JobTitle



select* from #temp_employee2




--STRING FUNCTION- TRIM, LTRIM, RTRIM, REPLACE, SUBSTRING, UPPER, LOWER

create table EmployeeErrors 
(EmployeeID varchar(20),
FirstName varchar(20),
LastName varchar(20)
)

Insert Into EmployeeErrors values
('1001  ', 'Jimbo', 'Halbert'),
('  1002', 'Pamela', 'Beasely'),
('1005', 'TOby', 'Flenderson - fired')

select*
From EmployeeErrors

--# Using Trim, LTRIM, RTRIM
--Trim gets rid of blank spaces on either the front or back side )

select employeeID, TRIM(EmployeeID) as IDTRIM
from EmployeeErrors

select employeeID, LTRIM(EmployeeID) as IDTRIM
from EmployeeErrors
--blank spaces at left side will be trimmed


select employeeID, RTRIM(EmployeeID) as IDTRIM
from EmployeeErrors
--Blank spaces at right side will be trimmed


--#REPLACE

select LastName, Replace(LastName, 'Flenderson-fired', 'Flend') as LastNameFixed
from EmployeeErrors
--not able to run


--Using Substring

--UPPER and LOWER

select firstname, lower(firstname)
from EmployeeErrors

select firstname, upper(firstname)
from EmployeeErrors




-- Stored Procedures
--(not understood)

--subqueries/inner query/nested query
--Have to study from basics in more easy way


