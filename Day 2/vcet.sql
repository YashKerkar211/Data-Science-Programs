Create database vcet;
use vcet;

create table emp(empid int auto_increment primary key, 
firstname varchar(255),
lastname varchar(255),
age int,
gender varchar(255),
department varchar(255));

drop table vcet_emp;

INSERT INTO vcet_emp(empid,firstname,lastname,age,gender,department,address,salary)values(1,"Yash","Kerkar",25,"Male","HR","Nallasopara",25000);
INSERT INTO vcet_emp values(2,"Mihir","Dhuri",24,"Male","Accountant","Nallasopara",30000),
(3,"Ankit","Bari",28,"Male","Management","Dahanu",60000),
(4,"Viraj","Oza",26,"Male","IT","Mira Road",79000);


INSERT INTO vcet_emp(empid,firstname,lastname,age,gender,department,address,salary)values(5,"Shlok","Yadav",25,"Male","HR","Vasai road",67000);

Delete from vcet_emp
where empid=5;

Select * from vcet_emp;

ALTER TABLE vcet_emp
ADD column address varchar(255);

ALTER TABLE vcet_emp
ADD COLUMN salary int;

rename table emp to vcet_emp;

create table empdetails(id int,name varchar(25));


create table vcet_emp as
select * from Source_vcet_emp;

/* aggregate functions */

SELECT COUNT(firstname)
from vcet_emp;

select sum(salary)
from vcet_emp;

select avg(salary)
from vcet_emp;

select empid, firstname,lastname, min(salary) as min_salary
from vcet_emp;

SELECT empid, firstname, lastname, salary AS minimum_salary
FROM vcet_emp
WHERE salary = (SELECT MIN(salary) FROM vcet_emp);

SELECT empid, firstname, lastname, salary as maximum_salary
from vcet_emp
where salary = (SELECT MAX(salary)from vcet_emp);

ALTER TABLE vcet_emp
ADD salary int(20);
UPDATE vcet_emp SET salary = '145000' where empid=1;

select * from vcet_emp
where salary between 29000 and 70000;

ALTER TABLE vcet_emp
ADD column salary varchar(255);

alter table vcet_emp
drop column salary;

SELECT * FROM vcet_emp
WHERE firstname LIKE '%sh%';

SELECT * FROM vcet_emp
WHERE firstname LIKE 'Y%';

select empid,firstname,address from vcet_emp
where firstname Like '___ok%';

Select firstname,lastname from vcet_emp
where address in ('Nallasopara','Dahanu');

Select * from vcet_emp
where address='Dahanu' or lastname='Dhuri';

Select * from vcet_emp
where age>24 or address='Dahanu';

Select * from vcet_emp
where not address="Vasai Road";

Select * from vcet_emp
where address<>"Nallasopara";

select * from vcet_emp;

select empid,firstname,age from vcet_emp
order by age;

select empid,firstname,age from vcet_emp
order by age desc;

select address,count(empid) from vcet_emp
group by address;

select age,count(firstname) from vcet_emp
group by age;








