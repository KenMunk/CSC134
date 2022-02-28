Start transaction;

#Question 3.1
Update 
	works_on
set
	hours = 5.0
where
	Pno = 10
    and
    Essn='999887777'
;

#Question 3.2
insert 
into 
	employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)
values
	("Catherine", "B", "Priskorn", '123456789', '1980-02-02', 'Riverside Hall 5001, 6000 J St, Sacramento, CA 95819', 'F', 62000, '333445555', 5)
;

#Question 3.3
delete from
	works_on
where
	essn = '333445555'
;

start transaction;


