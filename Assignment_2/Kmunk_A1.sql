#Question 1

#1.1
select Fname, Minit, Lname, Address from Employee where Dno = 4;

#1.2
select 
Concat(theEmployee.Fname, " ", theEmployee.Minit, ". ", theEmployee.Lname) as EmployeeName, 
Concat(supervisor.Fname, " ", supervisor.Minit, ". ", supervisor.Lname) as SupervisorName
from employee theEmployee, employee supervisor
where theEmployee.Super_ssn = supervisor.Ssn;

#1.3
select salary as Old_Pay_For_NewBenefits_Team, salary*1.5 as New_Pay_For_NewBenefits_Team from employee
where ssn in (
				select Essn from Works_On
                where Pno in (Select Pnumber from Project where Pname like 'Newbenefits'));
