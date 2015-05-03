/*
Brittany Cook
CS 325 - Fall 2014
Last modified: December 6, 2014

Report #3
A report of all the current item transactions.
*/

set feedback off
set pagesize 20
set linesize 100
set newpage 2
set space 2
column item_name heading 'Item'
ttitle 'Item Transactions'
btitle 'Humboldt Redwood Airlines'

spool 325report3-results.txt

select   transaction.trans_id "Transaction ID", 
         cust_first_name || ' ' || cust_last_name "Customer Name",
		 item_name
from     Customer, Transaction, Item_Purchase, Item
where    customer.cust_id = transaction.cust_id
         and transaction.trans_id = item_purchase.trans_id
		 and item.item_num = item_purchase.item_num
order by transaction.trans_id;

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