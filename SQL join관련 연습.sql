select *
from s;

(select *
from s
where status < 30)
union
(select *
from s
where status > 20);

select A.sno, A.sname, A.status, A.city
from (
		select *
        from s
        where status < 40)
A left join (
				select *
                from s
                where status > 20)
B on A.sno = B.sno
where B.sno is null;

select A.sno, A.sname, A.status, A.city
from (
		select *
        from s
        where status < 30)
A join (
		select *
        from s
        where status > 10)
B on A.sno = B.sno;

select *
from s
where status < 20 or city = 'London';

select *
from s
where status < 30 and city = 'London';

select *
from s
where not(status < 30);

select sname, city
from s
where not(status < 30);

select *
from s;

select *
from p;

select *
from s
inner join p on s.city = p.city
order by sno asc;

select *
from s
join p on s.city = p.city
order by sno asc;

select *
from s
cross join p on s.city = p.city
order by sno asc;

select *
from s
cross join p on s.city > p.city
order by sno asc;

select *
from s
natural join p
order by sno;

select *
from s
left join p on s.city = p.city;

select *
from s
right join p on s.city = p.city;

select *
from s
left outer join p on s.city = p.city;

select *
from s
right outer join p on s.city = p.city;