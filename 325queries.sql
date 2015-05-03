/*
Brittany Cook
CS 325 - Fall 2014
Last modified: December 6, 2014
*/

set feedback  off
set pagesize  25
set linesize  100

spool 325query-results.txt

prompt
prompt Query Number 1
prompt How many passengers are on flight 2604?
prompt

select count(*) "Passengers on Flight #2604"
from   Ticket_Purchase
where  flight_num = 2604;

prompt
prompt Query Number 2
prompt Who is on flight 2604?
prompt

select cust_first_name || ' ' || cust_last_name "Customer Name"
from   Customer, Ticket_Purchase, Transaction
where  customer.cust_id = transaction.cust_id
	   and transaction.trans_id = ticket_purchase.trans_id
       and flight_num = 2604
order by cust_last_name, cust_first_name;

prompt
prompt Query Number 3
prompt Whose bags are on flight 2604 and how many do they have?
prompt

select   cust_first_name || ' ' || cust_last_name "Customer Name", 
         count(*) "Number of Bags"
from     Customer, Bag_Check
where    customer.cust_id = bag_check.cust_id
         and flight_num = 2604
group by cust_first_name, cust_last_name
order by cust_last_name, cust_first_name;

prompt
prompt Query Number 4
prompt What is the average, minimum, maximum, and total weight of 
promp each individual baggage on flight 2604?
prompt

column 'Average Weight of Bags' format 999.99

select avg(weight) "Average Weight of Bags", min(weight) "Lightest Bag", 
       max(weight) "Heaviest Bag", sum(weight) "Total Weight of All Bags"
from   Bag_Check
where  flight_num = 2604;

prompt
prompt Query Number 5
prompt Who did not check on a bag?
prompt

select cust_first_name || ' ' || cust_last_name "Customer Name"
from   Customer
where  not exists (select 'a'
				   from Bag_Check
				   where bag_check.cust_id = customer.cust_id);

prompt
prompt Query Number 6
prompt Who bought items on a plane?
prompt

select   cust_first_name || ' ' || cust_last_name "Customer Name"
from     Customer, Transaction, Item_Purchase
where    customer.cust_id = transaction.cust_id
         and transaction.trans_id = item_purchase.trans_id
order by cust_last_name, cust_first_name;

prompt
prompt Query Number 7
prompt What items were not purchased?
prompt

select item_name "Item Name"
from   Item
where  not exists (select 'a'
				   from item_purchase
				   where item.item_num = item_purchase.item_num);

prompt
prompt Query Number 8
prompt Who are our employees, where do they work, and what is their salary?
prompt

column 'Airport Code' format a12
column 'Salary' format $999,999
column 'Employee Name' format a25

select   empl_id "Employee ID", empl_last_name || ', ' || empl_first_name "Employee Name", 
         air_code "Airport Code", salary "Salary"
from     Employee
order by air_code, empl_id, empl_last_name, empl_first_name, salary;

spool off

clear columns
set feedback  6
set pagesize  14
set linesize  80