select * from employee_demographics;
select * from employee_salary;

-- INNER JOIN -- # jika hanya menulis "JOIN" maka secara default akan dianggap "INNER JOIN"
select * from employee_demographics emp1
join employee_salary emp2
	on emp1.employee_id = emp2.employee_id; #kolom yang ingin di join harus spesifik, tidak harus menggunakan tab

select emp1.employee_id, gender, occupation
from employee_demographics as emp1
inner join employee_salary as emp2
	on emp1.employee_id = emp2.employee_id;

-- OUTER JOIN -- (LEFT JOIN dan RIGHT JOIN)
select * from employee_demographics emp1
left join employee_salary emp2
on emp1.employee_id = emp2.employee_id;
#"LEFT JOIN" berfungsi untuk mengambil semua data pada tabel pertama dan data yang sama saja pada tabel kedua

select * from employee_demographics emp1
right join employee_salary emp2
on emp1.employee_id = emp2.employee_id;
#"RIGHT JOIN" adalah sebaliknya dari "LEFT JOIN" jika ada data yang ada pada tabel kedua tetapi tidak pada tabel pertama, maka datanya adalah null.

select emp1.employee_id, age, gender, occupation
from employee_demographics emp1
right join employee_salary emp2
on emp1.employee_id=emp2.employee_id;

-- SELF JOIN --
select * from employee_demographics emp1
join employee_demographics emp2
on emp1.employee_id = emp2.employee_id;

select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name last_name_santa,
emp2.employee_id,
emp2.first_name,
emp2.last_name
from employee_salary emp1
join employee_salary emp2
on emp1.employee_id+1 = emp2.employee_id;

-- MULTIPLE JOIN --
select*from employee_demographics emp1
join employee_salary emp2
on emp1.employee_id = emp2.employee_id
join parks_departments pd
on emp2.dept_id = pd.department_id;

select emp2.employee_id, emp2.first_name, emp2.last_name, age, gender, department_id, department_name
from employee_demographics emp1
right join employee_salary emp2
on emp1.employee_id = emp2.employee_id
join parks_departments pd
on emp2.dept_id = pd.department_id;