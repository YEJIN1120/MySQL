-- 1. 수도와 함께 국가 이름을 검색합니다.
select C1.name, C2.name 
from country C1, city C2 
where C1.capital = C2.id;

-- 2. 세계에서 인구가 가장 많은 상위 5개 도시의 이름과 인구를 검색합니다. 결과를 인구별로 내림차순으로 정렬합니다.
select name, population
from city
order by population desc
limit 5;

select *
from world.country
where name like 'united%';

-- 3. 미국(USA)에 있는 모든 도시의 이름을 검색합니다.
select C1.name, C2.name
from country C1, city C2
where C1.code = 'usa'
	and C1.code = C2.countrycode
order by C2.name;

-- 4. 중국에서 사용되는 모든 언어의 이름을 검색합니다.
select C1.name, C2.language
from country C1
	join countrylanguage C2 on C1.code = C2.countrycode
where C1.name = 'china';

-- 5. 인구가 100만 명 이상인 유럽 국가의 이름을 검색합니다.
select name
from country
where population >= 1000000
	and continent = 'europe';

-- 6. 1900년 이후 독립한 국가의 이름을 검색합니다.
select name
from country
where indepyear > 1900;

-- 7. 영어가 공용어가 아니고 국민총생산(GNP)이 1,000보다 큰 국가의 이름을 검색합니다.
select C2.name, C1.language
from countrylanguage C1, country C2
where C1.language = 'English'
	and C1.isofficial = 'F'
    and C2.GNP > 1000;
    


