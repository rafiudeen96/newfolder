create database if not exists advanced_dbms;

use advanced_dbms;

create table products(

select * from client where city="Metairie";

select * from client where clientid="818u7faf-7b4b-48a2-bf12-7a26c92de20c";

select count(*) from goal;

select name,levelid from workout;

select name,levelid,notes from workout where levelid=2;

select firstname,lastname,city from client where city="Metairie" or city = "Kenner" or city ="Gretna";

select firstname,lastname,birthdate from client where birthdate between '1980-01-01' and '1989-12-31';

select firstname,lastname,birthdate from client where birthdate>='1980-01-01' and birthdate<='1989-12-31';

select count(*) from login where emailaddress like "%gov";

select count(*) from login where emailaddress not like "%com";

select firstname,lastname from client where birthdate is null;

select name from exercisecategory where parentcategoryid is not null;

select name,notes from workout where levelid=3 and notes like "%you%";

select firstname,lastname,city from client where (lower(lastname) like "l%" or 
lower(lastname) like "m%" or lower(lastname) like "n%") and city = "LaPlace";

select invoiceid,description,price,quantity,servicedate,
(price*quantity) as line_item_total from invoicelineitem 
where (price*quantity) between 15 and 25;

select * from (select invoiceid,description,price,quantity,servicedate,
(price*quantity) as line_item_total from invoicelineitem) as derived_table where line_item_total between 15 and 25;

select * from login;

select emailaddress from login where clientid=(select clientid from client where firstname="Estrella" and lastname="Bazely");

select * from workout;

select * from workoutgoal;

select * from goal;

select name from goal where goalid in 
(select goalid from workoutgoal where workoutid= 
(select workoutid from workout where name="This Is Parkour"));
