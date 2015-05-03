/*
Brittany Cook
CS 325 - Fall 2014
Project Population
Last Modified: December 6, 2014
*/

/*
Table Customer

create table Customer
(cust_id			integer,
 cust_first_name 	varchar2(25),
 cust_last_name 	varchar2(25)	not null,
 freq_flyer_miles	integer,
 spec_board_perm	char(1)			
		check(spec_board_perm in ('y', 'n')),
 primary key 		(cust_id)
);

Including a customer_seq, starts with 1 and increments 1.

List of customers:
1.  Jessica Owens
2.  Brittany Cook
3.  Charles Kendrick
4.  Aiden Vasilica
5.  Chase Cantrell
6.  Victoria Cantrell
7.  Hayden Norwood
8.  Rowan Lovell
9.  Friedrich Grossel
10. Robert Blackwood
11. Bigfoot
12. Alexander Derosiers
13. Aria Desrosiers
14. Romeo Desrosiers
15. Dimitri Desrosiers
16. Aimee Desrosiers
17. Caderyn Desrosiers
18. Svetlana Derosiers
*/

drop sequence customer_seq;

create sequence customer_seq
increment by 1
start with 0
minvalue 0;

-- 1
insert into Customer
values
(customer_seq.nextval, 'Jessica', 'Owens', 7421, 'n');

-- 2
insert into Customer
values
(customer_seq.nextval, 'Brittany', 'Cook', 96813, 'n');

-- 3
insert into Customer
values
(customer_seq.nextval, 'Charles', 'Kendrick', 63269, 'n');

-- 4
insert into Customer
values
(customer_seq.nextval, 'Aiden', 'Vasilica', 0, 'n');

-- 5
insert into Customer
values
(customer_seq.nextval, 'Chase', 'Cantrell', 8521, 'n');

-- 6
insert into Customer
values
(customer_seq.nextval, 'Victoria', 'Cantrell', 378, 'n');

-- 7
insert into Customer
values
(customer_seq.nextval, 'Hayden', 'Norwood', 8428, 'n');

-- 8
insert into Customer
values
(customer_seq.nextval, 'Rowan', 'Lovell', 2694, 'n');

-- 9
insert into Customer
values
(customer_seq.nextval, 'Friedrich', 'Grosssel', 2002, 'n');

-- 10
insert into Customer
values
(customer_seq.nextval, 'Robert', 'Blackwood', 5621, 'n');

-- 11
insert into Customer(cust_id, cust_last_name, freq_flyer_miles, spec_board_perm)
values
(customer_seq.nextval, 'Bigfoot', 69239858, 'y');

-- 12
insert into Customer
values
(customer_seq.nextval, 'Alexander', 'Desrosiers', 1293, 'n');

-- 13
insert into Customer
values
(customer_seq.nextval, 'Aria', 'Desrosiers', 5958, 'n');

-- 14
insert into Customer
values
(customer_seq.nextval, 'Romeo', 'Desrosiers', 300, 'n');

-- 15
insert into Customer
values
(customer_seq.nextval, 'Dimitri', 'Desrosiers', 300, 'n');

-- 16
insert into Customer
values
(customer_seq.nextval, 'Aimee', 'Desrosiers', 592, 'n');

-- 17
insert into Customer
values
(customer_seq.nextval, 'Caderyn', 'Desrosiers', 592, 'n');

-- 18
insert into Customer
values
(customer_seq.nextval, 'Svetlana', 'Desrosiers', 0, 'n');

/*
Table Customer Phone

create table Customer_Phone
(cust_id			integer,
 cust_phone_num		varchar2(13),
 primary key 		(cust_id, cust_phone_num),
 foreign key		(cust_id) references Customer
);
*/

-- 1
insert into Customer_Phone
values
(1, '15554445512');

-- 2
insert into Customer_Phone
values
(2, '19512837167');

-- 3
insert into Customer_Phone
values
(3, '44859129');

-- 4
insert into Customer_Phone
values
(4, '409278910');

-- 5
insert into Customer_Phone
values
(5, '18021204829');

-- 6
insert into Customer_Phone
values
(6, '18027810583');

-- 7
insert into Customer_Phone
values
(7, '12122918571');

-- 8
insert into Customer_Phone
values
(8, '17186829681');

-- 9
insert into Customer_Phone
values
(9, '12129581847');

-- 10
insert into Customer_Phone
values
(10, '444918472');

-- 11
insert into Customer_Phone
values
(11, '18002443338');

-- 12
insert into Customer_Phone
values
(12, '335918593');

-- 13
insert into Customer_Phone
values
(13, '339581759');

-- 14
insert into Customer_Phone
values
(14, '330918397');

-- 15
insert into Customer_Phone
values
(15, '330691769');

-- 16
insert into Customer_Phone
values
(16, '339781756');

-- 17
insert into Customer_Phone
values
(17, '339681750');

-- 18
insert into Customer_Phone
values
(18, '333920682');

/*
Table Customer Email

create table Customer_Email
(cust_id		integer,
 cust_email		varchar2(100),
 primary key	(cust_id, cust_email),
 foreign key	(cust_id) references Customer
);
*/

-- 1
insert into Customer_Email
values
(1, 'sparklecorn13@gmail.com');

-- 2
insert into Customer_Email
values
(2, 'doximel@hotmail.com');

-- 3
insert into Customer_Email
values
(3, 'charles@kendrick.com');

-- 4
insert into Customer_Email
values
(4, 'aiden@vasilica.com');

-- 5
insert into Customer_Email
values
(5, 'chase@cantrell.com');

-- 6
insert into Customer_Email
values
(6, 'victoria@cantrell.com');

-- 7
insert into Customer_Email
values
(7, 'hayden@norwood.com');

-- 8
insert into Customer_Email
values
(8, 'rowan@lovell.com');

-- 9
insert into Customer_Email
values
(9, 'fgrossel@mib.gov');

-- 10
insert into Customer_Email
values
(10, 'robbblackwood@sbcglobal.net');

-- 11
insert into Customer_Email
values
(11, 'bigfoot@bigfootistotallyreal.org');

-- 12
insert into Customer_Email
values
(12, 'axvd@wolfrecords.com');

-- 13
insert into Customer_Email
values
(13, 'aod@wolfrecords.com');

-- 14
insert into Customer_Email
values
(14, 'romeo@desrosiers.com');

-- 15
insert into Customer_Email
values
(15, 'dimitri@desrosiers.com');

-- 16
insert into Customer_Email
values
(16, 'aimee@desrosiers.com');

-- 17
insert into Customer_Email
values
(17, 'caderyn@desrosiers.com');

-- 18
insert into Customer_Email
values
(2, 'bac438@humboldt.edu');

/*
Table Transaction

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

Including a transaction_seq, starts with 1 and increments 1.
*/

drop sequence transaction_seq;

create sequence transaction_seq
increment by 1
start with 0
minvalue 0;

-- 1
insert into Transaction
values
(transaction_seq.nextval, 'card', '19-Nov-2014', 0, 124.53, 124.53, 't', 1);

-- 2
insert into Transaction
values
(transaction_seq.nextval, 'chck', '20-Nov-2014', 0, 178.33, 178.33, 't', 2);

-- 3
insert into Transaction
values
(transaction_seq.nextval, 'card', '20-Nov-2014', 0, 345.99, 345.99, 't', 3);

-- 4
insert into Transaction
values
(transaction_seq.nextval, 'card', '20-Nov-2014', 0, 345.99, 345.99, 't', 4);

-- 5
insert into Transaction
values
(transaction_seq.nextval, 'cash', '20-Nov-2014', 0, 99.99, 99.99, 't', 5);

-- 6
insert into Transaction
values
(transaction_seq.nextval, 'card', '20-Nov-2014', 0, 222.22, 222.22, 't', 6);

-- 7
insert into Transaction
values
(transaction_seq.nextval, 'cash', '20-Nov-2014', 0, 193.99, 193.99, 't', 7);

-- 8
insert into Transaction
values
(transaction_seq.nextval, 'card', '20-Nov-2014', 0, 87.23, 87.23, 't', 8);

-- 9
insert into Transaction
values
(transaction_seq.nextval, 'card', '20-Nov-2014', 0, 345.99, 345.99, 't', 9);

-- 10
insert into Transaction
values
(transaction_seq.nextval, 'card', '20-Nov-2014', 0, 345.99, 345.99, 't', 10);

-- 11
insert into Transaction
values
(transaction_seq.nextval, 'chck', '20-Nov-2014', 99, 9999.99, 99.99, 't', 11);

-- 12
insert into Transaction
values
(transaction_seq.nextval, 'card', '20-Nov-2014', 0, 1948.22, 1948.22, 't', 12);

-- 13
insert into Transaction
values
(transaction_seq.nextval, 'cash', '22-Nov-2014', 0, 5.00, 5.00, 'i', 2);

-- 14
insert into Transaction
values
(transaction_seq.nextval, 'cash', '22-Nov-2014', 0, 45.00, 45.00, 'i', 11);

-- 15
insert into Transaction
values
(transaction_seq.nextval, 'cash', '22-Nov-2014', 0, 100.00, 100.00, 'i', 12);

--16
insert into Transaction
values
(transaction_seq.nextval, 'cash', '22-Nov-2014', 0, 6.00, 6.00, 'i', 1);

--17
insert into Transaction
values
(transaction_seq.nextval, 'cash', '22-Nov-2014', 0, 34.00, 34.00, 'i', 3);

--18
insert into Transaction
values
(transaction_seq.nextval, 'cash', '22-Nov-2014', 0, 17.00, 17.00, 'i', 4);

--19
insert into Transaction
values
(transaction_seq.nextval, 'cash', '22-Nov-2014', 0, 10.00, 10.00, 'i', 7);

--20
insert into Transaction
values
(transaction_seq.nextval, 'cash', '22-Nov-2014', 10, 5.00, 4.50, 'i', 8);

--21
insert into Transaction
values
(transaction_seq.nextval, 'cash', '22-Nov-2014', 0, 2.22, 2.22, 'i', 10);

-- 22
insert into Transaction
values
(transaction_seq.nextval, 'card', '20-Nov-2014', 0, 0, 0, 't', 13);

-- 23
insert into Transaction
values
(transaction_seq.nextval, 'card', '20-Nov-2014', 0, 0, 0, 't', 14);

-- 24
insert into Transaction
values
(transaction_seq.nextval, 'card', '20-Nov-2014', 0, 0, 0, 't', 15);

-- 25
insert into Transaction
values
(transaction_seq.nextval, 'card', '20-Nov-2014', 0, 0, 0, 't', 16);

-- 26
insert into Transaction
values
(transaction_seq.nextval, 'card', '20-Nov-2014', 0, 0, 0, 't', 17);

-- 27
insert into Transaction
values
(transaction_seq.nextval, 'card', '20-Nov-2014', 0, 0, 0, 't', 18);

-- 28
insert into Transaction
values
(transaction_seq.nextval, 'cash', '22-Nov-2014', 0, 1.00, 1.00, 'i', 3);

-- 29
insert into Transaction
values
(transaction_seq.nextval, 'card', '19-Nov-2014', 0, 51.31, 51.31, 't', 1);

-- 30
insert into Transaction
values
(transaction_seq.nextval, 'chck', '20-Nov-2014', 0, 121.11, 121.11, 't', 2);

-- 31
insert into Transaction
values
(transaction_seq.nextval, 'card', '20-Nov-2014', 0, 55.66, 55.66, 't', 3);

-- 32
insert into Transaction
values
(transaction_seq.nextval, 'card', '20-Nov-2014', 0, 3.22, 3.22, 't', 4);

-- 33
insert into Transaction
values
(transaction_seq.nextval, 'cash', '20-Nov-2014', 0, 83.83, 83.83, 't', 5);

-- 34
insert into Transaction
values
(transaction_seq.nextval, 'card', '20-Nov-2014', 0, 352.21, 352.21, 't', 6);

-- 35
insert into Transaction
values
(transaction_seq.nextval, 'cash', '20-Nov-2014', 0, 188.99, 188.99, 't', 7);

-- 36
insert into Transaction
values
(transaction_seq.nextval, 'card', '20-Nov-2014', 0, 130.00, 130.00, 't', 8);

-- 37
insert into Transaction
values
(transaction_seq.nextval, 'card', '20-Nov-2014', 0, 35.99, 35.99, 't', 9);

-- 38
insert into Transaction
values
(transaction_seq.nextval, 'card', '20-Nov-2014', 0, 34.99, 34.99, 't', 10);

-- 39
insert into Transaction
values
(transaction_seq.nextval, 'chck', '20-Nov-2014', 0, 99.99, 99.99, 't', 11);

/*
Table Plane

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
*/

--1
insert into Plane
values
('001', 30, 26433, '20-Nov-2014', 'y', 35);

--2
insert into Plane
values
('002', 30, 26433, '20-Nov-2014', 'y', 35);

--3
insert into Plane
values
('003', 70, 82000, '20-Nov-2014', 'y', 178);

/*
Table Flight

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
*/

--1
insert into Flight
values
('1234', 30000, to_date('21-Nov-2014 12:00 PM','DD-Mon-YYYY HH:MI AM'), 
	to_date('21-Nov-2014 12:01 PM','DD-Mon-YYYY HH:MI AM'), 
	to_date('21-Nov-2014 12:47 PM','DD-Mon-YYYY HH:MI AM'), 25, 1, 2090, '001');

--2
insert into Flight
values
('5678', 30000, to_date('21-Nov-2014 01:00 PM','DD-Mon-YYYY HH:MI AM'), 
	to_date('21-Nov-2014 01:04 PM','DD-Mon-YYYY HH:MI AM'), 
	to_date('21-Nov-2014 02:03 PM','DD-Mon-YYYY HH:MI AM'), 24, 1, 2090, '002');

--3
insert into Flight
values
('9012', 35000, to_date('21-Nov-2014 02:00 PM','DD-Mon-YYYY HH:MI AM'), 
	to_date('21-Nov-2014 02:02 PM','DD-Mon-YYYY HH:MI AM'), 
	to_date('21-Nov-2014 03:49 PM','DD-Mon-YYYY HH:MI AM'), 21, 1, 2090, '003');

--4
insert into Flight
values
('3456', 30000, to_date('21-Nov-2014 03:00 PM','DD-Mon-YYYY HH:MI AM'), 
	to_date('21-Nov-2014 03:00 PM','DD-Mon-YYYY HH:MI AM'), 
	to_date('21-Nov-2014 04:00 PM','DD-Mon-YYYY HH:MI AM'), 2, 25, 2090, '001');

--5
insert into Flight
values
('7890', 30000, to_date('22-Nov-2014 09:00 AM','DD-Mon-YYYY HH:MI AM'), 
	to_date('22-Nov-2014 09:18 AM','DD-Mon-YYYY HH:MI AM'), 
	to_date('22-Nov-2014 09:59 AM','DD-Mon-YYYY HH:MI AM'), 2, 24, 2090, '002');

--6
insert into Flight
values
('2345', 30000, to_date('22-Nov-2014 10:00 AM','DD-Mon-YYYY HH:MI AM'), 
	to_date('22-Nov-2014 10:01 AM','DD-Mon-YYYY HH:MI AM'), 
	to_date('22-Nov-2014 10:32 AM','DD-Mon-YYYY HH:MI AM'), 27, 1, 2090, '001');

--7
insert into Flight
values
('6789', 35000, to_date('22-Nov-2014 11:00 AM','DD-Mon-YYYY HH:MI AM'), 
	to_date('22-Nov-2014 11:02 AM','DD-Mon-YYYY HH:MI AM'), 
	to_date('22-Nov-2014 12:48 PM','DD-Mon-YYYY HH:MI AM'), 2, 21, 2090, '003');

--8
insert into Flight
values
('0123', 30000, to_date('22-Nov-2014 12:00 PM','DD-Mon-YYYY HH:MI AM'), 
	to_date('22-Nov-2014 12:08 PM','DD-Mon-YYYY HH:MI AM'), 
	to_date('22-Nov-2014 12:58 PM','DD-Mon-YYYY HH:MI AM'), 2, 27, 2090, '001');

--9
insert into Flight
values
('9258', 30000, to_date('22-Nov-2014 06:00 PM','DD-Mon-YYYY HH:MI AM'), 
	to_date('22-Nov-2014 06:10 PM','DD-Mon-YYYY HH:MI AM'), 
	to_date('22-Nov-2014 07:30 PM','DD-Mon-YYYY HH:MI AM'), 32, 1, 2090, '002');

--10
insert into Flight
values
('2604', 35000, to_date('22-Nov-2014 07:00 PM','DD-Mon-YYYY HH:MI AM'), 
	to_date('22-Nov-2014 07:00 PM','DD-Mon-YYYY HH:MI AM'), 
	to_date('22-Nov-2014 07:30 PM','DD-Mon-YYYY HH:MI AM'), 34, 1, 2090, '001');

/*
Table Ticket Purchase

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
*/

-- 1
insert into Ticket_Purchase
values
(1, to_date('21-Nov-2014 10:00 AM','DD-Mon-YYYY HH:MI AM'), 'onl', 1, '1234');

-- 2
insert into Ticket_Purchase
values
(2, to_date('21-Nov-2014 10:00 AM','DD-Mon-YYYY HH:MI AM'), 'onl', 2, '1234');

-- 3
insert into Ticket_Purchase
values
(3, to_date('21-Nov-2014 11:30 AM','DD-Mon-YYYY HH:MI AM'), 'phn', 3, '1234');

-- 4
insert into Ticket_Purchase
values
(4, to_date('21-Nov-2014 12:00 PM','DD-Mon-YYYY HH:MI AM'), 'per', 1, '5678');

-- 5
insert into Ticket_Purchase
values
(5, to_date('21-Nov-2014 01:00 PM','DD-Mon-YYYY HH:MI AM'), 'onl', 1, '9012');

-- 6
insert into Ticket_Purchase
values
(6, to_date('21-Nov-2014 02:40 PM','DD-Mon-YYYY HH:MI AM'), 'phn', 1, '3456');

-- 7
insert into Ticket_Purchase
values
(7, to_date('22-Nov-2014 08:39 AM','DD-Mon-YYYY HH:MI AM'), 'onl', 1, '7890');

-- 8
insert into Ticket_Purchase
values
(8, to_date('22-Nov-2014 09:13 AM','DD-Mon-YYYY HH:MI AM'), 'per', 1, '2345');

-- 9
insert into Ticket_Purchase
values
(9, to_date('22-Nov-2014 10:18 AM','DD-Mon-YYYY HH:MI AM'), 'onl', 1, '6789');

-- 10
insert into Ticket_Purchase
values
(10, to_date('22-Nov-2014 10:20 AM','DD-Mon-YYYY HH:MI AM'), 'per', 1, '0123');

-- 11
insert into Ticket_Purchase
values
(11, to_date('22-Nov-2014 03:32 PM','DD-Mon-YYYY HH:MI AM'), 'onl', 1, '9258');

-- 12
insert into Ticket_Purchase
values
(12, to_date('22-Nov-2014 05:00 PM','DD-Mon-YYYY HH:MI AM'), 'phn', 1, '2604');

-- 13
insert into Ticket_Purchase
values
(22, to_date('22-Nov-2014 05:00 PM','DD-Mon-YYYY HH:MI AM'), 'phn', 2, '2604');

-- 14
insert into Ticket_Purchase
values
(23, to_date('21-Nov-2014 05:00 PM','DD-Mon-YYYY HH:MI AM'), 'phn', 3, '2604');

-- 15
insert into Ticket_Purchase
values
(24, to_date('21-Nov-2014 05:00 PM','DD-Mon-YYYY HH:MI AM'), 'phn', 4, '2604');

-- 16
insert into Ticket_Purchase
values
(25, to_date('21-Nov-2014 05:00 PM','DD-Mon-YYYY HH:MI AM'), 'phn', 5, '2604');

-- 17
insert into Ticket_Purchase
values
(26, to_date('21-Nov-2014 05:00 PM','DD-Mon-YYYY HH:MI AM'), 'phn', 6, '2604');

-- 18
insert into Ticket_Purchase
values
(29, to_date('21-Nov-2014 05:00 PM','DD-Mon-YYYY HH:MI AM'), 'onl', 8, '2604');

-- 19
insert into Ticket_Purchase
values
(30, to_date('21-Nov-2014 05:00 PM','DD-Mon-YYYY HH:MI AM'), 'onl', 9, '2604');

-- 20
insert into Ticket_Purchase
values
(31, to_date('21-Nov-2014 05:00 PM','DD-Mon-YYYY HH:MI AM'), 'phn', 10, '2604');

-- 21
insert into Ticket_Purchase
values
(32, to_date('21-Nov-2014 05:00 PM','DD-Mon-YYYY HH:MI AM'), 'onl', 11, '2604');

-- 22
insert into Ticket_Purchase
values
(33, to_date('21-Nov-2014 05:00 PM','DD-Mon-YYYY HH:MI AM'), 'per', 12, '2604');

-- 23
insert into Ticket_Purchase
values
(34, to_date('21-Nov-2014 05:00 PM','DD-Mon-YYYY HH:MI AM'), 'onl', 13, '2604');

-- 24
insert into Ticket_Purchase
values
(35, to_date('21-Nov-2014 05:00 PM','DD-Mon-YYYY HH:MI AM'), 'phn', 14, '2604');

-- 25
insert into Ticket_Purchase
values
(36, to_date('21-Nov-2014 05:00 PM','DD-Mon-YYYY HH:MI AM'), 'onl', 15, '2604');

-- 26
insert into Ticket_Purchase
values
(37, to_date('21-Nov-2014 05:00 PM','DD-Mon-YYYY HH:MI AM'), 'per', 16, '2604');

-- 27
insert into Ticket_Purchase
values
(38, to_date('21-Nov-2014 05:00 PM','DD-Mon-YYYY HH:MI AM'), 'phn', 17, '2604');

-- 28
insert into Ticket_Purchase
values
(39, to_date('21-Nov-2014 05:00 PM','DD-Mon-YYYY HH:MI AM'), 'onl', 18, '2604');

-- 29
insert into Ticket_Purchase
values
(27, to_date('21-Nov-2014 05:00 PM','DD-Mon-YYYY HH:MI AM'), 'phn', 7, '2604');

/*
Table Item

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

Including a item_seq, starts with 1 and increments 1.
*/

drop sequence item_seq;

create sequence item_seq
increment by 1
start with 0
minvalue 0;

--1
insert into Item
values
(item_seq.nextval, 60, 'Cola', 'dk', 1.99, 0.66);

--2
insert into Item
values
(item_seq.nextval, 23, 'Pretzels', 'fd', 4.99, 1.66);

--3
insert into Item
values
(item_seq.nextval, 1, 'Alcohol', 'dk', 10.99, 2.20);

--4
insert into Item
values
(item_seq.nextval, 4, 'Juice', 'dk', 6.00, 2.00);

--5
insert into Item
values
(item_seq.nextval, 67, 'Nuts', 'fd', 1.99, 0.66);

--6
insert into Item
values
(item_seq.nextval, 17, 'Dried Fruit', 'fd', 1.99, 1.33);

--7
insert into Item
values
(item_seq.nextval, 5, 'Seltzer', 'dk', 0.99, 0.33);

--8
insert into Item
values
(item_seq.nextval, 34, 'Coffee', 'dk', 5.00, 1.67);

--9
insert into Item
values
(item_seq.nextval, 31, 'Crackers', 'fd', 2.22, 0.74);

--10
insert into Item
values
(item_seq.nextval, 88, 'Water', 'dk', 1.00, 0.33);

--11
insert into Item
values
(item_seq.nextval, 100, 'Ice', 'ic', 0, 0);

--12
insert into Item
values
(item_seq.nextval, 100, 'Airline Newsletter', 'mz', 0, 0);

--13
insert into Item
values
(item_seq.nextval, 100, 'SkyMall', 'mz', 0, 0);

--14
insert into Item
values
(item_seq.nextval, 200, 'Paper Bag', 'pr', 0, 0);

--15
insert into Item
values
(item_seq.nextval, 50, 'Plastic Bag', 'pl', 0, 0);

--16
insert into Item
values
(item_seq.nextval, 200, 'Plastic Cups', 'cp', 0, 0);

--17
insert into Item
values
(item_seq.nextval, 300, 'Paper Napkins', 'np', 0, 0);

/*
Table Item Purchase

create table Item_Purchase
(trans_id     	integer,
 primary key 	(trans_id),
 foreign key 	(trans_id) references Transaction
);
*/

--1
insert into Item_Purchase
values
(13, 1);

--2
insert into Item_Purchase
values
(14, 2);

--3
insert into Item_Purchase
values
(15, 3);

--4
insert into Item_Purchase
values
(16, 4);

--5
insert into Item_Purchase
values
(17, 5);

--6
insert into Item_Purchase
values
(18, 6);

--7
insert into Item_Purchase
values
(19, 7);

--8
insert into Item_Purchase
values
(20, 8);

--9
insert into Item_Purchase
values
(21, 9);

--10
insert into Item_Purchase
values
(28, 10);

/*
Table Inventory on Plane

create table Inventory_On_Plane
(plane_id 		char(3),
 item_num  		integer,
 primary key	(plane_id, item_num),
 foreign key  	(plane_id) references Plane,
 foreign key   	(item_num) references Item
);
*/

--1
insert into Inventory_On_Plane
values
('001', 1);

--2
insert into Inventory_On_Plane
values
('001', 2);

--3
insert into Inventory_On_Plane
values
('001', 3);

--4
insert into Inventory_On_Plane
values
('001', 4);

--5
insert into Inventory_On_Plane
values
('001', 5);

--6
insert into Inventory_On_Plane
values
('001', 6);

--7
insert into Inventory_On_Plane
values
('001', 7);

--8
insert into Inventory_On_Plane
values
('001', 8);

--9
insert into Inventory_On_Plane
values
('001', 9);

--10
insert into Inventory_On_Plane
values
('001', 10);

--11
insert into Inventory_On_Plane
values
('001', 11);

--12
insert into Inventory_On_Plane
values
('001', 12);

--13
insert into Inventory_On_Plane
values
('001', 13);

--14
insert into Inventory_On_Plane
values
('001', 14);

--15
insert into Inventory_On_Plane
values
('001', 15);

--16
insert into Inventory_On_Plane
values
('001', 16);

prompt ????

--17
insert into Inventory_On_Plane
values
('001', 17);

--18
insert into Inventory_On_Plane
values
('002', 1);

--19
insert into Inventory_On_Plane
values
('002', 2);

--20
insert into Inventory_On_Plane
values
('002', 3);

--21
insert into Inventory_On_Plane
values
('002', 4);

--22
insert into Inventory_On_Plane
values
('002', 5);

--23
insert into Inventory_On_Plane
values
('002', 6);

--24
insert into Inventory_On_Plane
values
('002', 7);

--25
insert into Inventory_On_Plane
values
('002', 8);

--26
insert into Inventory_On_Plane
values
('002', 9);

--27
insert into Inventory_On_Plane
values
('002', 10);

--28
insert into Inventory_On_Plane
values
('002', 11);

--29
insert into Inventory_On_Plane
values
('002', 12);

--30
insert into Inventory_On_Plane
values
('002', 13);

--31
insert into Inventory_On_Plane
values
('002', 14);

--32
insert into Inventory_On_Plane
values
('002', 15);

--33
insert into Inventory_On_Plane
values
('002', 16);

--34
insert into Inventory_On_Plane
values
('002', 17);

--35
insert into Inventory_On_Plane
values
('003', 1);

--36
insert into Inventory_On_Plane
values
('003', 2);

--37
insert into Inventory_On_Plane
values
('003', 3);

--38
insert into Inventory_On_Plane
values
('003', 4);

--39
insert into Inventory_On_Plane
values
('003', 5);

--40
insert into Inventory_On_Plane
values
('003', 6);

--41
insert into Inventory_On_Plane
values
('003', 7);

--42
insert into Inventory_On_Plane
values
('003', 8);

--43
insert into Inventory_On_Plane
values
('003', 9);

--44
insert into Inventory_On_Plane
values
('003', 10);

--45
insert into Inventory_On_Plane
values
('003', 11);

--46
insert into Inventory_On_Plane
values
('003', 12);

--47
insert into Inventory_On_Plane
values
('003', 13);

--48
insert into Inventory_On_Plane
values
('003', 14);

--49
insert into Inventory_On_Plane
values
('003', 15);

--50
insert into Inventory_On_Plane
values
('003', 16);

--51
insert into Inventory_On_Plane
values
('003', 17);

/*
Table Airport

create table Airport
(air_code     	char(3),
 primary key	(air_code)
);
*/

--1
insert into Airport
values
('ACV');

--2
insert into Airport
values
('SFO');

--3
insert into Airport
values
('SMF');

--4
insert into Airport
values
('CEC');

--5
insert into Airport
values
('PDX');

--6
insert into Airport
values
('LAX');

--7
insert into Airport
values
('SEA');

/*
Table Airport Gate

create table Airport_Gate
(air_code		char(3),
 gate_num		varchar2(5),
 primary key 	(air_code, gate_num),
 foreign key 	(air_code) references Airport
);
*/

--1
insert into Airport_Gate
values
('ACV', '1');

--2
insert into Airport_Gate
values
('ACV', '2');

--3
insert into Airport_Gate
values
('SFO', '25');

--4
insert into Airport_Gate
values
('SFO', '21');

--5
insert into Airport_Gate
values
('SFO', '27');

--6
insert into Airport_Gate
values
('SFO', '32');

--7
insert into Airport_Gate
values
('SFO', '34');

--8
insert into Airport_Gate
values
('SFO', '22');

--9
insert into Airport_Gate
values
('SFO', '29');

--10
insert into Airport_Gate
values
('SFO', '30');

/*
Table Airport Terminal

create table Airport_Terminal
(air_code      	 	char(3),
 terminal_num		varchar2(5),
 primary key   		(air_code, terminal_num),
 foreign key  		(air_code) references Airport
);
*/

--1
insert into Airport_Terminal
values
('ACV', '1');

--2
insert into Airport_Terminal
values
('SFO', '3');

/*
Table Employee

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

Including a employee_seq, starts with 1 and increments 1.
*/

drop sequence employee_seq;

create sequence employee_seq
increment by 1
start with 0
minvalue 0;

--1
insert into Employee
values
(employee_seq.nextval, 'John', 'Smith', 'pilot', 'p', 70000, 'ACV');

--2
insert into Employee
values
(employee_seq.nextval, 'Jasmine', 'Chandler', 'pilot', 'p', 70000, 'ACV');

--3
insert into Employee
values
(employee_seq.nextval, 'Damon', 'Thornton', 'pilot', 'p', 70000, 'ACV');

--4
insert into Employee
values
(employee_seq.nextval, 'Luz', 'Manthis', 'pilot', 'p', 70000, 'ACV');

--5
insert into Employee
values
(employee_seq.nextval, 'Johnnie', 'Page', 'pilot', 'p', 70000, 'ACV');

--6
insert into Employee
values
(employee_seq.nextval, 'Ricky', 'Olson', 'copilot', 'p', 60000, 'ACV');

--7
insert into Employee
values
(employee_seq.nextval, 'Jesse', 'Griffith', 'copilot', 'p', 60000, 'ACV');

--8
insert into Employee
values
(employee_seq.nextval, 'Harriet', 'Hamilton', 'copilot', 'p', 60000, 'ACV');

--9
insert into Employee
values
(employee_seq.nextval, 'Darrell', 'Nunez', 'copilot', 'p', 60000, 'ACV');

--10
insert into Employee
values
(employee_seq.nextval, 'Jodi', 'Cook', 'copilot', 'p', 60000, 'ACV');

--11
insert into Employee
values
(employee_seq.nextval, 'Mandy', 'Ferguson', 'attendant', 'p', 55000, 'ACV');

--12
insert into Employee
values
(employee_seq.nextval, 'Laurence', 'Turner', 'attendant', 'p', 55000, 'ACV');

--13
insert into Employee
values
(employee_seq.nextval, 'Christine', 'Banks', 'attendant', 'p', 55000, 'ACV');

--14
insert into Employee
values
(employee_seq.nextval, 'Omar', 'Santos', 'attendant', 'p', 55000, 'ACV');

--15
insert into Employee
values
(employee_seq.nextval, 'Erik', 'Jacobs', 'attendant', 'p', 55000, 'ACV');

--16
insert into Employee
values
(employee_seq.nextval, 'Patrick', 'Guerrero', 'attendant', 'p', 55000, 'ACV');

--17
insert into Employee
values
(employee_seq.nextval, 'April', 'Gordon', 'attendant', 'p', 55000, 'ACV');

--18
insert into Employee
values
(employee_seq.nextval, 'Jody', 'Salazar', 'attendant', 'p', 55000, 'ACV');

--19
insert into Employee
values
(employee_seq.nextval, 'Hugh', 'Rhodes', 'attendant', 'p', 55000, 'ACV');

--20
insert into Employee
values
(employee_seq.nextval, 'Tony', 'Baldwin', 'attendant', 'p', 55000, 'ACV');

--21
insert into Employee
values
(employee_seq.nextval, 'Lillie', 'Clark', 'ticket desk', 'o', 55000, 'ACV');

--22
insert into Employee
values
(employee_seq.nextval, 'Leslie', 'Luna', 'ticket desk', 'o', 55000, 'ACV');

--23
insert into Employee
values
(employee_seq.nextval, 'Judy', 'Patrick', 'ticket desk', 'o', 55000, 'ACV');

--24
insert into Employee
values
(employee_seq.nextval, 'Ana', 'Oliver', 'ticket desk', 'o', 55000, 'ACV');

--25
insert into Employee
values
(employee_seq.nextval, 'Emmett', 'Payne', 'ticket desk', 'o', 55000, 'ACV');

--26
insert into Employee
values
(employee_seq.nextval, 'Franklin', 'Murphy', 'ground crew', 'g', 55000, 'ACV');

--27
insert into Employee
values
(employee_seq.nextval, 'Erma', 'Harper', 'ground crew', 'g', 55000, 'ACV');

--28
insert into Employee
values
(employee_seq.nextval, 'Evelyn', 'Parks', 'ground crew', 'g', 55000, 'ACV');

--29
insert into Employee
values
(employee_seq.nextval, 'Virginia', 'Mckenzie', 'ground crew', 'g', 55000, 'ACV');

--30
insert into Employee
values
(employee_seq.nextval, 'Wallace', 'Briggs', 'ground crew', 'g', 55000, 'ACV');

--31
insert into Employee
values
(employee_seq.nextval, 'Luke', 'Conner', 'ground crew', 'g', 55000, 'SFO');

--32
insert into Employee
values
(employee_seq.nextval, 'Jeremy', 'Sandoval', 'ground crew', 'g', 55000, 'SFO');

--33
insert into Employee
values
(employee_seq.nextval, 'Virgil', 'Moran', 'ground crew', 'g', 55000, 'SFO');

--34
insert into Employee
values
(employee_seq.nextval, 'Seth', 'Hopkins', 'ground crew', 'g', 55000, 'SFO');

--35
insert into Employee
values
(employee_seq.nextval, 'Robin', 'King', 'ground crew', 'g', 55000, 'SFO');

--36
insert into Employee
values
(employee_seq.nextval, 'Oscar', 'Park', 'ticket desk', 'o', 55000, 'SFO');

--37
insert into Employee
values
(employee_seq.nextval, 'Wayne', 'Brock', 'ticket desk', 'o', 55000, 'SFO');

--38
insert into Employee
values
(employee_seq.nextval, 'Fred', 'Wood', 'ticket desk', 'o', 55000, 'SFO');

--39
insert into Employee
values
(employee_seq.nextval, 'Marlon', 'Coleman', 'ticket desk', 'o', 55000, 'SFO');

--40
insert into Employee
values
(employee_seq.nextval, 'Lorene', 'Wheeler', 'ticket desk', 'o', 55000, 'SFO');

/*
Table Employee Phone

create table Employee_Phone
(empl_id 			integer,
 empl_phone_num 	varchar2(15),
 primary key 		(empl_id, empl_phone_num),
 foreign key 		(empl_id) references Employee
);
*/

--1
insert into Employee_Phone
values
(1, '17073918571');

--2
insert into Employee_Phone
values
(2, '17072958175');

--3
insert into Employee_Phone
values
(3, '17076927601');

--4
insert into Employee_Phone
values
(4, '17071958437');

--5
insert into Employee_Phone
values
(5, '17079375610');

--6
insert into Employee_Phone
values
(6, '17071376839');

--7
insert into Employee_Phone
values
(7, '17075895731');

--8
insert into Employee_Phone
values
(8, '17070521365');

--9
insert into Employee_Phone
values
(9, '17076732137');

--10
insert into Employee_Phone
values
(10, '17079317426');

--11
insert into Employee_Phone
values
(11, '17078425732');

--12
insert into Employee_Phone
values
(12, '17079521362');

--13
insert into Employee_Phone
values
(13, '17071462624');

--14
insert into Employee_Phone
values
(14, '17071735328');

--15
insert into Employee_Phone
values
(15, '17072578426');

--16
insert into Employee_Phone
values
(16, '17072168973');

--17
insert into Employee_Phone
values
(17, '17078542467');

--18
insert into Employee_Phone
values
(18, '17079521424');

--19
insert into Employee_Phone
values
(19, '17078656735');

--20
insert into Employee_Phone
values
(20, '17079642584');

--21
insert into Employee_Phone
values
(21, '17079632585');

--22
insert into Employee_Phone
values
(22, '170749512367');

--23
insert into Employee_Phone
values
(23, '17074896348');

--24
insert into Employee_Phone
values
(24, '17078423780');

--25
insert into Employee_Phone
values
(25, '17076983548');

--26
insert into Employee_Phone
values
(26, '17074927601');

--27
insert into Employee_Phone
values
(27, '17076829573');

--28
insert into Employee_Phone
values
(28, '17078970687');

--29
insert into Employee_Phone
values
(29, '17078355624');

--30
insert into Employee_Phone
values
(3, '17071524526');

--31
insert into Employee_Phone
values
(31, '14156849572');

--32
insert into Employee_Phone
values
(3, '14156937586');

--33
insert into Employee_Phone
values
(3, '14159583650');

--34
insert into Employee_Phone
values
(34, '14156820165');

--35
insert into Employee_Phone
values
(35, '14156758475');

--36
insert into Employee_Phone
values
(36, '14154839572');

--37
insert into Employee_Phone
values
(37, '14151839578');

--38
insert into Employee_Phone
values
(38, '14151275903');

--39
insert into Employee_Phone
values
(39, '14153241034');

--40
insert into Employee_Phone
values
(40, '14154205848');

/*
Table Flight Crew

create table Flight_Crew
(empl_id 		integer,
 primary key 	(empl_id)
);
*/

--1
insert into Flight_Crew
values
(1);

--2
insert into Flight_Crew
values
(2);

--3
insert into Flight_Crew
values
(3);

--4
insert into Flight_Crew
values
(4);

--5
insert into Flight_Crew
values
(5);

--6
insert into Flight_Crew
values
(6);

--7
insert into Flight_Crew
values
(7);

--8
insert into Flight_Crew
values
(8);

--9
insert into Flight_Crew
values
(9);

--10
insert into Flight_Crew
values
(10);

--11
insert into Flight_Crew
values
(11);

--12
insert into Flight_Crew
values
(12);

--13
insert into Flight_Crew
values
(13);

--14
insert into Flight_Crew
values
(14);

--15
insert into Flight_Crew
values
(15);

--16
insert into Flight_Crew
values
(16);

--17
insert into Flight_Crew
values
(17);

--18
insert into Flight_Crew
values
(18);

--19
insert into Flight_Crew
values
(19);

--20
insert into Flight_Crew
values
(20);

/*
Table Flight Shift 

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

Including a shift_seq, starts with 1 and increments 1.
*/

drop sequence shift_seq;

create sequence shift_seq
increment by 1
start with 0
minvalue 0;

--1
insert into Flight_Shift
values
(shift_seq.nextval, to_date('21-Nov-2014 10:00 AM','DD-Mon-YYYY HH:MI AM'),
	to_date('21-Nov-2014 08:00 PM','DD-Mon-YYYY HH:MI AM'), '001', 1);

--2
insert into Flight_Shift
values
(shift_seq.nextval, to_date('21-Nov-2014 12:00 PM','DD-Mon-YYYY HH:MI AM'),
	to_date('21-Nov-2014 08:00 PM','DD-Mon-YYYY HH:MI AM'), '002', 2);

--3
insert into Flight_Shift
values
(shift_seq.nextval, to_date('21-Nov-2014 02:00 PM','DD-Mon-YYYY HH:MI AM'),
	to_date('21-Nov-2014 07:00 PM','DD-Mon-YYYY HH:MI AM'), '003', 3);

--4
insert into Flight_Shift
values
(shift_seq.nextval, to_date('22-Nov-2014 10:00 AM','DD-Mon-YYYY HH:MI AM'),
	to_date('22-Nov-2014 02:00 PM','DD-Mon-YYYY HH:MI AM'), '001', 4);

--5
insert into Flight_Shift
values
(shift_seq.nextval, to_date('21-Nov-2014 02:00 PM','DD-Mon-YYYY HH:MI AM'),
	to_date('21-Nov-2014 07:00 PM','DD-Mon-YYYY HH:MI AM'), '003', 5);

--6
insert into Flight_Shift
values
(shift_seq.nextval, to_date('21-Nov-2014 10:00 AM','DD-Mon-YYYY HH:MI AM'),
	to_date('21-Nov-2014 08:00 PM','DD-Mon-YYYY HH:MI AM'), '001', 6);

--7
insert into Flight_Shift
values
(shift_seq.nextval, to_date('21-Nov-2014 12:00 PM','DD-Mon-YYYY HH:MI AM'),
	to_date('21-Nov-2014 08:00 PM','DD-Mon-YYYY HH:MI AM'), '002', 7);

--8
insert into Flight_Shift
values
(shift_seq.nextval, to_date('21-Nov-2014 02:00 PM','DD-Mon-YYYY HH:MI AM'),
	to_date('21-Nov-2014 07:00 PM','DD-Mon-YYYY HH:MI AM'), '003', 8);

--9
insert into Flight_Shift
values
(shift_seq.nextval, to_date('22-Nov-2014 10:00 AM','DD-Mon-YYYY HH:MI AM'),
	to_date('21-Nov-2014 02:00 PM','DD-Mon-YYYY HH:MI AM'), '001', 9);

--10
insert into Flight_Shift
values
(shift_seq.nextval, to_date('21-Nov-2014 02:00 PM','DD-Mon-YYYY HH:MI AM'),
	to_date('21-Nov-2014 07:00 PM','DD-Mon-YYYY HH:MI AM'), '003', 10);

--11
insert into Flight_Shift
values
(shift_seq.nextval, to_date('21-Nov-2014 10:00 AM','DD-Mon-YYYY HH:MI AM'),
	to_date('21-Nov-2014 08:00 PM','DD-Mon-YYYY HH:MI AM'), '001', 11);

--12
insert into Flight_Shift
values
(shift_seq.nextval, to_date('21-Nov-2014 12:00 PM','DD-Mon-YYYY HH:MI AM'),
	to_date('21-Nov-2014 08:00 PM','DD-Mon-YYYY HH:MI AM'), '002', 12);

--13
insert into Flight_Shift
values
(shift_seq.nextval, to_date('22-Nov-2014 10:00 AM','DD-Mon-YYYY HH:MI AM'),
	to_date('22-Nov-2014 02:00 PM','DD-Mon-YYYY HH:MI AM'), '001', 13);

--14
insert into Flight_Shift
values
(shift_seq.nextval, to_date('21-Nov-2014 02:00 PM','DD-Mon-YYYY HH:MI AM'),
	to_date('21-Nov-2014 07:00 PM','DD-Mon-YYYY HH:MI AM'), '003', 14);

--15
insert into Flight_Shift
values
(shift_seq.nextval, to_date('21-Nov-2014 02:00 PM','DD-Mon-YYYY HH:MI AM'),
	to_date('21-Nov-2014 07:00 PM','DD-Mon-YYYY HH:MI AM'), '003', 15);

--16
insert into Flight_Shift
values
(shift_seq.nextval, to_date('21-Nov-2014 02:00 PM','DD-Mon-YYYY HH:MI AM'),
	to_date('21-Nov-2014 07:00 PM','DD-Mon-YYYY HH:MI AM'), '003', 16);

--17
insert into Flight_Shift
values
(shift_seq.nextval, to_date('21-Nov-2014 02:00 PM','DD-Mon-YYYY HH:MI AM'),
	to_date('21-Nov-2014 07:00 PM','DD-Mon-YYYY HH:MI AM'), '003', 17);

--18
insert into Flight_Shift
values
(shift_seq.nextval, to_date('21-Nov-2014 02:00 PM','DD-Mon-YYYY HH:MI AM'),
	to_date('21-Nov-2014 07:00 PM','DD-Mon-YYYY HH:MI AM'), '003', 18);

--19
insert into Flight_Shift
values
(shift_seq.nextval, to_date('21-Nov-2014 02:00 PM','DD-Mon-YYYY HH:MI AM'),
	to_date('21-Nov-2014 07:00 PM','DD-Mon-YYYY HH:MI AM'), '003', 19);

--20
insert into Flight_Shift
values
(shift_seq.nextval, to_date('21-Nov-2014 02:00 PM','DD-Mon-YYYY HH:MI AM'),
	to_date('21-Nov-2014 07:00 PM','DD-Mon-YYYY HH:MI AM'), '003', 20);

--21
insert into Flight_Shift
values
(shift_seq.nextval, to_date('22-Nov-2014 10:00 AM','DD-Mon-YYYY HH:MI AM'),
	to_date('22-Nov-2014 09:00 PM','DD-Mon-YYYY HH:MI AM'), '001', 3);

--22
insert into Flight_Shift
values
(shift_seq.nextval, to_date('22-Nov-2014 10:00 AM','DD-Mon-YYYY HH:MI AM'),
	to_date('22-Nov-2014 09:00 PM','DD-Mon-YYYY HH:MI AM'), '001', 8);

--23
insert into Flight_Shift
values
(shift_seq.nextval, to_date('22-Nov-2014 10:00 AM','DD-Mon-YYYY HH:MI AM'),
	to_date('22-Nov-2014 09:00 PM','DD-Mon-YYYY HH:MI AM'), '001', 14);

/*
Table Other Employees

create table Other_Employees
(empl_id 		integer,
 primary key 	(empl_id),
 foreign key 	(empl_id) references Employee
);
*/

--1
insert into Other_Employees
values
(21);

--2
insert into Other_Employees
values
(22);

--3
insert into Other_Employees
values
(23);

--4
insert into Other_Employees
values
(24);

--5
insert into Other_Employees
values
(25);

--6
insert into Other_Employees
values
(26);

--7
insert into Other_Employees
values
(27);

--8
insert into Other_Employees
values
(28);

--9
insert into Other_Employees
values
(29);

--10
insert into Other_Employees
values
(30);

--11
insert into Other_Employees
values
(31);

--12
insert into Other_Employees
values
(32);

--13
insert into Other_Employees
values
(33);

--14
insert into Other_Employees
values
(34);

--15
insert into Other_Employees
values
(35);

--16
insert into Other_Employees
values
(36);

--17
insert into Other_Employees
values
(37);

--18
insert into Other_Employees
values
(38);

--19
insert into Other_Employees
values
(39);

--20
insert into Other_Employees
values
(40);

/*
Table Plane Flies Into

create table Plane_Flies_Into
(plane_id 		char(3),
 air_code 		char(3),
 primary key 	(plane_id, air_code),
 foreign key 	(plane_id) references Plane,
 foreign key 	(air_code) references Airport
);
*/

--1
insert into  Plane_Flies_Into
values
('001', 'ACV');

--2
insert into  Plane_Flies_Into
values
('002', 'ACV');

--3
insert into  Plane_Flies_Into
values
('003', 'ACV');

--4
insert into  Plane_Flies_Into
values
('001', 'SFO');

--5
insert into  Plane_Flies_Into
values
('002', 'SFO');

--6
insert into  Plane_Flies_Into
values
('003', 'SFO');

/*
Table Bag Check

create table Bag_Check
(bag_id 		integer 	not null,
 weight 		integer,
 cust_id 		integer 	not null,
 flight_num 	char(4) 	not null,
 primary key 	(bag_id),
 foreign key 	(cust_id) references Customer,
 foreign key 	(flight_num) references Flight
);

Including a bag_seq, starts with 1 and increments 1.
*/

drop sequence bag_seq;

create sequence bag_seq
increment by 1
start with 0
minvalue 0;

--1
insert into Bag_Check
values
(bag_seq.nextval, 20, 1, '1234');

--2
insert into Bag_Check
values
(bag_seq.nextval, 19, 2, '1234');

--3
insert into Bag_Check
values
(bag_seq.nextval, 24, 3, '1234');

--4
insert into Bag_Check
values
(bag_seq.nextval, 25, 4, '5678');

--5
insert into Bag_Check
values
(bag_seq.nextval, 31, 5, '9012');

--6
insert into Bag_Check
values
(bag_seq.nextval, 23, 6, '3456');

--7
insert into Bag_Check
values
(bag_seq.nextval, 10, 7, '7890');

--8
insert into Bag_Check
values
(bag_seq.nextval, 27, 8, '2345');

--9
insert into Bag_Check
values
(bag_seq.nextval, 19, 9, '6789');

--10
insert into Bag_Check
values
(bag_seq.nextval, 12, 10, '0123');

--11
insert into Bag_Check
values
(bag_seq.nextval, 11, 11, '9258');

--12
insert into Bag_Check
values
(bag_seq.nextval, 14, 12, '2604');

--13
insert into Bag_Check
values
(bag_seq.nextval, 9, 13, '2604');

--14
insert into Bag_Check
values
(bag_seq.nextval, 18, 14, '2604');

--15
insert into Bag_Check
values
(bag_seq.nextval, 20, 15, '2604');

--16
insert into Bag_Check
values
(bag_seq.nextval, 5, 16, '2604');

--17
insert into Bag_Check
values
(bag_seq.nextval, 13, 1, '1234');

--18
insert into Bag_Check
values
(bag_seq.nextval, 45, 13, '2604');

--19
insert into Bag_Check
values
(bag_seq.nextval, 68, 1, '2604');

--20
insert into Bag_Check
values
(bag_seq.nextval, 12, 2, '2604');

--21
insert into Bag_Check
values
(bag_seq.nextval, 88, 3, '2604');

--22
insert into Bag_Check
values
(bag_seq.nextval, 43, 4, '2604');

--23
insert into Bag_Check
values
(bag_seq.nextval, 64, 5, '2604');

--24
insert into Bag_Check
values
(bag_seq.nextval, 95, 6, '2604');

--25
insert into Bag_Check
values
(bag_seq.nextval, 18, 7, '2604');

--26
insert into Bag_Check
values
(bag_seq.nextval, 28, 8, '2604');

--27
insert into Bag_Check
values
(bag_seq.nextval, 64, 9, '2604');

--28
insert into Bag_Check
values
(bag_seq.nextval, 28, 10, '2604');

--29
insert into Bag_Check
values
(bag_seq.nextval, 83, 11, '2604');