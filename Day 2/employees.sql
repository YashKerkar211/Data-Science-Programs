create database employee;
use employee;

create table emp( empid int,
firstname varchar(255),
gender varchar(255),
department varchar(255),
education varchar(255),
monthofjoining varchar(255),
salary int
);

select * from emp;

insert into emp values(1001,"Ajay","M","Engineering","Doctoral","January",25),
(1002,"Babloo","M","Engineering","UG","February",23),
(1003,"Chhavi","F","HR","PG","March",15),
(1004,"Dheeraj","M","HR","UG","January",12),
(1005,"Evina","F","Marketing","UG","March",16),
(1006,"Fredy","M","Sales","UG","December",10),
(1007,"Garima","F","Sales","PG","March",10),
(1008,"Hans","M","Admin","PG","November",8),
(1009,"Ivanka","F","Admin","Intermediate","April",7),
(1010,"Jai","M","Peon","High School","December",4);

select department,sum(salary) as total
from emp
where education<>'UG'
group by department
having sum(salary)>=20;

select department,sum(salary) as total
from emp
group by department
having sum(salary)>=15
order by salary desc;

SELECT department, AVG(salary) AS avg_salary
FROM emp
GROUP BY department
HAVING AVG(salary) > 35;

select firstname,salary from emp
where salary between 14 and 24;

SELECT empid, firstname, salary + 5 AS total_salary
FROM emp;
