 UPDATE emp
 set salary_date = '2024-10-30'
 where eno = 6;
 
 update emp
 set enter_date = '2020-04-15'
 where eno = 2;
 
 update emp
 set salary_date = '2024-10-15'
 where eno = 2;
 
 select *
 from emp
 where enter_date = '2020-04-15';
 
 select *
 from emp
 where enter_date = current_date();
 
 select current_date();
 
 select current_timestamp();

 select date_add(enter_date, interval 100 day)
 from emp
 where enter_date = current_date();
 
select *
 from emp
 where enter_date <= date_add(enter_date, interval 100 day);
 
 select *
 from emp
 where enter_date between date_add(current_date(), interval 50 day)
	and date_add(current_date(), interval 100 day);

-- 년도만 가져오기 --
select year(enter_date)
from emp;

-- 월만 가져오기 --
select month(enter_date)
from emp;

-- 일만 가져오기 --
select day(enter_date)
from emp;

-- 현재 시간과 날짜를 받아오고 싶을 때 --
select now();

select str_to_date('20241030','%Y%m%d');

-- concat()
select concat(continent, ' ', name) new_name
from country;

-- group_concat()
select countrycode, group_concat(name), sum(population)
from city
group by countrycode;

-- left(), right()
select left(name, 2)
from city;

-- length()
select max(length(name))
from country;

-- substr()
select substr(name,3,4)
from country;

