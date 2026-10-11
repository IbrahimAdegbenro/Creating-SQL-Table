--bankingDDL Table and populating
--TABLE 1 BRANCH
CREATE TABLE branch(branch_name VARCHAR(50) PRIMARY KEY,
branch_city VARCHAR(50) NOT NULL,
assets NUMERIC(20,2) NOT NULL CHECK (assets >=0));
--TABLE 2 CUSTOMER
CREATE TABLE customer(customer_id SERIAL PRIMARY KEY,
customer_name VARCHAR(50) NOT NULL,
customer_street VARCHAR(50) NOT NULL,
customer_city VARCHAR(50));
--TABLE 3 LOAN
CREATE TABLE loan(loan_number SMALLINT PRIMARY KEY, 
branch_name VARCHAR(50) NOT NULL REFERENCES branch(branch_name),
amount NUMERIC(20,2) NOT NULL DEFAULT 0.00);
--TABLE 4 BORROW
CREATE TABLE borrow(cust_id SERIAL PRIMARY KEY 
CONSTRAINT cust_id FOREIGN KEY (borrow) REFERENCES borrow ON DELETE CASCADE,
loan_number SMALLINT PRIMARY KEY CONSTRAINT loan_number 
FOREIGN KEY (borrow) REFERENCES borrow ON DELETE CASCADE);
 --TABLE 5
 CREATE TABLE accounts(account_number SMALLINT PRIMARY KEY,branch_name VARCHAR(50)
 NOT NULL REFERENCES branch(branch_name),balance NUMERIC(20,2)
 NOT NULL DEFAULT 0.00);
 TABLE 6
 CREATE TABLE depositor(cust_id SERIAL PRIMARY KEY 
CONSTRAINT cust_id FOREIGN KEY (depositor) REFERENCES depositor ON DELETE CASCADE,
account_number SMALLINT PRIMARY KEY CONSTRAINT account_number 
FOREIGN KEY (depositor) REFERENCES depositor ON DELETE CASCADE);
select * from accounts;
 
 
