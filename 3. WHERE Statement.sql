-- WHERE --
select * from employee_salary
where first_name = "leslie";
 
select * from employee_salary
where salary >= 50000;

select * from parks_and_recreation.employee_demographics
where gender != 'female';

select * from parks_and_recreation.employee_demographics
where birth_date != '1985-03-04';

-- AND OR NOT -- LOGICAL OPERATORS
select * from parks_and_recreation.employee_demographics
where birth_date > '1985-03-04'
and gender = 'male';

select * from parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
or gender = 'male';
#when using "or" any data that have either on of them will be preview

select * from parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
or not gender = 'male';
#when using "or not" then the fist condition must be met but the second or the "or not" condition can be not met

select * from parks_and_recreation.employee_demographics
where (first_name = 'leslie' and age = 44) or age > 55;
#PEMDA can be use like this

-- LIKE statement --
-- % and _
select * from employee_demographics
where first_name like "jer%";

select * from employee_demographics
where first_name like "%er%";

select * from employee_demographics
where first_name like "a%";
#"%" sign is use to search for data that have something we don't know, ex we want to search person name start with "jer" and we don't know the rest of their name.
#the position of the sign is important because it means if where other character that we don't know contained.

select * from employee_demographics
where first_name like "a__";

select * from employee_demographics
where first_name like "a___";
#"_" sign mean how many character contain in the word we want to search. ex "a__" mean that after "a" there is 2 more chars in the name.

select * from employee_demographics
where first_name like "a___%";
#"%" and "_" can be used at the same time. check the result!!

select * from employee_demographics
where birth_date like "1989%";