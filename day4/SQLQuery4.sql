

select e.Fname
from Employee e
where e.Sex='F'  
union all 
select sex
from Dependent d
where d.Sex ='F'  

select e.Fname
from Employee e
where e.Sex='M'
union all 
select sex
from Dependent 
where Sex ='M'

select p.Pname 
from Project p inner join Works_for w
on p.Pnumber=w.Pno
union all
select CONVERT(varchar(2), w.Hours)
from Works_for w inner join Employee e
on e.SSN=w.ESSn

3------
select d.*
from Departments d inner join Employee e
on e.Dno=d.Dnum
where e.SSN= (select MIN(SSN)
from Employee)


select min (Salary),max(Salary),avg (Salary) ,d.Dname
from Employee e inner join Departments d
on e.Dno=d.Dnum
group by d.Dname

5----
select e.Lname
from Employee e inner join Employee sv
on sv.Superssn=e.SSN
inner join Dependent d
on sv.Superssn=d.ESSN
where d.ESSN is null

6----

select d.Dnum 
from Departments d inner join Employee e
on e.Dno=d.Dnum
group by d.Dnum
having avg(Salary)<(select AVG(salary) from Employee)

7----
select e.Fname
from Employee e inner join Departments d
on e.Dno=d.Dnum
union all
select p.Pname
from Project p inner join Departments d
on d.Dnum=p.Dnum

select e.*,p.*
from Employee e inner join Departments d
on e.Dno=d.Dnum
inner join Project p
on d.Dnum=p.Dnum
order by d.Dname



8---
select MAX(salary)
from Employee

9-------
select e.Fname,e.Lname ,d.Dependent_name
from Employee e inner join Dependent d
on e.SSN=d.ESSN
where CONCAT(e.Fname,e.Lname)  =d.Dependent_name

select  concat (e.Fname,e.Lname)
from Employee e
intersect
select d.Dependent_name
from Dependent d

10

update Employee
set salary+=0.3
from Employee inner join project p
on p.Pname='Al Rabwah'

11-------no answer



(2)
1--
insert into Departments
values ('DEPT IT',100,112233,'1-11-2006')


2----
update Employee
set   Dno=100 
where SSN =968574

update Departments
set Dnum=100 
 where MGRSSN=968574

update Employee
set Superssn=102672 
where SSN =102660


3----



delete from Employee 
where SSN=223344 and Superssn=223344

delete from Project
where Pnumber in(100,200,300,500)

delete from Works_for
where Pno in(100,200,300,500) and ESSn=223344

