
-- tblStaff, tblProject. 현재 재직중인 모든 직원의 이름, 주소, 월급, 담당프로젝트명을 가져오시오.
SELECT * FROM tblstaff;
SELECT * FROM tblproject;

SELECT 
	s.name,
	s.address,
	s.salary,
	p.project
FROM
	tblstaff s
INNER JOIN tblproject p
		ON
	s.seq = p.staff_seq;
       
       
-- tblVideo, tblRent, tblMember. '뽀뽀할까요' 라는 비디오를 빌려간 회원의 이름은?
SELECT * FROM tblvideo;
SELECT * FROM tblrent;
SELECT * FROM tblmember;
    
SELECT
	m.name
FROM tblrent r
	INNER JOIN tblvideo v
		ON r.video = v.seq
			INNER JOIN tblmember m
				ON r.MEMBER = m.seq
WHERE v.name = '뽀뽀할까요';
    

-- tblStaff, tblProejct. 'TV 광고'을 담당한 직원의 월급은 얼마인가?
SELECT * FROM tblstaff;
SELECT * FROM tblproject;

SELECT 
	s.name,
	s.salary 
	FROM tblstaff s
		INNER JOIN tblproject p
			ON s.seq = p.staff_seq
WHERE p.project = 'TV 광고';
    
    
-- tblVideo, tblRent, tblMember. '털미네이터' 비디오를 한번이라도 빌려갔던 회원들의 이름은?
SELECT * FROM tblvideo;
SELECT * FROM tblrent;
SELECT * FROM tblmember;

SELECT 
	m.name
FROM tblrent r 
	INNER JOIN tblvideo v
		ON r.video = v.seq
			inner JOIN tblmember m
				ON r."MEMBER" = m.seq
WHERE v.name = '털미네이터';


                
-- tblStaff, tblProject. 서울시에 사는 직원을 제외한 나머지 직원들의 이름, 월급, 담당프로젝트명을 가져오시오.
SELECT * FROM tblstaff;
SELECT * FROM tblproject;

SELECT
	s.name,
	s.salary,
	p.project
FROM
	tblstaff s
INNER JOIN tblproject p 
		ON
	s.seq = p.staff_seq
WHERE
	s.address NOT LIKE '서울시';
    
    
-- tblCustomer, tblSales. 상품을 2개(단일상품) 이상 구매한 회원의 연락처, 이름, 구매상품명, 수량을 가져오시오.
SELECT * FROM tblcustomer;
SELECT * FROM tblsales;
                
SELECT
	c.tel,
	c.name,
	s.item,
	s.qty
FROM tblcustomer c
	INNER JOIN tblsales s 
		ON c.seq = s.cseq
WHERE s.qty >= 2;
                
-- tblVideo, tblRent, tblGenre. 모든 비디오 제목, 보유수량, 대여가격을 가져오시오.
SELECT * FROM tblVideo;
SELECT * FROM tblrent;
SELECT * FROM tblgenre;

SELECT 
	v.name,
	v.qty,
	g.price
FROM
	tblrent r
INNER JOIN tblvideo v
		ON
	r.video = v.seq
INNER JOIN tblgenre g
				ON
	v.genre = g.seq;

                
-- tblVideo, tblRent, tblMember, tblGenre. 2022년 2월에 대여된 구매내역을 가져오시오. 회원명, 비디오명, 언제, 대여가격
SELECT * FROM tblVideo;
SELECT * FROM tblrent;
SELECT * FROM tblgenre;
SELECT * FROM tblmember;

SELECT 
	m.name,
	v.name,
	r.rentdate,
	g.price
FROM tblrent r
	INNER JOIN tblvideo v
		ON r.video = v.seq
			INNER JOIN tblgenre g
				ON v.genre = g.seq
					INNER JOIN tblmember m 
						ON r.MEMBER = m.seq
WHERE r.rentdate BETWEEN '2022-02-01' AND '2022-02-28';

        
-- tblVideo, tblRent, tblMember. 현재 반납을 안한 회원명과 비디오명, 대여날짜를 가져오시오.
SELECT * FROM tblVideo;
SELECT * FROM tblrent;
SELECT * FROM tblmember;

SELECT m.name, v.name, r.rentdate
FROM tblrent r
	INNER JOIN tblvideo v
		ON r.video = v.seq
			INNER JOIN tblmember m
				ON r.MEMBER = m.seq
WHERE r.retdate IS null;
    
    
-- employees, departments. 사원들의 이름, 부서번호, 부서명을 가져오시오.
SELECT * FROM employees;
SELECT * FROM departments;

SELECT
	e.first_name || ' ' || e.last_name AS 이름,
	d.department_id AS 부서번호,
	d.department_name AS 부서명
FROM
	employees e
INNER JOIN departments d
		ON
	e.department_id = d.department_id;
	
--	SELECT * FROM locations;
        
        
-- employees, jobs. 사원들의 정보와 직업명을 가져오시오.
SELECT * FROM employees;
SELECT * FROM jobs;

SELECT
	e.*,
	j.job_title
FROM
	employees e
INNER JOIN jobs j ON
	e.job_id = j.job_id;
       

-- !! 몰루 !!
-- employees, jobs. 직무(job_id)별 최고급여(max_salary) 받는 사원 정보를 가져오시오.
SELECT * FROM employees;
SELECT * FROM jobs;

SELECT 
	e.job_id,
	max(salary)
FROM employees e 
	INNER JOIN jobs j 
		ON e.job_id = j.job_id
GROUP BY e.job_id;
        
SELECT 
	DISTINCT e.job_id,
	j.max_salary
FROM employees e 
	INNER JOIN jobs j 
		ON e.job_id = j.job_id;

    
-- departments, locations. 모든 부서와 각 부서가 위치하고 있는 도시의 이름을 가져오시오.
SELECT * FROM departments;
SELECT * FROM locations;

SELECT
	d.department_id,
	d.department_name,
	l.city
FROM departments d
	INNER JOIN locations l 
		ON d.location_id = l.location_id;
        
        
-- locations, countries. location_id 가 2900인 도시가 속한 국가 이름을 가져오시오.
SELECT * FROM locations;
SELECT * FROM countries;

SELECT
	c.country_name
FROM locations l
	INNER JOIN countries c 
		ON l.country_id = c.country_id
WHERE l.location_id = 2900;
            
            
-- employees. 급여를 12000 이상 받는 사원과 같은 부서에서 근무하는 사원들의 이름, 급여, 부서번호를 가져오시오.
SELECT * FROM employees;

SELECT 
	DISTINCT department_id
FROM employees
WHERE salary > 12000;

SELECT 
	first_name || ' ' || last_name AS 이름, 
	salary AS 급여, 
	department_id AS 부서번호 
FROM employees 
WHERE 
	department_id IN (
		SELECT 
			DISTINCT department_id
		FROM employees
		WHERE salary > 12000);
        
        
-- employees, departments. locations.  'Seattle'에서(LOC) 근무하는 사원의 이름, Job_id, 부서번호, 부서이름을 가져오시오.
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM locations;

SELECT 
	* 
FROM employees e 
	INNER JOIN departments d 
		ON e.department_id = d.department_id
			INNER JOIN locations l 
				ON d.location_id = l.location_id;

-- location id가 같은 것
-- department id가 같은 것
			
SELECT location_id FROM locations WHERE city = 'Seattle';

SELECT department_id FROM departments WHERE location_id = (SELECT location_id FROM locations WHERE city = 'Seattle'); 

SELECT first_name || ' ' || last_name AS 이름, job_id, department_id FROM employees 
WHERE department_id in (SELECT department_id FROM departments WHERE location_id = (SELECT location_id FROM locations WHERE city = 'Seattle'));
    
SELECT 
	e.first_name || ' ' || e.last_name AS 이름, 
	e.job_id, 
	e.department_id,
	d.department_name
FROM employees e
	INNER JOIN departments d
		ON e.department_id = d.department_id
WHERE d.department_id in (SELECT department_id FROM departments WHERE location_id = (SELECT location_id FROM locations WHERE city = 'Seattle'));

-- employees, departments. first_name이 'Jonathon'인 직원과 같은 부서에 근무하는 직원들 정보를 가져오시오.
SELECT * FROM employees;
SELECT * FROM departments;

SELECT 
	department_id
FROM employees
WHERE first_name = 'Jonathon';

SELECT 
	* 
FROM employees
WHERE department_id = (
	SELECT department_id
	FROM employees
	WHERE first_name = 'Jonathon');

    
-- employees, departments. 사원이름과 그 사원이 속한 부서의 부서명, 그리고 월급을 출력하는데 월급이 3000이상인 사원을 가져오시오.
SELECT * FROM employees;
SELECT * FROM departments;

SELECT  
	e.first_name || ' ' || e.last_name AS 이름,
	d.department_name AS 부서명,
	e.salary AS 월급
FROM employees e 
	INNER JOIN departments d 
		ON e.department_id = d.department_id 
WHERE salary >= 3000;
            
            
-- employees, departments. 부서번호가 10번인 사원들의 부서번호, 부서이름, 사원이름, 월급을 가져오시오.
SELECT * FROM employees;
SELECT * FROM departments;

SELECT 
	e.department_id AS 부서번호,
	d.department_name AS 부서이름,
	e.first_name || ' ' || e.last_name AS 사원이름,
	e.salary AS 월급
FROM employees e 
	INNER JOIN departments d
		ON e.department_id = d.department_id
WHERE e.department_id = 10;


            
-- departments, job_history. 퇴사한 사원의 입사일, 퇴사일, 근무했던 부서 이름을 가져오시오.
SELECT * FROM departments;
SELECT * FROM job_history;

SELECT
	h.start_date,
	h.end_date,
	d.department_name
FROM job_history h
	INNER JOIN departments d 
		ON h.department_id = d.department_id;

        
        
-- employees. 사원번호와 사원이름, 그리고 그 사원을 관리하는 관리자의 사원번호와 사원이름을 출력하되 각각의 컬럼명을 '사원번호', '사원이름', '관리자번호', '관리자이름'으로 하여 가져오시오.
SELECT * FROM employees;

SELECT
	e1.employee_id AS 사원번호,
	e1.first_name || ' ' || e1.last_name AS 사원이름,
	e1.manager_id AS 관리자번호,
	e2.first_name || ' ' || e2.last_name AS 관리자이름
FROM 
	employees e1
INNER JOIN employees e2 ON
	e1.manager_id = e2.employee_id;
        
        
-- employees, jobs. 직책(Job Title)이 Sales Manager인 사원들의 입사년도와 입사년도(hire_date)별 평균 급여를 가져오시오. 년도를 기준으로 오름차순 정렬.
SELECT * FROM employees;
SELECT * FROM jobs;

SELECT job_id FROM jobs WHERE job_title = 'Sales Manager';

SELECT 
	hire_date, 
	avg(salary) 
FROM employees 
WHERE job_id = (SELECT job_id FROM jobs WHERE job_title = 'Sales Manager') 
GROUP BY hire_date
ORDER BY hire_date ASC;

-- 몰루!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- employees, departments. locations. 각 도시(city)에 있는 모든 부서 사원들의 평균급여가 가장 낮은 도시부터 도시명(city)과 평균연봉, 해당 도시의 사원수를 가져오시오. 단, 도시에 근 무하는 사원이 10명 이상인 곳은 제외하고 가져오시오.
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM locations;

SELECT location_id FROM locations GROUP BY location_id;

SELECT department_id FROM departments WHERE location_id IN (SELECT location_id FROM locations GROUP BY location_id);

SELECT * FROM employees WHERE department_id IN (SELECT department_id FROM departments WHERE location_id IN (SELECT location_id FROM locations GROUP BY location_id));
            


-- employees, jobs, job_history. ‘Public  Accountant’의 직책(job_title)으로 과거에 근무한 적이 있는 모든 사원의 사번과 이름을 가져오시오. 현재 ‘Public Accountant’의 직책(job_title)으로 근무하는 사원은 고려 하지 말것.
SELECT * FROM employees;
SELECT * FROM jobs;
SELECT * FROM job_history;

SELECT job_id FROM jobs WHERE job_title = 'Public Accountant';

SELECT employee_id FROM job_history WHERE job_id = (SELECT job_id FROM jobs WHERE job_title = 'Public Accountant');
   
SELECT employee_id, first_name || ' ' || last_name AS 이름 FROM employees WHERE employee_id IN (SELECT employee_id FROM job_history WHERE job_id = (SELECT job_id FROM jobs WHERE job_title = 'Public Accountant'));
    
-- employees, departments, locations. 커미션을 받는 모든 사람들의 first_name, last_name, 부서명, 지역 id, 도시명을 가져오시오.
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM locations;
    
SELECT DISTINCT department_id FROM employees WHERE commission_pct IS NOT NULL;

SELECT
	e.first_name,
	e.last_name, 
	d.department_name,
	l.location_id,
	l.city
FROM employees e
	INNER JOIN departments d 
		ON e.department_id = d.department_id
			INNER JOIN locations l 
				ON d.location_id = l.location_id
WHERE
	commission_pct IS NOT NULL;
    
-- employees. 자신의 매니저보다 먼저 고용된 사원들의 first_name, last_name, 고용일을 가져오시오.
SELECT 
	e1.first_name,
	e1.last_name,
	e1.hire_date
FROM employees e1
	INNER JOIN employees e2 
		ON e1.manager_id = e2.employee_id
WHERE e1.hire_date < e2.hire_date;