-- TRIGGER --

select * from employee_demographics;
select*from employee_salary;

delimiter $$
create trigger trg1
after insert on employee_salary
for each row
begin
insert into employee_demographics (employee_id, first_name, last_name)
values (new.employee_id, new.first_name, new.last_name);
end $$
delimiter ;
# Trigger yang sudah dibuat sudah tidak dapat dihapus, alternatifnya copy data table ke table baru.


insert into employee_salary(employee_id, first_name, last_name,occupation, salary, dept_id)
values (13, 'john', 'doe', null,null,null);

-- EVENTS
delimiter $$
create event delete_retirees
on schedule every 30 second
do
begin
delete from employee_demographics
where age >=60;
end $$
delimiter ;

select * from employee_demographics;

show variables like 'event%';







create table employee_salary2 (employee_id varchar(50), first_name varchar(50), last_name varchar(50),occupation varchar(100), salary varchar(50), dept_id varchar(50));

drop table employee_salary;

insert into employee_salary2(employee_id, first_name, last_name,occupation, salary, dept_id)
select * from employee_salary;

select * from employee_salary2;

rename table employee_salary2 to employee_salary;