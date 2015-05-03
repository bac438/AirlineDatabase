/*
Brittany Cook
CS 325 - Fall 2014
Last modified: December 6, 2014

Report #1
A report of all the current employees of Humboldt Redwood Airlines.
Shows the average salary of employees at each airport.
*/

set feedback off
set pagesize 50
set linesize 100
set newpage 2
set space 2
column empl_id heading 'Employee ID'
column 'Employee Name' format a30
column 'Employee Phone Number' format a22
column air_code heading 'Airport' format a7
column salary heading 'Salary' format $999,999.99
break on air_code on empl_id on salary skip 1 on 'Employee Name'
compute avg of salary on air_code
ttitle 'Current Employees'
btitle 'Humboldt Redwood Airlines'

spool 325report1-results.txt

select   employee.empl_id, empl_last_name || ', ' || empl_first_name "Employee Name", 
         air_code, salary, 
		 substr(empl_phone_num, 1, 1) || ' (' || substr(empl_phone_num, 2, 3) 
		 || ') ' || substr(empl_phone_num, 5, 3) || ' - ' 
		 || substr(empl_phone_num, 8) "Employee Phone Number"
from     Employee, Employee_Phone
where    employee.empl_id = employee_phone.empl_id
order by air_code, empl_id, empl_last_name, empl_first_name, salary;

spool off

clear breaks columns computes
set space     1
set feedback  6
set pagesize  14
set linesize  80
set newpage   1
set heading   on
ttitle off
btitle off