-- UNION -- #Fungsinya menambahkan data dibawah baris data pertama yang di select

select age, gender from employee_demographics
union
select first_name, last_name from employee_salary;

select first_name, last_name from employee_demographics
union
select first_name, last_name from employee_salary;
# "UNION" secara default adalah "UNION DISTINCT" yang artinya menggabungkan data uang unique

select first_name, last_name from employee_demographics
union all
select first_name, last_name from employee_salary;
#"UNION ALL" menggabungkan semuanya data ke bawah baris, artinya akan ada duplicate data.

-- CONTOH PENGGUNAAN
select first_name, last_name, "Old" as Lable from employee_demographics
where age > 40
union
select first_name, last_name, "hihgly paid" from employee_salary
where salary > 70000;

select first_name, last_name, "Old Man" as label from employee_demographics
where age > 40 and gender = "male"
union
select first_name, last_name, "Old Lady" from employee_demographics
where age > 40 and gender = "female"
union
select first_name, last_name, "Young Man" from employee_demographics
where 18 < age < 40 and gender = "male"
union
select first_name, last_name, "Young Lady" from employee_demographics
where 18 < age < 40 and gender = "female"
union
select first_name, last_name, "Kids" from employee_demographics
where age < 18
union
select first_name, last_name, 'Highly Paid' from employee_salary
where salary > 70000
union
select first_name, last_name, "Modertely Paid" from employee_salary
where salary < 70000
order by first_name;
