-- SQL Tutorial from basics - LEARNING SQL

-- Already created database "employee-details" now creating table and inserting valus
CREATE TABLE `employee_details`.`employee_demo` (
    `id` INT,
    `first_name` VARCHAR(50),
    `last_name` VARCHAR(50),
    `age` INT,
    `gender` VARCHAR(10)
);

Insert into employee_demo VALUES
(1002, 'Jatin' , 'Kushwaha' , 30 , 'Male'),
(1003, 'Mayank' , 'Prajapati' , 27, 'Male'),
(1004, 'Deep' , 'Araya' , 27, 'Male'),
(1005, 'Sanjana' , 'Siri' , 25 , 'Female'),
(1006, 'Asim' , 'Hasan' , 29 , 'Male'),
(1007, 'Devansh' , 'Bajpai' , 28, 'Male'),
(1008, 'Shivangi', 'Bajpai' , 26, 'Female'),
(1009, 'Mukesh' , 'Singh' , 31 , 'Male');

CREATE TABLE employee_details.employee_salary (
    `id` INT,
    `job_title` VARCHAR(50),
    `salary` INT
);

Insert into employee_salary VALUES
(1002, 'Executive' , 30000 ),
(1003, 'Data Analyst' , 40000),
(1004, 'Design Engineer' , 60000),
(1005, 'Soft Skill trainer' , 35000),
(1006, 'Sales Executive' , 50000),
(1007, 'Software Engineer', 45000),
(1008, 'Project Manager', 80000),
(1009, 'Site Engineer', 65000);
-----------------------------------------------------------------------------------------------------------------------------------------------------
select*
from employee_demo;

select*
from employee_salary;

Select first_name
from Employee_demo;


select first_name, last_name
from Employee_demo;

select*
from employee_demo
limit 5;
-- To get top 5 rows of table
-----------------------------------------------------------------------------------------------------------------------------------------------------

-- #DISTINCT
select distinct id
from employee_demo;

select distinct gender
from employee_demo;
-- Note - distinct is used to select unique data since employeid is unique it gives all rows, whereas below in gender we get only to male and female 
-- unique values
----------------------------------------------------------------------------------------------------------------------------------------------------

-- #COUNT
select count(last_name)
from employee_demo;
-- (since we are getting no column name so as to give column name we can use Alias(as) function)

select count(last_name) AS last_name_count
from employee_demo;
---------------------------------------------------------------------------------------------------------------------------------------------------
-- # MAX, MIN , AVG (Aggregate functions)
select max(salary)
from Employee_Salary;

select min(salary)
from Employee_Salary;

select avg(salary)
from Employee_Salary;

-- if at top instead of our database (employee_details) any other databse selected then we can write databasename.tablename in from statement
select*
from employee_details.employee_demo;
------------------------------------------------------------------------------------------------------------------------------------------------

-- #WHERE with (>,<,=,and,or,like, null, not null, in) conditional and other statements
Select*
From Employee_Demo
Where First_Name = 'sanjana'; 

select*
From Employee_Demo
Where age > 28;

select*
From Employee_Demo
Where age >= 28;

select*
From Employee_Demo
Where age < 28;

select*
from Employee_Demo
where Age <=29 and gender = 'female';

select*
from Employee_Demo
where Age >=29 or gender = 'female';

select*
from Employee_Demo
where Last_Name like 's%';
-- (here % is called wildcard which is used to specify first few alphabets, if we use % after any alpha then denotes first alphbet)

select*
from Employee_Demo
where Last_Name like '%s%';
-- (% used both side of letter means lastname has s letter anywhere

select*
from Employee_Demo
where Last_Name like 'p%t%';

select*
from Employee_Demo
where Last_Name like 'k%waha%';

select*
from Employee_Demo
where Last_Name like 'k%u%waha%';

#NULL
select*
from Employee_Demo
where first_name is Null;
-- (this will not show any result since in our table there is nothing as such empty cell but when we use not null it will give entire table isnce 
-- nothing is emplty)

select*
from Employee_Demo
where first_name is  not Null;

-- IN (IN is kind of equal statement but multiple equal statement)
select*
from Employee_Demo
where first_name in ('deep','mayank');
-----------------------------------------------------------------------------------------------------------------------------------------------------

-- #GROUP BY (simillar to distinct and select statement) , ORDER BY

select gender, count(gender)
from employee_demo
group by gender;

select gender,age, count(gender)
from employee_demo
group by age, gender;

select gender,age, count(gender)
from employee_demo
where age >= 27
group by gender, age;

select gender,count(gender) As countgender
from employee_demo
where age <= 28
group by gender
order by countgender; 
-- (since sql automatically give results ascendin for descendin write desc after order by)

select gender, count(gender) As countgender
from employee_demo
where age <= 28
group by gender
order by countgender desc;

select gender, count(gender) As countgender
from employee_demo
where age <= 28
group by gender
order by gender;


select gender, count(gender) As countgender
from employee_demo
where age <= 28
group by gender
order by gender desc;

-- easy example
select* 
from Employee_Demo
order by age;

select* 
from Employee_Demo
order by age desc;

-- we can also order by multiple coulums
select* 
from Employee_Demo
order by age desc, first_name; 

select* 
from Employee_Demo
order by age desc, first_name desc;
-- (in above two query ro show sirf deep aur mayank hai same age k aur un dono ko bhi upar neeche la sakte hai first name mai desc laga kr)


select* 
from Employee_Demo
order by age, first_name; 

select* 
from Employee_Demo
order by age, first_name desc;

-- (same above query ko order by mai bina column name dale - coulumn a number specify kr  bhi kr sakte hai = jese k firstname ho jaega 2 aur age 4)
select* 
from Employee_Demo
order by 4, 2 desc;
------------------------------------------------------------------------------------------------------------------------------------------------------

-- #Joins :- Inner joins, full/left/right/outer joins

-- For better understanding we insert some rows in employee_demo table
Insert into employee_details.Employee_Demo VALUES
(1001, 'Pujesh' , 'Bhardwaj', 28, 'Male'),
(1010, 'Rahul' , 'sharma', 29, 'Male');

select*
from employee_demo;

-- #Inner join
select*
from employee_details.employee_demo
inner join employee_details.employee_Salary
on employee_Demo.id = employee_salary.id;


-- # outer join
select*
from employee_details.employee_demo
full join employee_details.employee_salary
on employee_demo.id = employee_salary.id;


----# right outer join (right means right mai jo hai salary table vo, so right outer join mai jitna data salary table mai hai vo join hokar a jaega)
select*
from employee_details.employee_demo
right Outer join employee_details.employee_salary
on employee_demo.id = employee_salary.id;


----# left outer join (left mai jitna data emmployee_demo table mai milega vo join ho jaega therefore we can see join data of empdemo with empslary 
-- even if it is null in salary table)

select*
from employee_details.employee_demo
left Outer join employee_details.employee_salary
on employee_demo.id = employee_salary.id;


-- #selecting specific columns
select employee_demo.id, first_name, last_name,job_title
from employee_details.Employee_Demo
inner join employee_details.Employee_Salary
on Employee_Demo.ID = Employee_Salary.ID;


select employee_demo.id, first_name, last_name,job_title
from employee_details.Employee_Demo
left outer join employee_details.Employee_Salary
on Employee_Demo.ID = Employee_Salary.ID;


-- # exercise - we need to find out out person paid highest salary other than mukesh
select employee_demo.id, first_name, last_name,salary
from employee_details.Employee_Demo
inner join employee_details.Employee_Salary
on Employee_Demo.ID = Employee_Salary.ID
where first_name <> 'mukesh'
order by salary desc;

-- # we need to find the avg salary of male
select gender, avg(salary)
from employee_details.Employee_Demo
inner join employee_details.Employee_Salary
on Employee_Demo.ID = Employee_Salary.ID
where gender = 'male'
group by Gender;
-- avg salary of males comes to be 48333.333
------------------------------------------------------------------------------------------------------------------------------------------------

-- UNION , UNION ALL (union can be used when we have two different tables with same columns)
-- first we need to create another table with same sets of columns

create table employee_details.karamchari_demo
(id int,
First_Name varchar(10),
Last_Name varchar(10),
Age int,
Gender varchar(10)
);

insert into karamchari_demo values
(1001, 'Pujesh' , 'Bhardwaj' , 28, 'Male'),
(1021, 'Satyam' , 'chourey' , 27, 'Male'),
(1022, 'Namrata' , 'Dubey' ,  26, 'Female');

-- (Now thereare two tables employee_demo and karamchari_demo in which humko inka data single table mai show karna hai, hum join statement use karenge
-- to ye alag alag coulums show karega. (so we can use union statemnt for this)

Select*
from employee_Demo
inner join employee_Salary
on Employee_Demo.ID = Employee_Salary.ID;

-- #UNION (ismai jo employedemo aur employeesalary mai duplicate hai vo nahi ayinge)
select*
from employee_demo
UNION
Select*
From karamchari_demo;

-- #(ismai duplicate bhi a jainge- ex data of Pujesh comes in both twice as present in both the tables)
select*
from Employee_Demo
UNION all
Select*
From karamchari_demo;



-- (two different column table, ismai bhi query work kr rahi hai kyuki table fiels alag hai lekin data type same hai-ex int, varchar)

select ID, First_Name, Age
from Employee_Demo
UNION all
select ID, Job_Title, Salary
from Employee_Salary;
---------------------------------------------------------------------------------------------------------------------------------------------------

--  CASE statement- allows you to specify condition and then also allows you to specify what you want in return when that condition is met- that 
-- conditional case will come as a result in an seperate column)
select*
from employee_details.Employee_Demo;

insert into employee_details.Employee_Demo values
(NULL, 'jayant' , '' , NULL, 'Male');

select first_name, last_name, age,
case 
when age > 27 then 'Old'
else 'Young'
end
from employee_details.Employee_Demo
where age is not null
order by age; 

-- we can use as many as when statement we want
select first_name, last_name, age,
case 
when age > 28 then 'Old'
when age between 27 and 28 then 'Young'
else 'Baby'
end as result
from employee_details.Employee_Demo
where age is not null
order by age;



select first_name, last_name, age,
case 
when age > 28 then 'Old'
when age = 25 then 'sanjana'
else 'young'
end as category
from employee_details.Employee_Demo
where age is not null
order by age;

-- # Exercise ( we have to take few columns from both table and , using case statement we have to increase person with sales excutive salary by 10%, 
-- data analyst by 5% , software ebgineer by 3% and rest by 1%)

select first_name, last_name, job_title, salary,
case 
when job_title = 'sales executive' then salary + (salary * .10)
when job_title = 'data analyst' then salary + (salary * .05)
when job_title = 'Software Engineer' then salary + (salary * .03)
else salary + (salary * 0.01)
end as SalaryAfterRaise
from Employee_Demo
join Employee_Salary
on Employee_demo.ID =Employee_Salary.ID;
----------------------------------------------------------------------------------------------------------------------------------------------------

-- # HAVING clause (always used after group by statement) not used much but very imp if you understand real use, and is used in place of where.

select job_title, count(job_title)
from Employee_Demo
join Employee_Salary
on Employee_Demo.ID =Employee_Salary.ID
group by Job_Title
having count(Job_Title) > 1;

select job_title, Avg(salary)
from Employee_Demo
join Employee_Salary
on Employee_Demo.ID =Employee_Salary.ID
group by Job_Title
having avg(salary) < 40000
order by avg(salary);

-- # UPDATING/DELETE DATA

-- # UPDATING (updating is alter in pre existing row)- "set" is also used here
select*
from Employee_Salary;

select*
from Employee_Demo;

update Employee_Demo
set ID = 1011
where first_name = 'jayant'
limit 1;

update Employee_Demo
set Last_Name = 'Vishwkarma', age = '28'
where ID = 1011 and first_name = 'jayant'
limit 1;

update Employee_Salary
set Salary = 45000
where id = 1003
limit 1;

update employee_salary
set job_title = "Sales Executive"
where id = 1002
limit 1;


-- #DELETE- to delete the entire row we use delete statement (Be very carefull while using this because once you delete entire row will be delete 
-- and you will never get back)
Delete
from Employee_Demo
where ID = 1011
limit 1;






-- ALIAS funstion (AS)- Used to give name to the column you have created through the query
select first_name AS Fname
from Employee_demo;

select CONCAT(first_name, ' ', last_name) as FullName
From Employee_Demo;

select avg(age) as AvgAge
from Employee_Demo;


-- (we can also use to short the table name useng Alias, this is helpful when we have lots of joins and all)
select demo.First_Name
from Employee_Demo as demo;

-- can use for joins
select Demo.ID, First_Name, salary
from Employee_Demo as demo
left join Employee_Salary as sal
on Demo.ID = sal.ID;

select* 
from karamchari_demo;

select* 
from Employee_Demo;

select* 
from Employee_Salary

select demo.ID , demo.First_Name, sal.Job_Title, kdemo.Age
from Employee_Demo as demo
left join Employee_Salary as sal
on demo.ID = sal.ID
left join karamchari_demo as kdemo
on demo.ID = kdemo.ID;
----------------------------------------------------------------------------------------------------------------------------------------------------

# Now there comes some advnce queries of SQL
-- PARTITION BY - divides the result into partition and changes how window function is calculated does not reduce the no of rows
-- (often compared to group by statement-reduce no of rows by rolling up same entities)
select first_name, last_name, gender, salary,
count(gender) over (partition by gender) as totalgender
from Employee_Demo as demo
left join Employee_Salary as sal
on demo.ID = sal.ID
-- (group by mai rows kam ar deta hai aur baki columns bhi sath mai nahi a pate)



-- LET'S MOVE TO THE "ADVANCE SQL TUTORIAL"

-- Temp Table ( is temperory table that we can use multiple times what we cannot in CTE or subqueries, so we dont have to write query to get data we 
-- desire again and again.

create table #temp_empolyee 
(ID int,
Job_Title varchar(20),
Salary int)
-- getting error in above query since it is correct syntax for Microsoft SQL server, for MySql below query can be used for temp table

CREATE TEMPORARY TABLE temp_empolyee (
  ID INT,
  Job_Title VARCHAR(20),
  Salary INT
);

select*
from temp_empolyee;

Insert into temp_empolyee values
(1001 , 'Data Scientist' , 80000);

insert into temp_empolyee
select* 
from Employee_Salary;

-- We can also create temp table of copmlex queries like joins and use it again and again rather than writing full query
create temporary table temp_employee2
(Jobtitle varchar (20),
EmployeePerJob int,
AvgAge int,
AvgSalary int);

select* from temp_employee2;

-- if we need to alter temp table we cannot so we have to delete that and again create new
DROP TEMPORARY TABLE IF EXISTS temp_empolyee2;

create temporary table temp_employee3
(Job_title varchar (20),
EmployeePerJob int,
AvgAge int,
AvgSalary int);

select* from temp_employee3;


insert into temp_employee3
select job_title, count(job_title), avg(age), avg(salary)
from Employee_Demo AS emp
join Employee_Salary AS sal
on emp.ID = sal.ID
group by Job_Title;

select* from temp_employee3
---------------------------------------------------------------------------------------------------------------------------------------------------


-- STRING FUNCTION- TRIM, LTRIM, RTRIM, REPLACE, SUBSTRING, UPPER, LOWER

create table EmployeeErrors 
(ID varchar(20),
first_name varchar(20),
last_name varchar(20)
)

Insert Into EmployeeErrors values
('1001  ', 'Jimbo', 'Halbert'),
('  1002', 'Pamela', 'Beasely'),
('1005', 'TOby', 'Flenderson - fired')

select*
From EmployeeErrors

-- #Using Trim, LTRIM, RTRIM
-- Trim gets rid of blank spaces on either the front or back side )

select ID, TRIM(ID) as IDTRIM
from EmployeeErrors

select 
ID, LTRIM(ID) as IDTRIM
from EmployeeErrors
-- blank spaces at left side will be trimmed


select ID, RTRIM(ID) as IDTRIM
from EmployeeErrors
-- Blank spaces at right side will be trimmed


-- #REPLACE
SELECT
  Last_Name,
  REPLACE(Last_Name, 'Flenderson - fired'
 , 'Flend') AS LastNameFixed
FROM
  EmployeeErrors;


-- Using Substring

-- UPPER and LOWER

select first_name, lower(first_name)
from EmployeeErrors;

select first_name, upper(first_name)
from EmployeeErrors;
---------*--------------*--------------*------------*-----------*-------------*---------------*-------------*-------------*-----------*---------------*