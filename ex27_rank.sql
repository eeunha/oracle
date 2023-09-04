-- ex27_rank.sql
/*
	순위 함수
	- rownum > 기반으로 만들어진 함수
	
	1. rank() over(order by 컬럼명 [asc|desc])
	
	2. dense_rank() over(order by 컬럼명 [asc|desc])
	
	3. row_number() over(order by 컬럼명 [asc|desc])
	
	
*/
-- tblInsa. 급여순으로 가져오시오. + 순위 표시

-- 이것도 가능
SELECT
	a.*,
	rownum
FROM
	(
	SELECT
		name,
		buseo,
		basicpay
	FROM
		tblinsa
	ORDER BY
		basicpay DESC) a;

SELECT
	name,
	buseo,
	basicpay,
	rownum
FROM
	(
	SELECT
		name,
		buseo,
		basicpay
	FROM
		tblinsa
	ORDER BY
		basicpay DESC);

	
SELECT
	name,
	buseo,
	basicpay,
	RANK() OVER(ORDER BY basicpay desc) AS rnum -- 같은 금액은 동순위로 처리 + 동순위 인원 수 더한 다음에 순위 진행
FROM
	tblinsa;

SELECT
	name,
	buseo,
	basicpay,
	dense_rank() OVER(ORDER BY basicpay desc) AS rnum -- 같은 금액은 동순위로 처리 + 바로 이어서 순위 진행
FROM
	tblinsa;
	
SELECT
	name,
	buseo,
	basicpay,
	row_number() OVER(ORDER BY basicpay desc) AS rnum -- 맨 위의 rownum과 동일
FROM
	tblinsa;
	

-- 급여 5위?
SELECT
	*
FROM
	(SELECT
		name,
		buseo,
		basicpay,
		ROW_NUMBER() OVER(ORDER BY basicpay DESC) AS rnum
		-- 맨 위의 rownum과 동일
	FROM
		tblinsa)
WHERE
	rnum = 8;


-- 순위 함수 + order by
-- 순위 함수 + partition by + order by > 순위 함수 + group by > 그룹별 순위 구하기

SELECT 
	name, buseo, basicpay,
	rank() over(PARTITION BY buseo ORDER BY basicpay DESC) AS rnum
FROM tblinsa;


SELECT
	*
FROM
	(SELECT
		name, buseo, basicpay,
		RANK() OVER(PARTITION BY buseo ORDER BY basicpay DESC) AS rnum
	FROM
		tblinsa)
WHERE
	rnum = 1;


