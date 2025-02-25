-- CASE Statement
select first_name, last_name, age,
case
when age <= 30 then 'Young'
when age between 30 and 50 then "Old"
when age >50 then 'Gonna Die Soon'
end as Categories
from employee_demographics;

-- Pay Increase and Bonus
# <50.000 =5%
# >50.00 = 7%
# Finance = 10% Bonus

select * from employee_salary;
select * from parks_departments;

select first_name, last_name, salary, department_name,
case
when salary <= 50000 then salary + 0.05*salary
when salary > 50000 then  salary + 0.07*salary
end as 'New Salary',
case
when department_name = 'finance' then 0.1 * salary
end as Bonus
from employee_salary emp1
join parks_departments pd
on emp1.dept_id=pd.department_id;