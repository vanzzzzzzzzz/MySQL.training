-- STRING --

-- LENGTH
select length('skyfall');

select first_name, length(first_name) as length from employee_demographics
order by 1;

-- UPPER and LOWER
select upper('sky'), lower('SKY');

select first_name, upper(first_name) from employee_demographics;

-- TRIM
select trim('   sky   '); # Melakukan "TRIM" pada kedua sisi.

select ltrim('   sky   '); # Melakukan "TRIM" pada sisi kiri.

select rtrim('   sky   '); # Melakukan "TRIM" pada sisi kanan.

-- SUBSTRING
select first_name, left(first_name, 4) from employee_demographics;

select first_name, right(first_name, 4) from employee_demographics;

select  first_name,
left(first_name, 4),
right(first_name,4),
substring(first_name, 3, 2),
birth_date,
substring(birth_date, 6, 2) as Month
from employee_demographics;

-- REPLACE
select first_name, replace(first_name, "a", "z")
from employee_demographics;

-- LOCATE
select first_name, locate( 'e', first_name)
from employee_demographics;

-- CONCAT
select first_name, last_name, concat(first_name, ' ', last_name) as "full name"
from employee_demographics;

-- CONTOH
select first_name, substring(first_name, 3) from employee_demographics;

select first_name, upper(left(first_name, 3)) from employee_demographics;

select first_name, concat(upper(left(first_name,3)), substring(first_name, 4))
from employee_demographics;
