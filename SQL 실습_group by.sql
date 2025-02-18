select *
from country C1, city C2
where C2.countrycode = C1.code;

-- select sum(컬럼이름), max(컬럼이름), min(컬럼이름), avg(컬럼이름), count(컬럼이름)
select C1.countrycode, count(*)
from city C1
group by C1.CountryCode
limit 10;

-- 세계의 모든 나라들의 총 인구를 구합니다.
select sum(population)
from country;

-- 대륙별로 평균 기대 수명을 구합니다.
select continent, avg(lifeexpectancy)
from country
group by continent;

-- 각 국가에 속한 도시의 개수를 구합니다.
select code, count(countrycode)
from country C1, city C2
where C2.countrycode = C1.code
group by code;

-- 각 대륙에서 인구가 가장 적은 국가의 인구 수를 구합니다.
select continent, min(population)
from country
group by continent;

-- 모든 국가들의 총 면적을 계산합니다.
select sum(surfacearea)
from country;

-- 각 국가에 속한 도시의 평균 인구 수를 구합니다.
select code, avg(C2.population)
from country C1, city C2
where C2.countrycode = C1.code
group by code;

-- 각 국가에서 도시 인구가 국가 전체 인구의 50%를 넘는 국가를 구합니다.
select C1.countrycode, sum(C1.population) / C2.population
from city C1, country C2
where C1.countrycode = C2.code
group by C1.countrycode;

select *
from (
	select C1.countrycode, sum(C1.population) / C2.population cc_ratio
    from city C1, country C2
    where C1.countrycode = C2.code
    group by C1.countrycode
) A
where A.cc_ratio > 0.5;