-- CTEs (Command Table Expression) --

with CTE_example as(
select
gender,
avg(salary)
from employee_demographics emp1
join employee_salary emp2
on emp1.employee_id=emp2.employee_id
group by gender)
select * from CTE_example
;


with ex1 as(
select emp1.first_name,
emp1.last_name,
(select avg(salary)
from employee_salary) as avg,
(select max(salary)
from employee_salary)
from employee_demographics emp1
join employee_salary emp2
on emp1.employee_id=emp2.employee_id
group by emp1.first_name, emp1.last_name)
select avg from ex1
;


with satu as(
select employee_id, first_name, last_name
from employee_demographics)
,
dua as(
select employee_id, salary from employee_salary)

select * from satu
join dua
on satu.employee_id = dua.employee_id
;

with ex3(gender, avg) as(
select gender, avg(salary) from employee_demographics emp1
join employee_salary emp2
on emp1.employee_id = emp2.employee_id
group by gender)
select avg from ex3
;