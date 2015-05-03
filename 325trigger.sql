/*
Brittany Cook
CS 325 - Fall 2014
Last modified: December 8, 2014

employee_insert trigger

When a new employee is inserted into the employee table,
this trigger inserts that employee into the flight_crew table
if their job_loc = 'p' (plane) and other_employee if their job_loc is 
anything else ('g' for ground crew, 'o' for office).
*/

create or replace trigger employee_insert
	after insert
	on Employee
	for each row
begin
	if (:new.job_loc = 'p') then
		insert into Flight_Crew
		values
		(:new.empl_id);
	else
		insert into Other_Employees
		values
		(:new.empl_id);
	end if;
end;

/

show errors