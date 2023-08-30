-- ex18_groupby.sql

/*
  
 	[WITH <Sub Query>]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expression [ASC|DESC]]
   
   
	select 컬럼리스트		4. 컬럼 지정(보고싶은 컬럼만 가져오기)
   	from 테이블			1. 테이블 지정
   	where 조건			2. 조건 지정(보고싶은 행만 가져오기)
   	group by 기준		3. (레코드끼리) 그룹을 나눈다. 
   	order by 정렬기준;	5. 순서대로 
  
  
  
	group by
	
	
	
*/


-- tblInsa. 부서별 평균 급여?
SELECT * FROM tblinsa;

SELECT
	round(avg(basicpay))
FROM
	tblinsa; -- 155만원

SELECT round(avg(basicpay)) FROM tblinsa WHERE buseo = '총무부'; -- 171
SELECT round(avg(basicpay)) FROM tblinsa WHERE buseo = '개발부'; -- 138
SELECT round(avg(basicpay)) FROM tblinsa WHERE buseo = '영업부'; -- 160
SELECT round(avg(basicpay)) FROM tblinsa WHERE buseo = '기획부'; -- 185
SELECT round(avg(basicpay)) FROM tblinsa WHERE buseo = '인사부'; -- 153
SELECT round(avg(basicpay)) FROM tblinsa WHERE buseo = '자재부'; -- 141
SELECT round(avg(basicpay)) FROM tblinsa WHERE buseo = '홍보부'; -- 145


SELECT * FROM tblinsa GROUP BY 그룹짓기위한 기준컬럼;

-- *** group by 목적 > 그룹별 통계값을 구하기 위해서!!!!! > 집계 함수 사용
SELECT
	count(*) AS "부서별 인원수",
	round(avg(basicpay)) AS "부서별 평균 급여",
	sum(basicpay) AS "부서별 지급액",
	max(basicpay) AS "부서 내의 최고 급여",
	min(basicpay) AS "부서 내의 최저 급여",
	buseo
FROM
	tblinsa
GROUP BY
	buseo;


SELECT
	count(decode(gender, 'm', 1)) AS "남자 수",
	count(decode(gender, 'f', 1)) AS "여자 수"
FROM
	tblcomedian;


SELECT
	count(*),
	gender
FROM
	tblcomedian GROUP BY gender;


SELECT jikwi, count(*) FROM tblinsa GROUP BY jikwi;


SELECT
	gender,
	max(height),
	min(height),
	max(weight),
	min(weight),
	avg(weight),
	avg(height)
FROM
	tblcomedian
GROUP BY
	gender;


-- ORA-00979: not a GROUP BY expression
-- group by 사용 시 > select 컬럼리스트 > 일반 컬럼 명시 불가능 > 집계 함수 + 그룹 컬럼
SELECT count(*), name FROM tblinsa GROUP BY buseo;

SELECT count(*), buseo FROM tblinsa GROUP BY buseo;


-- 다중 그룹

SELECT
	buseo,
	jikwi,
	count(*)
FROM
	tblinsa
GROUP BY
	buseo, jikwi
ORDER BY buseo, jikwi;


-- 급여별 그룹
-- 100만원 이하
-- 100만원 ~ 200만원
-- 200만원 이상
SELECT
	basicpay,
	count(*)
FROM
	tblinsa
GROUP BY basicpay;


SELECT
	basicpay,
	floor(basicpay / 1000000)
FROM
	tblinsa;

SELECT
	(floor(basicpay / 1000000) + 1 ) * 100 || '만원 이하' AS money,
	count(*)
FROM
	tblinsa
GROUP BY
	floor(basicpay / 1000000);


-- tblInsa. 남자/여자 직원수?
SELECT
	substr(ssn, 8, 1),
	count(*)
FROM
	tblinsa
GROUP BY substr(ssn, 8, 1);


SELECT
	count(CASE
		WHEN completedate IS NOT NULL THEN 1
	END),
	count(CASE
		WHEN completedate IS NULL THEN 1
	END)
FROM
	tbltodo;

SELECT
	CASE
		WHEN completedate IS NOT NULL THEN 1
		ELSE 2
	END, 
	count(*)
FROM
	tbltodo
GROUP BY
	CASE
		WHEN completedate IS NOT NULL THEN 1
		ELSE 2
	END;


-- 이것도 가능
SELECT
	CASE
		WHEN completedate IS NOT NULL THEN '미완료'
		ELSE '완료'
	END, 
	count(*)
FROM
	tbltodo
GROUP BY
	CASE
		WHEN completedate IS NOT NULL THEN '미완료'
		ELSE '완료'
	END;


/*
	[WITH <Sub Query>]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expression [ASC|DESC]]
   
   
	select 컬럼리스트		5. 컬럼 지정(보고싶은 컬럼만 가져오기)
   	from 테이블			1. 테이블 지정
   	where 조건			2. 조건 지정(레코드에 대한 조건 - 개인 조건)
   	group by 기준		3. (레코드끼리) 그룹을 나눈다. 
   	having 조건			4. 조건 지정(그룹에 대한 조건)
   	order by 정렬기준;	6. 순서대로 
   	
   	
*/

SELECT
	count(*)
FROM
	tblinsa
WHERE
	basicpay >= 1500000;


SELECT								-- 4. 각 그룹별 > 집계 함수
	buseo,
	round(avg(basicpay))
FROM								-- 1. 60명의 데이터를 가져온다.
	tblinsa								
WHERE								-- 2. 60명을 대상으로 조건을 검사한다.
	basicpay >= 1500000
GROUP BY							-- 3. 2번을 통과한 사람들(27명) 대상으로 그룹을 짓는다.
	buseo;


SELECT
	buseo,
	round(avg(basicpay))
FROM								-- 1.
	tblinsa
GROUP BY							-- 2.
	buseo
HAVING avg(basicpay) >= 1500000;	-- 3. 그룹에 대한 조건 > 그룹별 평균 급여가 150만 이상?



