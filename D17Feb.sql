use jnubank;

-- select loan_number,amount*1.1 as revised_amount
-- from loan
-- where branch_name = "Agrabad";

select borrower.customer_name,loan_number,customer_street,customer_city 
from borrower,customer
where (borrower.customer_name = customer.customer_name and customer_city="Dhaka");

select customer_name
from depositor,account
where (depositor.account_number=account.account_number and account.branch_name="Gulshan" and balance < 80000);


select customer_city
from depositor,account,customer
where (
depositor.customer_name = customer.customer_name and 
depositor.account_number = account.account_number and
account.branch_name = "Agrabad")