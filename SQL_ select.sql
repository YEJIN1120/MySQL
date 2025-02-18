USE world;
select * from city;
select * from country;
select * from countrylanguage;
select Name, Population from city;
select Code, Name, Continent, LocalName, GNP from country;
select CountryCode, Language, Percentage from countrylanguage;
select * from country where code = 'KOR';
select * from country where code like 'K%';
select * from country where code like 'K_';
select * from country where code like '%K%';
select * from countrylanguage where CountryCode = 'KOR' and isofficial = 'T';


select count(*) from city;
select * from city where population > 1000000 order by population asc;   //오름차순
select * from city where population > 1000000 order by population desc;  //내림차순
select * from city order by id asc limit 0,5; (0에서부터 5개)