create database accounts;
use accounts;

create table payment(id int,
amount int,
modes varchar(255));

select * from payment;

drop table accounts;

insert into payment(id,amount,modes)values(1,60,"Cash");
insert into payment(id,amount,modes)values(2,30,"Credit card");
insert into payment(id,amount,modes)values(3,90,"Credit card");
insert into payment(id,amount,modes)values(4,40,"Debit card");
insert into payment(id,amount,modes)values(5,70,"Mobile payment");
insert into payment(id,amount,modes)values(6,20,"Cash");

select modes,sum(amount) as total
from payment
group by modes
having sum(amount)>=80;