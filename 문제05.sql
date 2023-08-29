-- 문제05.sql


-- 정렬


-- employees
-- 1. 전체 이름(first_name + last_name)이 가장 긴 -> 짧은 사람 순으로 정렬해서 가져오기
--    > 컬럼 리스트 > fullname(first_name + last_name), length(fullname)
SELECT first_name || ' ' || last_name AS fullname FROM employees ORDER BY LENGTH(first_name) + LENGTH(last_name) desc;

-- 2. 전체 이름(first_name + last_name)이 가장 긴 사람은 몇글자? 가장 짧은 사람은 몇글자? 평균 몇글자?
--    > 컬럼 리스트 > 숫자 3개 컬럼
SELECT max(length(first_name || last_name)), min(length(first_name || last_name)), avg(length(first_name || last_name)) FROM employees;

-- 3. last_name이 4자인 사람들의 first_name을 가져오기
--    > 컬럼 리스트 > first_name, last_name
--    > 정렬(first_name, 오름차순)
SELECT first_name, last_name FROM employees WHERE LENGTH(last_name) = 4 ORDER BY first_name asc;

-- decode

-- 4. tblInsa. 부장 몇명? 과장 몇명? 대리 몇명? 사원 몇명?
SELECT
	count(CASE
		WHEN jikwi = '부장' THEN 1
	END
	),
	count(CASE
		WHEN jikwi = '과장' THEN 1
	END),
	count(CASE
		WHEN jikwi = '대리' THEN 1
	END),
	count(CASE
		WHEN jikwi = '사원' THEN 1
	END)
FROM
	tblinsa;

-- 5. tblInsa. 간부(부장, 과장) 몇명? 사원(대리, 사원) 몇명?
SELECT
	count(
		CASE
			WHEN jikwi LIKE '_장' THEN 1
		END
	) AS 간부,
	count(
		CASE
			WHEN jikwi NOT LIKE '_장' THEN 1
		END
	) AS 사원
FROM
	tblinsa;


-- 6. tblInsa. 기획부, 영업부, 총무부, 개발부의 각각 평균 급여?
SELECT
	avg(
		CASE
			WHEN buseo = '기획부' THEN basicpay
		END
	) AS 기획부,
	avg(CASE
			WHEN buseo = '영업부' THEN basicpay
		END) AS 영업부,
	avg(CASE
			WHEN buseo = '총무부' THEN basicpay
		END) AS 총무부,
	avg(CASE
			WHEN buseo = '개발부' THEN basicpay
		END) AS 개발부
FROM
	tblinsa;

-- 7. tblInsa. 남자 직원 가장 나이가 많은 사람이 몇년도 태생? 여자 직원 가장 나이가 어린 사람이 몇년도 태생?
SELECT
	min(to_number(substr(CASE
		WHEN ssn LIKE '%-1%' THEN ssn
	END, 0, 2))) AS 남자,
	max(to_number(substr(CASE
		WHEN ssn LIKE '%-2%' THEN ssn
	END, 0, 2))) AS 여자
FROM
	tblinsa;


SELECT
	min(
		CASE
			WHEN ssn LIKE '%-1%' THEN to_number(substr(ssn, 0, 2))
		END) AS 남자,
	max(
		CASE
			WHEN ssn LIKE '%-1%' THEN to_number(substr(ssn, 0, 2))
		END) AS 여자
FROM
	tblinsa;
