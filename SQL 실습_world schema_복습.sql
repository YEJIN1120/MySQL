-- 세계의 모든 나라들의 총 인구를 구합니다.
select sum(population)
from country;

-- 대륙별로 평균 기대 수명을 구합니다.
select continent, avg(lifeexpectancy)
from country
group by continent;

-- 각 국가에 속한 도시의 개수를 구합니다.
select C1.code, count(C2.name)
from country C1, city C2
where C1.code = C2.countryCode
group by C1.code;

-- 각 대륙에서 인구가 가장 적은 국가의 인구 수를 구합니다.
select continent, min(c.population)
from country c
group by continent;

-- 모든 국가들의 총 면적을 계산합니다.
select sum(surfaceArea)
from country;

-- 각 국가에 속한 도시의 평균 인구 수를 구합니다.
select C1.code, avg(C2.population)
from country C1, city C2
where C1.code = C2.countrycode
group by code;

-- 각 국가에서 도시 인구가 국가 전체 인구의 50%를 넘는 국가를 구합니다.
select B.code, A.pop1, B.pop2
from
(
	select countrycode, sum(population) pop1
	from city
	group by countrycode
) A,
(
	select code, population pop2
    from country
) B
where A.countrycode = B.code;
