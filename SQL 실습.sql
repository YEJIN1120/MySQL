select * from city where population >= 500000;
select name, population from country where code = 'CHN';
select * from country where continent = 'Asia';
select name, surfaceArea from country where surfaceArea < 10000;
select name, lifeexpectancy from country where lifeexpectancy < 60;
select * from city where district = 'California';
select * from city where CountryCode = 'IND' and 100000 < population and population < 1000000;
select region, name from country where GovernmentForm = 'republic';
select * from city where district = 'Kyonggi';
select * from country 