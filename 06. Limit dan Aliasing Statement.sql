-- LIMIT and Aliasing --

-- LIMIT
select * from employee_demographics
order by age desc
limit 3;
# "LIMIT" berfungsi untuk membatasi banyak baris yang ditampilkan.

select * from employee_demographics
order by age desc
limit 1, 3;
# penggunaan "LIMIT" tidak terbatas pada berapa kolom yang ingin ditampilan,
# contoh seperti berikut, "limit 1, 3" artinya kita mengambil 3 baris data dihitung dari baris pertama data yang sudah di filter,
# artinya baris yang di ambil adalah barus ke 2, 3, dan 4.

-- Aliasing
select gender, avg(age) as avg_age from employee_demographics
group by gender
having avg_age > 40;
# "Aliasing" digunakan untuk mengubah nama kolom yang di "SELECT", dengan command nya asalah "AS".
