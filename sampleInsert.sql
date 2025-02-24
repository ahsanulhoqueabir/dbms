use jnuBank;

-- Insert values into branch
INSERT INTO branch (branch_name, branch_city, assets) VALUES
('Dhanmondi', 'Dhaka', 5000000);

-- Insert values into customer
INSERT INTO customer (customer_name, customer_street, customer_city) VALUES
('Rakib Hossain', 'Banani', 'Dhaka');

-- Insert values into loan
INSERT INTO loan (loan_number, branch_name, amount) VALUES
(101, 'Dhanmondi', 150000);

-- Insert values into borrower
INSERT INTO borrower (customer_name, loan_number) VALUES
('Rakib Hossain', 101);

-- Insert values into account
INSERT INTO account (account_number, branch_name, balance) VALUES
('A1001', 'Dhanmondi', 50000);

-- Insert values into depositor
INSERT INTO depositor (customer_name, account_number) VALUES
('Rakib Hossain', 'A1001');

INSERT INTO account (account_number, branch_name, balance) VALUES
('A1033', 'Dhanmondi', 554001),
('A1034', 'Agrabad', 580790);
