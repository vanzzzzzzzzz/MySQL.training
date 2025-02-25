-- STORED PROCEDURE --

create procedure ex1()
select * from employee_salary
where salary >50000;

call ex1();

create procedure ex2()
select * from employee_salary
where salary > 50000;
select * from employee_salary
where salary > 10000;

call ex2(); # Tidak memberikan hasil yang diinginkan.

delimiter $$
create procedure ex3()
begin
select * from employee_salary
where salary >= 50000;
select * from employee_salary
where salary >=10000;
end $$
delimiter ;

call ex3();

call new_procedure;

create procedure ex4(employee_id_par int)
select salary from employee_salary
where employee_id = employee_id_par;

call ex4(1);

