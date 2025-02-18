# 각 카테고리에는 몇 편의 영화가 있나요?
select c.name, count(c.category_id)
from category c, film_category f
where c.category_id = f.category_id
group by c.name;

# 'ACADEMY DINOSAUR'라는 영화를 대여한 고객의 이름은 무엇입니까?


# 가장 많은 작품에 출연한 배우는 누구인가요?
select a.first_name, a.last_name, count(fa.film_id)
from actor a, film_actor fa, film f
where a.actor_id = fa.actor_id and fa.film_id = f.film_id
group by a.actor_id
order by count(fa.film_id) desc
limit 1;

# 매장별 총 수익은 얼마나 되나요?

#한 번도 대여한 적이 없는 영화는 무엇인가요?

# 렌탈 비용을 가장 많이 지출한 고객은 누구인가요?

# 렌탈 건수 기준 상위 3명의 고객은 누구인가요?

# 대여료가 $2.00 미만인 영화는 몇 편이나 되나요?

# 카테고리별 영화의 평균 대여 기간은 얼마나 되나요?

# 고객 ID 1과 고객 ID 2 모두가 대여한 영화를 나열합니다.

# 임대 건수가 가장 많은 달은 언제였나요?

# 결제를 가장 많이 처리한 직원은 누구인가요?

# 한 번도 대여한 적이 없는 영화는 무엇인가요?

# 렌탈 비용을 가장 많이 지출한 고객은 누구인가요?

# RENTAL 건수가 가장 많은 달은 언제였나요?