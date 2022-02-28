#Question 1.1
select 
	concat(Fname, " ", Minit, ". ", Lname) as employee_name,  
    Address 
from 
	Employee 
where 
	Dno
    in
    (select Dnumber from Department where Dname like "Administration")
;

#Question 1.2
select 
	concat(e.Fname, " ", e.Minit, ". ", e.Lname) as Employee_Name, 
    concat(s.Fname, " ", s.Minit, ". ", s.Lname) as Supervisor_Name
from 
	Employee as e,
    Employee as s
where 
	s.ssn = e.super_ssn
;

#Question 1.3
select 
	Salary as original_Salary,
	Salary*1.5 as new_Salary
from 
	Employee 
where
	ssn
	in 
	(Select 
		Essn
	 from
		Works_on
	 where
		Pno 
		in
		(Select 
			Pnumber
		from
			Project
		where
			Pname like "Newbenefits"
		)
	)
;

#Question 1.4
select distinct
	Salary as Salaries_in_Houston
from
	Employee
where
	Address like "%Houston, TX%"
;
    
				