
 --problem 1
 
select d.Dname,d.Dnum ,e.Fname
from Departments d inner join Employee e 
on e.SSN=d.MGRSSN


select d.Dname,p.Pname
from Departments d inner join Project p
on d.Dnum=p.Dnum

select d.* ,e.Fname
from Dependent d inner join Employee e
on e.SSN=d.ESSN

select  Pnumber ,Pname,Plocation
from Project p 
where p.City ='Cairo' or p.City= 'Alex' 


 select p.*
 from Project p
 where p.Pname like 'a%'

select  e.*
from Employee e inner join Departments d
on d.Dnum=e.Dno
where Salary between '1000' and '2000'

select e.Fname
from Employee e inner join Departments d
on d.Dnum=e.Dno
inner join Project p
on d.Dnum=p.Dnum
inner join Works_for w
on p.Pnumber=w.Pno and e.SSN=w.ESSn
where d.Dnum='10' and p.Pname='AL Rabwah' and w.Hours>=10


select e.Fname
from Employee e inner join Employee sv
on sv.Superssn =e.SSN
where sv.Fname+' '+sv.Lname ='Kamel Mohamed'

select e.Fname ,p.Pname
from Employee e inner join Works_for w
on e.SSN =w.ESSn
inner join Project p
on p.Pnumber=w.Pno
order by p.Pname

select p.Pnumber,d.Dname ,e.Lname ,e.Address,e.Bdate
from Project p inner join Departments d
on d.Dnum =p.Dnum
inner join Employee e
on e.SSN=d.MGRSSN
where p.City='Cairo'


select sv.*
from Employee e ,Employee sv
where sv.Superssn=e.SSN

select e.*
from Employee e left outer join Dependent d
on e.SSN=d.ESSN

--__________________________________________________________________________________________________________

--problem 2

select e.*
from Employee e

insert into Employee(Dno,SSN,Superssn,Salary)
values (30,102672,112233,'3000')

insert into Employee (Dno,SSN)
values (30,102660)


update Employee
set Salary+=Salary*0.2