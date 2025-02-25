-- Temporary Table -- #will exist as long as user still inside MySQL, and dissapear when exit MySQL. 

create temporary table temp_table
(first_name varchar(50),
last_name varchar(50),
gf varchar(50)
);

select * from temp_table;

insert into temp_table
values('my', 'name', 'my gf');
select*from temp_table;

create temporary table salary_over_50k
select*from employee_salary
where salary >=50000;

select * from salary_over_50k;
