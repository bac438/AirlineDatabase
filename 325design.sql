/*
Brittany Cook
CS 325 - Fall 2014
Project Schema/Design
Last modified: December 8, 2014

Format:
Table <Name>
Description of table.

Any domain restrictions explained.

Tables described in relational form.
*/

/*  
Table Customer
Customer table contains the information of each customer.  
A customer has an ID number, a first and last name, how many frequent 
flyer miles they have, and if they have special boarding permission.

A customer must have an ID number.  A customer must have a last name.  
If they have special boarding permission, spec_board_perm will contain 
a character 'y' for yes; if not, it will contain 'n' for no.

Customer(CUST_ID, cust_first_name, cust_last_name, freq_flyer_miles, 
		 spec_board_perm)

*/

drop table Customer cascade constraints;

create table Customer
(cust_id			integer,
 cust_first_name 	varchar2(25),
 cust_last_name 	varchar2(25)	not null,
 freq_flyer_miles	integer,
 spec_board_perm	char(1)			
		check(spec_board_perm in ('y', 'n')),
 primary key 		(cust_id)
);

/*
Table Customer_Phone
Contains a customer's phone number.  A customer can have multiple 
phone numbers.

The customer must have both an ID and a phone number to be placed 
into this table.

Customer_Phone(CUST_ID, CUST_PHONE_NUM)
foreign key (cust_id) references Customer
*/

drop table Customer_Phone cascade constraints;

create table Customer_Phone
(cust_id			integer,
 cust_phone_num		varchar2(13),
 primary key 		(cust_id, cust_phone_num),
 foreign key		(cust_id) references Customer
);

/*
Table Customer_Email
Contains a customer's email address.  A customer can have multiple
 email addresses.

A customer must have both an ID and an email to be placed into 
this table.

Customer_Email(CUST_ID, CUST_EMAIL)
foreign key (cust_id) references Customer
*/

drop table Customer_Email cascade constraints;

create table Customer_Email
(cust_id		integer,
 cust_email		varchar2(100),
 primary key	(cust_id, cust_email),
 foreign key	(cust_id) references Customer
);

/*
Table Transaction
This table includes the data for transactions.  A transaction 
has an ID number, a payment method, a purchase date, an optional
discount, the amount of the transaction before the discount, the
final purchase amount, the type of transaction it is, and the ID 
of the customer that made that transaction.  

Each transaction must have an ID.  Payment method must be 
"cash" = cash, "card" = debit or credit card, or "chck" = check or 
money order.  There must be a purchase amount.  The transaction type
must be "i" = item purchase or "t" = ticket purchase.  There must be
a customer who made the purchase.

Transaction(TRANS_ID, payment_method, cust_purchase_date, discount, 
			pre_discount_amnt, purchase_amnt, trans_type, cust_id)
	foreign key (cust_id) references Customer
*/

drop table Transaction cascade constraints;

create table Transaction
(trans_id 				integer,
 payment_method 		char(4)  		
		check(payment_method in ('cash', 'card', 'chck')),
 cust_purchase_date		date,
 discount      			smallint,
 pre_discount_amnt    	decimal(7,2),
 purchase_amnt          decimal(7,2)	not null,
 trans_type          	char(1)    		
		check(trans_type in ('i', 't')),
 cust_id             	integer			not null,
 primary key        	(trans_id),
 foreign key       		(cust_id) references Customer
);

/*
Table Plane
Table Plane contains all the data of each individual aircraft.  It
contains a plane ID, how many seats are in the aircraft, how much 
weight the aircraft can hold, the date of the last inspection, if the 
aircraft is in operation, and how many individual pieces of baggage 
the aircraft can carry approximately.

An aircraft must have a plane ID.  In operation will either be a 
"y" = yes it is in operation or "n" = no it is not in operation.

Plane(PLANE_ID, num_seats, plane_weight_max, last_inspection_date, 
	  in_operation, plane_type, approx_baggage)
*/

drop table Plane cascade constraints;

create table Plane
(plane_id             	char(3),
 num_seats          	smallint,
 plane_weight_max      	integer,
 last_inspection_date	date,
 in_operation        	char(1)		
		check(in_operation in ('y', 'n')),
 approx_baggage     	smallint,
 primary key         	(plane_id)
);

/*
Table Flight
Flight is for each individual flight on a specific aircraft.  Flight 
contains a flight number, the maximum altitude of the flight, the 
time and date the flight is scheduled, the actual date of the flight, 
the take off and landing date and time of the flight, the take off and landing 
gates, how many miles the flight was, and the ID of the plane used.

There must be a flight number and a time and date scheduled.

Flight(FLIGHT_NUM, flight_max_altitude, flight_date_sch, flight_date_act, 
       flight_takeoff_time, flight_landing_tiime, landing_gate_num, 
	   takeoff_gate_num, flight_miles, plane_id)
	foreign key (plane_id) references Plane

*/

drop table Flight cascade constraints;

create table Flight
(flight_num  			char(4),
 flight_max_altitude    integer,
 flight_date_sch       	date      	not null,
 flight_date_act        date,
 flight_landing_date   	date,
 landing_gate_num   	smallint,
 takeoff_gate_num     	smallint,
 flight_miles        	integer,
 plane_id            	char(3)		not null,
 primary key        	(flight_num),
 foreign key       		(plane_id) references Plane
);

/*
Table Ticket_Purchase
Ticket purchase contains the information for an individual purchase 
of a ticket.  It contains the ID of the transaction involved with 
this purchase, the date and time the customer checks into their 
flight, how a ticket was bought, what seat number this ticket is 
reserved for, and what flight number this ticket corresponds with.

There must be a transaction ID.  How this ticket was bought can be 
"phn" = over the phone, "onl" = online, or "per" = in person.  There 
must be a flight number.

Ticket_Purchase(TRANS_ID, check_in_date, how_bought_ticket, seat_num, 
				flight_num)
	foreign key (trans_id) references Transaction
	foreign key (flight_num) references Flight
*/

drop table Ticket_Purchase cascade constraints;

create table Ticket_Purchase
(trans_id            	integer,
 check_in_date      	date,
 how_bought_ticket		char(3)		
		check(how_bought_ticket in ('phn', 'onl', 'per')),
 seat_num             	smallint,
 flight_num            	char(4)		not null,
 primary key     		(trans_id),
 foreign key        	(trans_id) references Transaction,
 foreign key         	(flight_num) references Flight
);

/*
Table Item
This table contains all of the information of individual items or 
inventory.  Most of these can be purchased by customers.  An item has 
an item number, a quantity of items we expect to be on each plane, 
the name of the item, the category the item is in, the price we 
charge the customer for the item, how much we buy the item for at 
wholesale, and the ID of the transaction made on a particular item.

An item can be in one of eight categories:
"dk" = drink; "fd" = food; "mz" = magazine; "pr" = paper bags; 
"pl" = plastic bags; "ic" = ice; "cp" = cups; "np" = napkins.  
There must be an item number.

Item(ITEM_NUM, item_quantity, item_name, item_category, 
     item_price_cust, item_price_wholesale, trans_id)
	foreign key (trans_id) references Item_Purchase
*/

drop table Item cascade constraints;

create table Item
(item_num             	integer,
 item_quantity        	integer,
 item_name            	varchar2(25),
 item_category        	varchar2(25)	
		check(item_category in('dk', 'fd', 'mz', 'pr', 
		                       'pl', 'ic', 'cp', 'np')),
 item_price_cust      	decimal(7,2),
 item_price_whosale		decimal(7,2),
 primary key      		(item_num)
);

/*
Table Item_Purchase
Item purchase contains the transaction ID for a purchase of an item
and an item number that was purchased.

There must be a transaction ID and an item number.

Item_Purchase(TRANS_ID)
	foreign key (trans_id) references Transaction
*/

drop table Item_Purchase cascade constraints;

create table Item_Purchase
(trans_id     	integer,
 item_num		integer,
 primary key 	(trans_id, item_num),
 foreign key 	(trans_id) references Transaction,
 foreign key	(item_num) references Item
);

/*
Table Inventory_On_Plane
This table specifies what items are on which planes using the plane 
ID and the item number.

There must be a plane ID and an item number.

Inventory_On_Plane(PLANE_ID, ITEM_NUM)
	foreign key (plane_id) references Plane
	foreign key (item_num) references Item
*/



drop table Inventory_On_Plane cascade constraints;

create table Inventory_On_Plane
(plane_id 		char(3),
 item_num  		integer,
 primary key	(plane_id, item_num),
 foreign key  	(plane_id) references Plane,
 foreign key   	(item_num) references Item
);

/*
Table Airport
Airport contains the internationally recognized standard three letter 
airport code for each airport a flight can fly into or out of.

There must be an airport code.

Airport(AIR_CODE)
*/

drop table Airport cascade constraints;

create table Airport
(air_code     	char(3),
 primary key	(air_code)
);

/*
Table Airport_Gate
This table lists all the gates specific airports allow the aircraft 
to fly into.  It has the airport code of the specific airport and the 
gate number.  Multiple gates can be listed for the same airport.

There must be an airport code and a gate number.

Airport_Gate(AIR_CODE, GATE_NUM)
	foreign key (air_code) references Airport
*/

drop table Airport_Gate cascade constraints;

create table Airport_Gate
(air_code		char(3),
 gate_num		varchar2(5),
 primary key 	(air_code, gate_num),
 foreign key 	(air_code) references Airport
);

/*
Table Airport_Terminal
This table lists all the terminals specific airports allow the 
aircraft to fly into.  It has the airport code of the specific 
airport and the terminal number.  Multiple terminals can be listed 
for the same airport.

There must be an airport code and a terminal number.

Airport_Terminal(AIR_CODE, TERMINAL_NUM)
foreign key (air_code) references Airport
*/

drop table Airport_Terminal cascade constraints;

create table Airport_Terminal
(air_code      	 	char(3),
 terminal_num		varchar2(5),
 primary key   		(air_code, terminal_num),
 foreign key  		(air_code) references Airport
);

/*
Table Employee
This table contains all the information about all employees.  
Employees have an employee ID, a first and last name, a job title, a 
job location, a salary, and the airport code of the airport they are 
based in.

There must be an employee ID.  An Employee must have a last name.  
Job location must be "g" = ground crew; "p" plane; or "o" office.

Employee(EMPL_ID, empl_first_name, empl_last_name, job_title, 
         job_loc, salary, air_code)
	foreign key (air_code) references Airport
*/

drop table Employee cascade constraints;

create table Employee
(empl_id 			integer,
 empl_first_name 	varchar2(30),
 empl_last_name 	varchar2(30)	not null,
 job_title 			varchar2(30),
 job_loc 			char(1) 		
		check(job_loc in ('g', 'p', 'o')),
 salary 			decimal(20, 2),
 air_code 			char(3),
 primary key 		(empl_id),
 foreign key 		(air_code) references Airport
);

/*
Table Employee_Phone
This table contains the phone numbers for employees.  One employee 
may have multiple phone numbers.

There must be both an employee ID and an employee phone number in 
order to be included in this table.

Employee_Phone(EMPL_ID, EMPL_PHONE_NUM)
	foreign key (empl_id) references Employee
*/

drop table Employee_Phone cascade constraints;

create table Employee_Phone
(empl_id 			integer,
 empl_phone_num 	varchar2(15),
 primary key 		(empl_id, empl_phone_num),
 foreign key 		(empl_id) references Employee
);

/*
Table Flight_Crew
This table keeps track of which employees are part of a flight crew. 
 Used mostly for the Flight Staff table.

There must be an employee ID to be included in this table.

Flight_Crew(EMPL_ID)
	foreign key (empl_id) references Employee
*/

drop table Flight_Crew cascade constraints;

create table Flight_Crew
(empl_id 		integer,
 primary key 	(empl_id),
 foreign key    (empl_id) references Employee
);

/*
Table Flight_Shift
This table contains information for employees that are for a specific 
flight shift.  It has a shift ID, a start time, an end time, a date, 
a plane ID, and an employee ID that references the table Flight Crew.

There must be a shift ID, start date/time, end date/time, a plane ID, and an 
employee ID.

Flight_Shift(SHIFT_ID, start_time, end_time, plane_id, 
             empl_id)
	foreign key (plane_id) references Plane
	foreign key (empl_id) references Flight_Crew
*/

drop table Flight_Shift cascade constraints;

create table Flight_Shift
(shift_id 		integer,
 start_time 	date 		not null,
 end_time 		date,
 plane_id 		char(3) 	not null,
 empl_id 		integer 	not null,
 primary key 	(shift_id),
 foreign key 	(plane_id) references Plane,
 foreign key 	(empl_id) references Flight_Crew
);

/*
Table Other_Employees
This table contains a list of other employees (in the form of their 
ID) that are not flight crew members.

There must be an employee ID.

Other_Employees(EMPL_ID
	foreign key (empl_id) references Employee
*/

drop table Other_Employees cascade constraints;

create table Other_Employees
(empl_id 		integer,
 primary key 	(empl_id),
 foreign key 	(empl_id) references Employee
);

/*
Table Plane_Flies_Into
This table contains the airports any given plane can fly into.  A plane can fly into multiple airports and multiple airports can have 
many planes flying into it.  (Not at once,  hopefully.)  It has a 
plane ID and an airport code.

There must be both a plane ID and an airport code.

Plane_Flies_Into(PLANE_ID, AIR_CODE)
	foreign key (plane_id) references Plane
	foreign key (air_code) references Airport
*/

drop table Plane_Flies_Into cascade constraints;

create table Plane_Flies_Into
(plane_id 		char(3),
 air_code 		char(3),
 primary key 	(plane_id, air_code),
 foreign key 	(plane_id) references Plane,
 foreign key 	(air_code) references Airport
);

/*
Table Bag_Check
This table contains information about any baggage a customer decides
to check in onto the plane.  It contains the baggage ID, a weight, 
the ID of the customer who brought it, and the flight number the 
baggage is on.

There must be a baggage ID, a customer ID, and a flight number.

Bag_Check(BAG_ID, weight, cust_id, flight_num
	foreign key (cust_id) references Customer
	foreign key (flight_num) references Flight
*/

drop table Bag_Check cascade constraints;

create table Bag_Check
(bag_id 		integer 	not null,
 weight 		integer,
 cust_id 		integer 	not null,
 flight_num 	char(4) 	not null,
 primary key 	(bag_id),
 foreign key 	(cust_id) references Customer,
 foreign key 	(flight_num) references Flight
);