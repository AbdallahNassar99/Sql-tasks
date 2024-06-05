 
 select *
 from Employee

 select Fname,Lname,Salary,Dno
from Employee

select*
from Project

select Pname,Plocation,Dnum
from Project


select Fname+' '+Lname as fullname,salary*12*0.1 as 'ANNUAL COMM '
from Employee


select SSN ,Fname+' '+Lname as fullname
from Employee
where Salary > 1000

select SSN ,Fname+' '+Lname as fullname
from Employee
where Salary*12 >10000

select Fname+' '+Lname as fullname ,Salary
from Employee
where Sex='F'

select Dnum ,Dname
from Departments
where MGRSSN=968574

select Pnumber ,Pname,Plocation
from Project
where Dnum=10



select*
from Departments
