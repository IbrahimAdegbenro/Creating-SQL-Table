Create table customer(cust_id NUMERIC PRIMARY KEY,
first_name VARCHAR(20),last_name VARCHAR(20),
phone_number VARCHAR(20),zip_code VARCHAR(5)NOT NULL,
street_address VARCHAR(200),
city VARCHAR(20),
,state CHAR(2)); 

Create table employee(employee_id NUMERIC PRIMARY KEY,
first_name VARCHAR(20),last_name VARCHAR(20),
phone_number VARCHAR(20),email VARCHAR(50),
street_address VARCHAR(200),
city VARCHAR(20),
state CHAR(2),hire_date DATE DEFAULT CURRENT_DATE, 
salary NUMERIC (10,2),probation TEXT,is_active BOOLEAN);

CREATE TABLE parts_inventory(part_number NUMERIC PRIMARY KEY,
manufacturer VARCHAR(100),quantity NUMERIC,price INT);