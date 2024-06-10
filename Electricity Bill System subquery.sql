
### Create Database

CREATE DATABASE electricity_billing_system;
USE electricity_billing_system;


### Create Tables

-- Create the electricity_connection_type table
CREATE TABLE electricity_connection_type (
    id INT(11) PRIMARY KEY,
    connection_name VARCHAR(20)
);

-- Create the slab table
CREATE TABLE slab (
    id INT(11) PRIMARY KEY,
    connection_type_id INT(11),
    from_unit INT(11),
    to_unit INT(11),
    rate DOUBLE,
    FOREIGN KEY (connection_type_id) REFERENCES electricity_connection_type(id)
);

-- Create the building_type table
CREATE TABLE building_type (
    id INT(11) PRIMARY KEY,
    name VARCHAR(100),
    connection_type_id INT(11),
    FOREIGN KEY (connection_type_id) REFERENCES electricity_connection_type(id)
);

-- Create the building table
CREATE TABLE building (
    id INT(11) PRIMARY KEY,
    owner_name VARCHAR(100),
    address VARCHAR(100),
    building_type_id INT(11),
    contact_number VARCHAR(100),
    email_address VARCHAR(100),
    FOREIGN KEY (building_type_id) REFERENCES building_type(id)
);

-- Create the meter table
CREATE TABLE meter (
    id INT(11) PRIMARY KEY,
    meter_number VARCHAR(100),
    building_id INT(11),
    FOREIGN KEY (building_id) REFERENCES building(id)
);

-- Create the electricity_reading table
CREATE TABLE electricity_reading (
    id INT(11) PRIMARY KEY,
    meter_id INT(11),
    day DATE,
    h1 INT(11),
    h2 INT(11),
    h3 INT(11),
    h4 INT(11),
    h5 INT(11),
    h6 INT(11),
    h7 INT(11),
    h8 INT(11),
    h9 INT(11),
    h10 INT(11),
    h11 INT(11),
    h12 INT(11),
    h13 INT(11),
    h14 INT(11),
    h15 INT(11),
    h16 INT(11),
    h17 INT(11),
    h18 INT(11),
    h19 INT(11),
    h20 INT(11),
    h21 INT(11),
    h22 INT(11),
    h23 INT(11),
    h24 INT(11),
    total_units INT(11),
    FOREIGN KEY (meter_id) REFERENCES meter(id)
);

-- Create the bill table
CREATE TABLE bill (
    id INT(11) PRIMARY KEY,
    meter_id INT(11),
    month INT(11),
    year INT(11),
    due_date DATE,
    total_units INT(11),
    payable_amount DOUBLE,
    is_payed TINYINT(1),
    payment_date DATE,
    fine_amount DOUBLE,
    FOREIGN KEY (meter_id) REFERENCES meter(id)
);


INSERT INTO electricity_connection_type (id, connection_name) VALUES
(1, 'Residential'),
(2, 'Commercial');

-- Insert into building_type
INSERT INTO building_type (id, name, connection_type_id) VALUES
(1, 'Library', 1),
(2, 'Police Station', 2);

-- Insert into building
INSERT INTO building (id, owner_name, address, building_type_id, contact_number, email_address) VALUES
(1, 'Alice Johnson', '123 Main St', 1, '555-1234', 'alice@example.com'),
(2, 'Bob Smith', '456 Elm St', 2, '555-5678', 'bob@example.com'),
(3, 'Charlie Davis', '789 Oak St', 1, '555-8765', 'charlie@example.com'),
(4, 'Diana Brown', '101 Pine St', 2, '555-4321', 'diana@example.com');

-- Insert into meter
INSERT INTO meter (id, meter_number, building_id) VALUES
(1, 'SG824012', 1),
(2, 'SG934826', 2),
(3, 'SG135792', 3),
(4, 'SG246810', 4);

-- Insert into slab
INSERT INTO slab (id, connection_type_id, from_unit, to_unit, rate) VALUES
(1, 1, 0, 100, 0.10),
(2, 1, 101, 200, 0.15),
(3, 2, 0, 100, 0.20),
(4, 2, 101, 200, 0.25);

-- Insert into electricity_reading
INSERT INTO electricity_reading (id, meter_id, day, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12,
    h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, total_units) VALUES
(1, 1, '2024-06-01', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,1, 24),
(2, 2, '2024-06-01', 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,2, 48),
(3, 3, '2024-06-01', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,3, 72),
(4, 4, '2024-06-01', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,4, 96);

-- Insert into bill
INSERT INTO bill (id, meter_id, month, year, due_date, total_units, payable_amount, is_payed, payment_date, fine_amount) VALUES
(1, 1, 6, 2024, '2024-06-30', 24, 2.40, 1, '2024-06-15', NULL),
(2, 2, 6, 2024, '2024-06-30', 48, 9.60, 1, '2024-06-20', NULL),
(3, 3, 6, 2024, '2024-06-30', 72, 10.80, 0, NULL, 1.00),
(4, 4, 6, 2024, '2024-06-30', 96, 24.00, 0, NULL, 2.00);




