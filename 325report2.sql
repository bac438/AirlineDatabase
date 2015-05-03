/*
Brittany Cook
CS 325 - Fall 2014
Last modified: December 6, 2014

Report #2
A report of all the current customers on flight #2604 and their baggage ID.
*/

set feedback off
set pagesize 41
set linesize 100
set newpage 2
set space 2
column seat_num heading 'Seat Number'
column bag_id heading 'Baggage ID'
break on 'Customer Name' on seat_num skip 1 on seat_num
ttitle 'Flight #2604'
btitle 'Humboldt Redwood Airlines'

spool 325report2-results.txt

select   cust_first_name || ' ' || cust_last_name "Customer Name", 
	     seat_num, bag_id
from     Customer, Ticket_Purchase, Transaction, Bag_Check
where    customer.cust_id = transaction.cust_id
	     and transaction.trans_id = ticket_purchase.trans_id
	     and customer.cust_id = bag_check.cust_id
         and ticket_purchase.flight_num = 2604
         and bag_check.flight_num = 2604
order by seat_num, bag_id;

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