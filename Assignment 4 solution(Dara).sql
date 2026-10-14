
-- Assignment 4: Banking Database DDL

CREATE DATABASE banking;

-- TABLE 1: BRANCH
CREATE TABLE branch (
    branch_name VARCHAR(40) PRIMARY KEY,
    branch_city VARCHAR(40)
        CHECK (branch_city IN ('Brooklyn', 'Bronx', 'Manhattan', 'Yonkers')),
    assets MONEY NOT NULL,
    CHECK (assets >= 0.00)
);

-- TABLE 2: CUSTOMER
CREATE TABLE customer (
    cust_ID VARCHAR(40) PRIMARY KEY,
    customer_name VARCHAR(40) NOT NULL,
    customer_street VARCHAR(40) NOT NULL,
    customer_city VARCHAR(40)
);

-- TABLE 3: LOAN
CREATE TABLE loan (
    loan_number VARCHAR(40) PRIMARY KEY,
    branch_name VARCHAR(40)
        REFERENCES branch(branch_name)
        ON UPDATE CASCADE ON DELETE CASCADE,
    amount MONEY NOT NULL DEFAULT 0.00,
    CHECK (amount >= 0.00)
);

-- TABLE 4: BORROWER
CREATE TABLE borrower (
    cust_ID VARCHAR(40)
        REFERENCES customer(cust_ID)
        ON UPDATE CASCADE ON DELETE CASCADE,
    loan_number VARCHAR(40)
        REFERENCES loan(loan_number)
        ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (cust_ID, loan_number)
);

-- TABLE 5: ACCOUNT
CREATE TABLE account (
    account_number VARCHAR(40) PRIMARY KEY,
    branch_name VARCHAR(40)
        REFERENCES branch(branch_name)
        ON UPDATE CASCADE ON DELETE CASCADE,
    balance MONEY NOT NULL DEFAULT 0.00
);

-- TABLE 6: DEPOSITOR
CREATE TABLE depositor (
    cust_ID VARCHAR(40)
        REFERENCES customer(cust_ID)
        ON UPDATE CASCADE ON DELETE CASCADE,
    account_number VARCHAR(40)
        REFERENCES account(account_number)
        ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (cust_ID, account_number)
);

-- TEST THE TABLES
SELECT * FROM branch;
SELECT * FROM customer;
SELECT * FROM loan;
SELECT * FROM borrower;
SELECT * FROM account;
SELECT * FROM depositor;
