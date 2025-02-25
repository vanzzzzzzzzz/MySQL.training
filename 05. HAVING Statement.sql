select gender, avg(age) from employee_demographics
where avg(age) > 40
group by gender;

select gender, avg(age) from employee_demographics
group by gender
having avg(age) > 40;
# "HAVING" dan "WHERE" memiliki kegunaan yang sama, tetapi "HAVING" digunakan khusus untuk fungsi aggregate, dan aggregate ini tidak dapat menggunakan "WHERE" seperti contoh pertama.

-- "WHERE" and "HAVING"
select * from employee_salary;

select occupation, avg(salary) from employee_salary
where occupation like "%manager%"
group by occupation
having avg(salary) > 75000;
