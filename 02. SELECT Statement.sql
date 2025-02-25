select *
from parks_and_recreation.employee_demographics;

select first_name, last_name, age, (age + 10) *10 + 10
from parks_and_recreation.employee_demographics;
#PEMDAS

select distinct first_name from parks_and_recreation.employee_demographics;

select distinct gender from parks_and_recreation.employee_demographics;

select distinct first_name, gender from parks_and_recreation.employee_demographics;
#DISTINCT is for uniqe data in the column we select. In this case, "fist_name" and "gender" because we want to see uniqe data in both column so the result is as preview.
