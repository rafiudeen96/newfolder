use metro_system;


select person_name,contact_number from travel_card tc 
inner join travel_payment tp on tc.id = tp.travel_card_id
inner join station_route sr on tp.entry_station_id = sr.station_id
inner join route r on sr.route_id = r.id
where r.route_name = "East West line" and tp.amount >= 2.5;


select s.name,s.locality from station s
inner join train_schedule ts on s.id = ts.station_id
inner join station_route sr on ts.station_id = sr.station_id
inner join route r on sr.route_id = r.id
where r.route_name = "Downtown line" and ts.scheduled_time like "2017-12-21%";


select person_name,contact_number,balance from travel_card where balance=(select min(balance) from travel_card) ;

select person_name,contact_number,balance,entry_time,exit_time from travel_card tc 
inner join travel_payment tp on tc.id=tp.travel_card_id
where balance=(select max(balance) from travel_card where balance!=(select max(balance) from travel_card));


select person_name,contact_number,balance from travel_card tc 
inner join travel_payment tp on tc.id=tp.travel_card_id group by tc.id
having count(tp.id) = (select max(count) from (select count(tp.id) count from travel_card tc inner join travel_payment tp
on tc.id=tp.travel_card_id group by tc.id) subquery)
