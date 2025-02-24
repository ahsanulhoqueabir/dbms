use jnubank;

-- find the total number of branches 
SELECT 'branch' , COUNT(*)  FROM branch;

select sum(assets) as total_assets from branch;

select avg(balance) as "avg_balance" from account;

 select max(amount) as "max_loan" from loan;

select min(balance) as "min_amount" from account;

select count(distinct(customer_name))  from depositor;

select branch_name, sum(amount) as total_amount 
from loan 
group by branch_name;

select customer_name,round((avg(amount),2)) as avg_loan 
from (
    select customer_name, round(sum(amount), 2) as amount 
    from borrower, loan
    where borrower.loan_number = loan.loan_number
    group by customer_name
) as loan_per_customer
group by customer_name;

select branch_name, count(distinct(account_number)) 
from account 
group by branch_name
;

select branch_name,assets 
from(
select assets,(branch.branch_name)
from branch,loan
) as merged


