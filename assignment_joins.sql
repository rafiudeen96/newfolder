-- Mohamed Rafiudeen: C391

/*
Join Queries

REQUIREMENT - Use a multi-line comment to paste the first 5 or fewer results under your query
		     Also include the total records returned.
*/

USE orderbook_activity_db;


-- #1: Display the dateJoined and username for admin users.

select datejoined,uname from User u join UserRoles ur on u.userid=ur.userid
inner join Role r on ur.roleid=r.roleid where r.name="admin";
/*
# datejoined			uname
2023-02-14 13:13:28		admin
2023-04-01 13:13:28		wiley
2023-03-15 19:16:21		alice
*/
-- #2: Display each absolute order net (share*price), status, symbol, trade date, 
-- and username.
-- Sort the results with largest the absolute order net (share*price) at the top.
-- Include only orders that were not canceled or partially canceled.

select abs(shares*price) abs_net_amt, status, symbol, ordertime as trade_date, uname 
from User u join orderbook_activity_db.Order o on u.userid=o.userid 
where o.status not in('canceled','canceled_partial_fill') 
order by abs(shares*price) desc;

/* 
# abs_net_amt	status		symbol	trade_date			uname
36573.00	partial_fill	SPY		2023-03-15 19:24:21	alice
27429.75	filled			SPY		2023-03-15 19:24:47	kendra
26827.00	pending			QQQ		2023-03-15 19:24:32	kendra
26827.00	pending			QQQ		2023-03-15 19:24:32	kendra
24315.00	pending			NFLX	2023-03-15 19:21:12	robert
*/


-- #3: Display the orderid, symbol, status, order shares, filled shares, and price for orders with fills.
-- Note that filledShares are the opposite sign (+-) because they subtract from ordershares!

select o.orderid as order_id,o.symbol,o.status,o.shares as order_shares,f.share as filled_shares,o.price 
from orderbook_activity_db.Order o join Fill f on o.orderid=f.orderid;
/* 
# order_id	symbol	status			order_shares	filled_shares	price
1			WLY		partial_fill	100				-10				38.73
2			WLY		filled			-10				10				38.73
4			A		filled			10				-10				129.89
5			A		filled			-10				10				129.89
*/

-- #4: Display all partial_fill orders and how many outstanding shares are left.
-- Also include the username, symbol, and orderid.

select uname,symbol,orderid from User u join `Order` o on u.userid=o.userid where o.status in('partial_fill','pending');
/*
# uname	symbol	orderid
admin	WLY		1
alice	SPY		11
alice	A		21
alice	A		22
alice	A		23
*/
-- #5: Display the orderid, symbol, status, order shares, filled shares, and price for orders with fills.
-- Also include the username, role, absolute net amount of shares filled, and absolute net order.
-- Sort by the absolute net order with the largest value at the top.
select * from `Order`;
select o.orderid,
o.symbol,
o.status,
o.shares as order_share, 
f.share filled_share, 
o.price as order_price,
u.uname username,
r.name as role,
abs(f.share*f.price) abs_net_amt_fill, 
abs(o.shares*o.price) abs_net_order
from `Order` o inner join Fill f on o.orderid=f.orderid
inner join User u on f.userid=u.userid
inner join UserRoles ur on u.userid = ur.userid
inner join Role r on r.roleid=ur.roleid ;

/*
# orderid	symbol	status					order_share	filled_share	order_price	username	role	abs_net_amt_fill	abs_net_order
1			WLY		partial_fill			100			-10				38.73		admin		admin	387.30				3873.00
6			GS		canceled_partial_fill	100			-10				305.63		admin		admin	3056.30				30563.00
10			AAPL	filled					-15			15				140.76		admin		admin	2111.40				2111.40
4			A		filled					10			-10				129.89		alice		admin	1298.90				1298.90
11			SPY		partial_fill			100			-75				365.73		alice		admin	27429.75			36573.00
*/

-- #6: Display the username and user role for users who have not placed an order.

select uname as username,name as role from User u left join `Order` o on u.userid=o.userid 
inner join UserRoles ur on ur.userid=u.userid
inner join Role r on r.roleid = ur.roleid 
where o.orderid is null;

/*
# username, role
sam, 		user
wiley, 		admin
*/

-- #7: Display orderid, username, role, symbol, price, and number of shares for orders with no fills.


 select o.orderid,u.uname as username,r.name as role,o.symbol,o.price,o.shares as order_shares from `Order` o left join Fill f 
 on o.orderid=f.orderid inner join User u on o.userid = u.userid inner join UserRoles ur on ur.userid=u.userid inner join Role r
 on ur.roleid=r.roleid where f.fillid is null ;

/*
# orderid	username	role	symbol	price	order_shares
19			alice		admin	GOOG	100.82		100
21			alice		admin	A		129.89		-1
22			alice		admin	A		129.89		2
23			alice		admin	A		129.89		5
24			alice		admin	A		129.89		2
*/


-- #8: Display the symbol, username, role, and number of filled shares where the order symbol is WLY.
-- Include all orders, even if the order has no fills.

select o.symbol, u.uname as username, r.name as role, o.shares as order_shares from `Order` o inner join User u
on o.userid=u.userid inner join UserRoles ur on u.userid=ur.userid inner join Role r on ur.roleid=r.roleid where o.symbol="WLY";

/* 
# symbol	username	role	order_shares
WLY			admin		admin	100
WLY			james		user	100
WLY			robert		user	-10
*/




