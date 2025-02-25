-- GROUP BY --
select * from parks_and_recreation.employee_demographics;

SELECT gender, avg(age), max(age), min(age), count(age) from employee_demographics
group by gender;

SELECT avg(age) from employee_demographics
group by gender;
# colom yang di select harus sama dengan "group by" jika tidak menggunakan aggregate (MAX, MIN, AVG, etc)
# tetapi jika menggunakan aggregate, maka hasil yang ditampilkan hanya hasil aggregatenya

select* from employee_salary;

select occupation from employee_salary
group by occupation;

select occupation, salary, first_name from employee_salary
group by occupation, salary, first_name;
# "group by" dapat digunakan untuk 2 atau lebih kolom yang berbeda

-- ORDER BY --
select*from employee_demographics
order by first_name;

select * from employee_demographics
order by first_name desc;
# secara default "order by" akan memberikan data dari kecil ke besar atau "ASC", jika ingin data dari besar ke kecil gunakan "DESC"

select * from employee_demographics
order by gender, age;

select * from employee_demographics
order by age, gender;
# urutan "order by" sangatlah penting, jika dilihat saat melakukan "order by age, gender", maka gender menjadi tidak berguna/tidak terpakai

select * from employee_demographics
order by 5,4;
# selain menggunakan nama kolom, kita juga dapat menggunakan urutan kolom, misal pada kolom ke 5 merukapakn kolom gender dan kolom ke 4 adalah kolom age
# tetapi ini hanya berlaku untuk "order by" dan kemungkinkan error menjadi lebih tinggi.