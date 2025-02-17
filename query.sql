use jnuBank;

-- select customer_name,borrower.loan_number,amount 
-- from borrower,loan
-- where (borrower.loan_number = loan.loan_number and branch_name = "Gulshan" ) ;

select customer_name 
from customer
where customer_street like '%ka%';