CREATE DATABASE jnuBank;
use jnuBank;
CREATE TABLE branch (
    branch_name VARCHAR(30) NOT NULL,  
    branch_city VARCHAR(20),           
    assets INT,

    PRIMARY KEY (branch_name)
);

CREATE TABLE customer (
    customer_name VARCHAR(50),        
    customer_street VARCHAR(50),      
    customer_city VARCHAR(20),        

    PRIMARY KEY (customer_name)
);

CREATE TABLE loan (
    loan_number INT,
    branch_name VARCHAR(30),         
    amount DECIMAL(12,2),            

    PRIMARY KEY (loan_number),
    FOREIGN KEY (branch_name) REFERENCES branch(branch_name)
);

CREATE TABLE borrower (
    customer_name VARCHAR(50),
    loan_number INT,

    PRIMARY KEY (customer_name, loan_number),
    FOREIGN KEY (customer_name) REFERENCES customer(customer_name),
    FOREIGN KEY (loan_number) REFERENCES loan(loan_number)
);

CREATE TABLE account (
    account_number VARCHAR(20),       
    branch_name VARCHAR(30),          
    balance DECIMAL(12,2),             

    PRIMARY KEY (account_number),
    FOREIGN KEY (branch_name) REFERENCES branch(branch_name)
);

CREATE TABLE depositor (
    customer_name VARCHAR(50),
    account_number VARCHAR(20),

    PRIMARY KEY (customer_name, account_number),
    FOREIGN KEY (customer_name) REFERENCES customer(customer_name),
    FOREIGN KEY (account_number) REFERENCES account(account_number)
);
