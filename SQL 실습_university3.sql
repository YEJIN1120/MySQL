-- 컴퓨터 공학과 교수님들 목록+학과 예산
select *
from instructor
where dept_name = 'comp. sci.';

select *
from department
where dept_name = 'comp. sci.';

-- 컴퓨터 공학과 학생들 목록
select *
from student
where dept_name = 'comp. sci.';

-- 가장 많은 교수님이 소속된 학과명은?
select dept_name, count(*) CNT
from instructor
group by dept_name
order by CNT desc
limit 1;

-- 학과별 과목 수 -> 가장 많은 과목 학과
select dept_name, count(*) CNT
from course
group by dept_name
order by CNT desc
limit 1;

-- 학과별 학점 수 -> 가장 많은 학점 학과
select dept_name, sum(credits) total
from course
group by dept_name
order by total desc
limit 2;

-- 년도별/학기별 개설 과목수는?
select s.semester, count(c.title)
from section s, course c
where s.course_id = c.course_id
group by semester;

-- ID가 12078인 학생이 수강한 courses 의 총 credits (학점)을 표시합니다. 
select s.id, sum(credits)
from student s, takes t, course c
where s.id = 12078
	and s.id = t.id
    and t.course_id = c.course_id;
    
  # student 테이블의 tot_creds 값을 사용하지 않고, 학생이 수강한 강좌에 대해 SQL aggregation (COUNT, SUM, MIN, MAX, AVG 등) 를 사용해야 합니다. (아무 과목도 등록하지 않은 학생은 제외할 수 있습니다)

-- 위와 동일하지만 학생 ID와 함께 각 학생의 총 학점(total credits) 을 표시합니다. 학생 이름은 신경쓰지 마세요.
select s.id, sum(credits)
from student s, takes t, course c
where s.id = 12078
	and s.id = t.id
    and t.course_id = c.course_id;

-- 대학에 등록된 총 학생 수를 계산합니다.
select count(s.id)
from student s;

-- 모든 강의 (course)의 평균 학점을 계산합니다.
select avg
from course;

-- 각 부서가 제공하는 총 강좌 수를 구합니다.

-- 강의실(classroom)의 최대, 최소, 평균 수용 인원을 계산합니다.

-- 각 강좌가 제공하는 섹션 수를 구합니다.

-- 각 강좌에 등록된 학생 수를 구합니다.

-- 각 강좌에서 학생들의 평균 성적을 계산합니다.

-- 부서별(department)로 instructor의 총 급여를 계산합니다.

-- 각 섹션이 사용하는 강의실의 수를 구합니다.

-- 3개 이상의 강좌에 등록한 학생들을 찾습니다.

-- 가장 많은 학생이 등록한 강좌를 찾습니다.

-- 두 개 이상의 부서에서 강의를 하는 instructor 를 찾습니다.

-- 선수 과목이 없는 강좌를 찾습니다.
