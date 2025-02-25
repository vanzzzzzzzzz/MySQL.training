-- SUBQUERIES --

select * from employee_salary;
select * from parks_departments;
select * from employee_demographics;

select * from employee_demographics
where employee_id in
(select employee_id from employee_salary
where dept_id = 1
);

select first_name, last_name, avg(salary) from employee_salary
group by first_name, last_name;

select first_name, last_name,
(select avg(salary) from employee_salary)
from employee_salary;
# PERHATIKAN jika tidak menggunakan "SUBQUERIES" maka avg(salary) yang akan ditampilkan adalah berdasarkan data group by
# Tetapi saat menggunakan "SUBQUIERIES" avg(salary) adalah rata-rata salary dari tabel employee_salary

#untuk mencari avg(salary)
select avg(`avg(salary)`)
from (select first_name, avg(salary), max(salary), min(salary) from employee_salary group by first_name) as a;

#lebih simpelnya
select * from (select avg(salary) from employee_salary) as a;


select first_name, last_name,
(select avg(age) from employee_demographics)
from employee_demographics;

select * from (select avg(age) from employee_demographics)as a;



-- CONTOH --
select emp2.employee_id, emp2.first_name, emp2.last_name, age, gender, salary from employee_demographics emp1
join employee_salary emp2
on emp1.employee_id=emp2.employee_id
where dept_id in
(select department_id from parks_departments
where department_name = "finance"
);