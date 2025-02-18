-- 1. Biology 강사 이름을 모두 찾아보세요
select name
from instructor
where dept_name = 'Biology';

-- 2. Computer science 에서 3학점이 있는 과목명을 찾아보세요
select dept_name, title
from course
where dept_name = 'Comp. Sci.' 
	and credits = 3;

-- 3. ID가 12078(또는 다른 값)인 학생의 경우 학생이 등록한 모든 course_id와  title of all courses 을 표시합니다.
select *
from student s, takes t
where s.id = 12078
	and s.id = t.id;

-- 4. 위와 동일하지만 해당 courses (해당 학생이 수강한)의 총 credits (학점)을 표시합니다. 
-- student 테이블의 tot_creds 값을 표시하지 마십시오. 
-- 학생이 수강한 강좌에 대해 SQL aggregation (COUNT, SUM, MIN, MAX, AVG 등) 를 사용해야 합니다. (아무 과목도 등록하지 않은 학생은 제외할 수 있습니다)
select s.id, s.name, s.dept_name, sum(credit)
from student s, takes t, course
where s.id = 12078
	and s.id = t.id;



-- 5. 위와 동일하지만 학생 ID와 함께 각 학생의 총 학점(total credits) 을 표시합니다. 학생 이름은 신경쓰지 마세요.


-- 6. Comp. Sci. course 을 하나라도 수강한 모든 학생의 이름을 찾으십시오. 


-- 2008년도 SPRING 학기에 과목명(=NETWORK)을 수강한 학생 목록은? 
select s.name, t.*
from takes t, student s, course c
where t.year = 2008 and t.semester = 'spring'
	and t.id = s.id
	and t.course_id = c.course_id
order by t.grade;
