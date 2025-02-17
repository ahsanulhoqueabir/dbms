use jnuBank;

-- Insert values into branch
INSERT INTO branch (branch_name, branch_city, assets) VALUES
('Dhanmondi', 'Dhaka', 5000000),
('Gulshan', 'Dhaka', 7000000),
('Agrabad', 'Chattogram', 4500000),
('KadamToli', 'Sylhet', 3000000),
('Rangpur_Main', 'Rangpur', 2500000),
('Rajshahi_Central', 'Rajshahi', 3200000),
('Barisal_Point', 'Barisal', 2800000),
('Khulna_Town', 'Khulna', 3100000),
('Bogra_Branch', 'Bogra', 2600000),
('Comilla_City', 'Comilla', 2700000);

-- Insert values into customer
INSERT INTO customer (customer_name, customer_street, customer_city) VALUES
('Rakib Hossain', 'Banani', 'Dhaka'),
('Nusrat Jahan', 'Motijheel', 'Dhaka'),
('Imran Khan', 'Jamal Khan', 'Chattogram'),
('Sadia Akter', 'Shahjalal', 'Sylhet'),
('Hasib Mahmud', 'Rangpur Sadar', 'Rangpur'),
('Tariqul Islam', 'Padma Road', 'Rajshahi'),
('Sharmin Sultana', 'Amtali', 'Barisal'),
('Asif Rahman', 'Sonadanga', 'Khulna'),
('Mithila Farzana', 'Sherpur Road', 'Bogra'),
('Mehedi Hasan', 'Kandirpar', 'Comilla');

-- Insert values into loan
INSERT INTO loan (loan_number, branch_name, amount) VALUES
(101, 'Dhanmondi', 150000),
(102, 'Gulshan', 200000),
(103, 'Agrabad', 120000),
(104, 'KadamToli', 80000),
(105, 'Rangpur_Main', 70000),
(106, 'Rajshahi_Central', 95000),
(107, 'Barisal_Point', 60000),
(108, 'Khulna_Town', 110000),
(109, 'Bogra_Branch', 90000),
(110, 'Comilla_City', 100000);

-- Insert values into borrower
INSERT INTO borrower (customer_name, loan_number) VALUES
('Rakib Hossain', 101),
('Nusrat Jahan', 102),
('Imran Khan', 103),
('Sadia Akter', 104),
('Hasib Mahmud', 105),
('Tariqul Islam', 106),
('Sharmin Sultana', 107),
('Asif Rahman', 108),
('Mithila Farzana', 109),
('Mehedi Hasan', 110);

-- Insert values into account
INSERT INTO account (account_number, branch_name, balance) VALUES
('A1001', 'Dhanmondi', 50000),
('A1002', 'Gulshan', 75000),
('A1003', 'Agrabad', 60000),
('A1004', 'KadamToli', 40000),
('A1005', 'Rangpur_Main', 35000),
('A1006', 'Rajshahi_Central', 50000),
('A1007', 'Barisal_Point', 30000),
('A1008', 'Khulna_Town', 55000),
('A1009', 'Bogra_Branch', 45000),
('A1010', 'Comilla_City', 50000);

-- Insert values into depositor
INSERT INTO depositor (customer_name, account_number) VALUES
('Rakib Hossain', 'A1001'),
('Nusrat Jahan', 'A1002'),
('Imran Khan', 'A1003'),
('Sadia Akter', 'A1004'),
('Hasib Mahmud', 'A1005'),
('Tariqul Islam', 'A1006'),
('Sharmin Sultana', 'A1007'),
('Asif Rahman', 'A1008'),
('Mithila Farzana', 'A1009'),
('Mehedi Hasan', 'A1010');
