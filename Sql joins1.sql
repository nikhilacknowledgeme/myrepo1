use testjoin;


select * from account  order by account_balance desc;
select account_balance from account a1 where 3-1 =(select count(distinct  account_balance) 
from account a2 where a2.account_balance >a1.account_balance);

select count(account_balance) from account;
select * from account;

select account_balance from account a1 where 2-1 =(select count(distinct account_balance)
from account a2 where a2.account_balance < a1.account_balance);