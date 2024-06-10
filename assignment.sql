-- Mohamed Rafiudeen : Cohort C391

/*
Basic Selects

REQUIREMENT - Use a multi-line comment to paste the first 5 or fewer results under your query
		     Also include the total records returned.
*/

USE orderbook_activity_db;

-- #1: List all users, including username and dateJoined.
select uname,dateJoined from User;
/*
uname	dateJoined
admin	2023-02-14 13:13:28
wiley	2023-04-01 13:13:28
james	2023-03-15 19:15:48
kendra	2023-03-15 19:16:06
alice	2023-03-15 19:16:21
*/

-- #2: List the username and datejoined from users with the newest users at the top.
select uname,dateJoined from User order by dateJoined desc;
/*
uname	dateJoined
wiley	2023-04-01 13:13:28
sam		2023-03-15 19:16:59
robert	2023-03-15 19:16:43
alice	2023-03-15 19:16:21
kendra	2023-03-15 19:16:06
*/

-- #3: List all usernames and dateJoined for users who joined in March 2023.
select uname,datejoined from User where dateJoined between '2023-03-01' and '2023-03-31';
/*
name	datejoined
james	2023-03-15 19:15:48
kendra	2023-03-15 19:16:06
alice	2023-03-15 19:16:21
robert	2023-03-15 19:16:43
sam		2023-03-15 19:16:59
*/
-- #4: List the different role names a user can have.

select * from Role;
/* 
roleid	name
1		admin
2		it
3		user
*/

-- #5: List all the orders.

select * from orderbook_activity_db.Order;
/*
orderid	userid	symbol	side	orderTime		shares	price	status
1		1		WLY		1	2023-03-15 19:20:35	 100	38.73	partial_fill
2		6		WLY		2	2023-03-15 19:20:50	-10		38.73	filled
3		6		NFLX	2	2023-03-15 19:21:12	-100	243.15	pending
4		5		A		1	2023-03-15 19:21:31	 10		129.89	filled
5		3		A		2	2023-03-15 19:21:39	-10		129.89	filled
*/

-- #6: List all orders in March where the absolute net order amount is greater than 1000.

select * from orderbook_activity_db.Order 
where orderTime like '2023-03%' and abs(shares*price)>1000;
/*
# orderid	userid	symbol	side	orderTime			shares	price	status
1			1		WLY		1	2023-03-15 19:20:35		100		38.73	partial_fill
3			6		NFLX	2	2023-03-15 19:21:12		-100	243.15	pending
4			5		A		1	2023-03-15 19:21:31		10		129.89	filled
5			3		A		2	2023-03-15 19:21:39		-10		129.89	filled
6			1		GS		1	2023-03-15 19:22:11		100		305.63	canceled_partial_fill

-- #7: List all the unique status types from orders.

select distinct status from orderbook_activity_db.Order;

/* 
 status
'partial_fill'
'filled'
'pending'
'canceled_partial_fill'
'canceled'
*/

-- #8: List all pending and partial fill orders with oldest orders first.
select * from orderbook_activity_db.Order 
where status='pending' or status ='partial_fill' order by ordertime;

/*
# orderid	userid	symbol	side	orderTime		shares	price	status
1			1		WLY		1	2023-03-15 19:20:35	 100	38.73	partial_fill
3			6		NFLX	2	2023-03-15 19:21:12	-100	243.15	pending
11			5		SPY		1	2023-03-15 19:24:21	 100	365.73	partial_fill
12			4		QQQ		2	2023-03-15 19:24:32	-100	268.27	pending
13			4		QQQ		2	2023-03-15 19:24:32	-100	268.27	pending
*/
-- #9: List the 10 most expensive financial products where the productType is stock.
-- Sort the results with the most expensive product at the top

select * from Product where productType="stock" order by price desc limit 10;

/* 
# symbol	price	productType	name							lastUpdate
207940.KS	830000.00	stock	Samsung Biologics Co.,Ltd.		2022-10-17 15:24:51
003240.KS	715000.00	stock	Taekwang Industrial Co., Ltd.	2022-10-17 15:24:51
000670.KS	630000.00	stock	Young Poong Corporation			2022-10-17 15:24:51
010130.KS	616000.00	stock	Korea Zinc Company, Ltd.		2022-10-17 15:24:51
006400.KS	605000.00	stock	Samsung SDI Co., Ltd.			2022-10-17 15:24:51
*/

-- #10: Display orderid, fillid, userid, symbol, and absolute net fill amount
-- from fills where the absolute net fill is greater than $1000.
-- Sort the results with the largest absolute net fill at the top.
select orderid,fillid,userid,symbol,abs(share*price) as abs_net_amt from Fill 
where abs(share*price) > 1000 order by abs(share*price) desc;

/* 
# orderid	fillid	userid	symbol	abs_net_amt
11			11		5		SPY		27429.75
14			12		4		SPY		27429.75
6			5		1		GS		3056.30
7			6		4		GS		3056.30
8			9		6		AAPL	2111.40
*/