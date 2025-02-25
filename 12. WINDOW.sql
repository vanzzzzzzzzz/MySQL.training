-- WINDOW --
select * from employee_demographics;
select * from employee_salary;

select emp2.employee_id, emp2.first_name, emp2.last_name, gender, salary,
avg(salary) over(partition by gender order by emp2.employee_id) as Rolling_total
from employee_demographics emp1
join employee_salary emp2
on emp1.employee_id = emp2.employee_id;

select emp1.employee_id, emp1.first_name, emp1.last_name, gender, salary,
sum(salary) over(partition by gender order by emp1.employee_id) as Rolling_total
from employee_demographics emp1
join employee_salary emp2
on emp1.employee_id=emp2.employee_id;


select emp1.first_name, emp1.last_name, gender, salary,
row_number() over(partition by gender order by salary) as Row_num,
rank() over(partition by gender order by salary) as Rank_num,
dense_rank() over(partition by gender order by salary) as Dense_Rank_num
from employee_demographics emp1
join employee_salary emp2
on emp1.employee_id=emp2.employee_id;