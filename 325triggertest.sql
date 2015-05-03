/*
Brittany Cook
CS 325 - Fall 2014
Last modified: December 8, 2014

Testing employee_insert trigger
*/

set pagesize 50
set linesize 100
set newpage 2

column empl_id heading 'Employee ID' format 000000
column empl_first_name heading 'First Name' format a10
column empl_last_name heading 'Last Name' format a15
column job_title heading 'Job Title' format a10
column job_loc heading 'Location' format a9
column salary heading 'Salary' format $99,999
column air_code heading 'Airport' format a8

spool 325triggertest.txt

prompt testing employee_insert trigger
prompt
prompt these should be inserted into flight_crew table
prompt

select *
from flight_crew;

insert into Employee
values
(employee_seq.nextval, 'Celia', 'Walters', 'pilot', 'p', 60000, 'ACV');

insert into Employee
values
(employee_seq.nextval, 'Jeffery', 'Morales', 'pilot', 'p', 70000, 'ACV');

select *
from flight_crew;

prompt
prompt these should be inserted into other_employee table
prompt

select *
from other_employees;

insert into Employee
values
(employee_seq.nextval, 'Dorothy', 'Brewer', 'ticket desk', 'o', 55000, 'ACV');

insert into Employee
values
(employee_seq.nextval, 'Vernon', 'Blake', 'ground crew', 'g', 55000, 'ACV');

select *
from other_employees;

prompt
prompt the new employee table
prompt

select   empl_id, empl_first_name, empl_last_name, initcap(job_title) "Job Title",
         job_loc, salary, air_code
from     employee
order by empl_id;

spool off

clear columns
set pagesize  14
set linesize  80
set newpage   1