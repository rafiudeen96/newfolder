drop database if exists metro_system;

CREATE DATABASE IF NOT EXISTS metro_system;


USE metro_system;

CREATE TABLE IF NOT EXISTS route (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    route_name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS station (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    locality VARCHAR(100),
    is_interchange TINYINT(1)
);

CREATE TABLE IF NOT EXISTS station_route (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    station_id INT(11),
    route_id INT(11),
    position INT(11),
    FOREIGN KEY (station_id) REFERENCES station(id),
    FOREIGN KEY (route_id) REFERENCES route(id)
);

CREATE TABLE IF NOT EXISTS metro_train (
    id INT(11) PRIMARY KEY,
    route_id INT(11),
    position INT(11),
    updated_time DATETIME,
    forward TINYINT(1),
    FOREIGN KEY (route_id) REFERENCES route(id)
);

CREATE TABLE IF NOT EXISTS train_schedule (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    metro_train_id INT(11),
    station_id INT(11),
    scheduled_time DATETIME,
    FOREIGN KEY (metro_train_id) REFERENCES metro_train(id),
    FOREIGN KEY (station_id) REFERENCES station(id)
);

CREATE TABLE IF NOT EXISTS travel_card (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    person_name VARCHAR(100),
    contact_number VARCHAR(100),
    balance DOUBLE
);

CREATE TABLE IF NOT EXISTS travel_payment (
    id INT(11) PRIMARY KEY,
    travel_card_id INT(11),
    entry_station_id INT(11),
    entry_time DATETIME,
    exit_station_id INT(11),
    exit_time DATETIME,
    amount DOUBLE,
    FOREIGN KEY (travel_card_id) REFERENCES travel_card(id),
    FOREIGN KEY (entry_station_id) REFERENCES station(id),
    FOREIGN KEY (exit_station_id) REFERENCES station(id)
);

CREATE TABLE IF NOT EXISTS train_arrival_time (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    metro_train_id INT(11),
    station_id INT(11),
    train_schedule_id INT(11),
    actual_time DATETIME,
    deviation INT(11),
    FOREIGN KEY (metro_train_id) REFERENCES metro_train(id),
    FOREIGN KEY (station_id) REFERENCES station(id),
    FOREIGN KEY (train_schedule_id) REFERENCES train_schedule(id)
);
show tables;


-- Insert into route
INSERT INTO route (id, route_name) VALUES
(1, 'East West line'),
(2, 'Downtown line');

-- Insert into station
INSERT INTO station (id, name, locality, is_interchange) VALUES
(1, 'Station A', 'Locality A', 1),
(2, 'Station B', 'Locality B', 0),
(3, 'Station C', 'Locality C', 1),
(4, 'Station D', 'Locality D', 0);

-- Insert into station_route
INSERT INTO station_route (id, station_id, route_id, position) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2),
(3, 3, 2, 1),
(4, 4, 2, 2);

-- Insert into metro_train
INSERT INTO metro_train (id, route_id, position, updated_time, forward) VALUES
(1, 1, 1, '2024-06-01 08:00:00', 1),
(2, 1, 2, '2024-06-01 09:00:00', 1),
(3, 2, 1, '2024-06-01 10:00:00', 0),
(4, 2, 2, '2024-06-01 11:00:00', 0);

-- Insert into train_schedule
INSERT INTO train_schedule (id, metro_train_id, station_id, scheduled_time) VALUES
(1, 1, 1, '2017-12-21 08:00:00'),
(2, 2, 2, '2017-12-21 09:00:00'),
(3, 3, 3, '2017-12-21 10:00:00'),
(4, 4, 4, '2017-12-21 11:00:00');

-- Insert into train_arrival_time
INSERT INTO train_arrival_time (id, metro_train_id, station_id, train_schedule_id, actual_time, deviation) VALUES
(1, 1, 1, 1, '2017-12-21 08:05:00', 5),
(2, 2, 2, 2, '2017-12-21 09:10:00', 10),
(3, 3, 3, 3, '2017-12-21 10:15:00', 15),
(4, 4, 4, 4, '2017-12-21 11:20:00', 20);

-- Insert into travel_card
INSERT INTO travel_card (id, person_name, contact_number, balance) VALUES
(1, 'John Doe', '555-1234', 50.0),
(2, 'Jane Smith', '555-5678', 30.0),
(3, 'Alice Johnson', '555-8765', 40.0),
(4, 'Bob Brown', '555-4321', 20.0);

-- Insert into travel_payment
INSERT INTO travel_payment (id, travel_card_id, entry_station_id, entry_time, exit_station_id, exit_time, amount) VALUES
(1, 1, 1, '2017-12-23 08:00:00', 2, '2017-12-23 08:30:00', 2.5),
(2, 2, 2, '2017-12-23 09:00:00', 1, '2017-12-23 09:30:00', 3.0),
(3, 3, 3, '2017-12-23 10:00:00', 4, '2017-12-23 10:30:00', 1.5),
(4, 4, 4, '2017-12-23 11:00:00', 3, '2017-12-23 11:30:00', 2.0);



select * from metro_train where route_id = (select id from route where route_name = 'East West line');

select * from station where id in (select station_id from station_route where route_id in (select id from route where route_name = 
"Downtown Line")) order by name;



select * from metro_train where id in (select metro_train_id from train_schedule where scheduled_time like '2017-12-21%');




