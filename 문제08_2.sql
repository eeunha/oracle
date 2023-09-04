-- rownum + group by


-- 1. tblInsa. 남자 급여(기본급+수당)을 (내림차순)순위대로 가져오시오. (이름, 부서, 직위, 급여, 순위 출력)
SELECT * FROM tblinsa ;

SELECT
	name AS 이름,
	buseo AS 부서,
	jikwi AS 직위,
	basicpay + sudang AS 급여,
	rownum AS 순위
FROM
	(
	SELECT
		name,
		buseo,
		jikwi,
		basicpay + sudang,
		basicpay,
		sudang
	FROM
		tblinsa
	WHERE substr(ssn, 8, 1) = 1
	ORDER BY
		basicpay + sudang DESC);

-- 2. tblInsa. 여자 급여(기본급+수당)을 (오름차순)순위대로 가져오시오. (이름, 부서, 직위, 급여, 순위 출력)
SELECT * FROM tblinsa;

SELECT
	name AS 이름,
	buseo AS 부서,
	jikwi AS 직위,
	basicpay + sudang AS 급여,
	rownum AS 순위
FROM
	(
	SELECT
		*
	FROM
		tblinsa
	WHERE
		substr(ssn, 8, 1) = 2
	ORDER BY
		basicpay + sudang ASC);

	


-- 3. tblInsa. 여자 인원수가 (가장 많은 부서 및 인원수) 가져오시오.
SELECT * FROM tblinsa;

SELECT
	부서,
	인원수
FROM
	(
	SELECT
		부서,
		인원수,
		rownum AS rnum
	FROM
		(
		SELECT
			buseo AS 부서,
			count(*) AS 인원수
		FROM
			tblinsa
		WHERE
			substr(ssn, 8, 1) = 2
		GROUP BY
			buseo
		ORDER BY
			count(*) DESC)
)
WHERE
	rnum = 1;


-- 4. tblInsa. 지역별 인원수 (내림차순)순위를 가져오시오.(city, 인원수)
SELECT * FROM tblinsa;

SELECT
	city,
	인원수,
	rownum AS 순위
FROM
	(
	SELECT
		city,
		count(*) AS 인원수
	FROM
		tblinsa
	GROUP BY
		city
	ORDER BY
		인원수 DESC);

-- 5. tblInsa. 부서별 인원수가 가장 많은 부서 및 인원수 출력.
SELECT * FROM tblinsa;

SELECT
	buseo,
	인원수
FROM
	(
	SELECT
		buseo,
		인원수,
		rownum AS rnum
	FROM
		(
		SELECT
			buseo,
			count(*) AS 인원수
		FROM
			tblinsa
		GROUP BY
			buseo
		ORDER BY
			인원수 DESC))
WHERE
	rnum = 1;

-- 6. tblInsa. 남자 급여(기본급+수당)을 (내림차순) 3~5등까지 가져오시오. (이름, 부서, 직위, 급여, 순위 출력)
SELECT * FROM tblinsa;

SELECT
	이름,
	부서,
	직위,
	급여,
	순위
FROM
	(
	SELECT
		name AS 이름,
		buseo AS 부서,
		jikwi AS 직위,
		basicpay + sudang AS 급여,
		rownum AS 순위
	FROM
		(
		SELECT
			*
		FROM
			tblinsa
		WHERE
			substr(ssn, 8, 1) = 1
		ORDER BY
			basicpay + sudang DESC))
WHERE
	순위 BETWEEN 3 AND 5;

-- 7. tblInsa. 입사일이 빠른 순서로 5순위까지만 가져오시오.
SELECT * FROM tblinsa;

SELECT
	*
FROM
	(
	SELECT
		a.*,
		rownum AS rnum
	FROM
		(
		SELECT
			*
		FROM
			tblinsa
		ORDER BY
			ibsadate ASC) a)
WHERE
	rnum <= 5;

-- 8. tblhousekeeping. 지출 내역(가격 * 수량) 중 가장 많은 금액을 지출한 내역 3가지를 가져오시오.
SELECT * FROM tblhousekeeping;

SELECT
	*
FROM
	(
	SELECT
		a.*,
		price * qty AS 지출내역,
		rownum AS 순위
	FROM
		(
		SELECT
			*
		FROM
			tblhousekeeping
		ORDER BY
			qty * price DESC) a)
WHERE
	순위 <= 3;

-- 9. tblinsa. 평균 급여 2위인 부서에 속한 직원들을 가져오시오.
SELECT * FROM tblinsa;

SELECT
	*
FROM
	tblinsa
WHERE
	buseo = (
	SELECT
		buseo
	FROM
		(
		SELECT
			a.*,
			rownum AS rnum
		FROM
			(
			SELECT
				buseo,
				round(avg(basicpay + sudang)) AS 평균급여
			FROM
				tblinsa
			GROUP BY
				buseo
			ORDER BY
				평균급여 DESC) a)
	WHERE
		rnum = 2);

-- 10. tbltodo. 등록 후 가장 빠르게 완료한 할일을 순서대로 5개 가져오시오.
SELECT * FROM tbltodo;

SELECT
	*
FROM
	(
	SELECT
		a.*,
		a.completedate - a.adddate AS 차이,
		rownum AS rnum
	FROM
		(
		SELECT
			*
		FROM
			tbltodo
		ORDER BY
			completedate - adddate ASC) a)
WHERE
	rnum <= 5;

-- 11. tblinsa. 남자 직원 중에서 급여를 3번째로 많이 받는 직원과 9번째로 많이 받는 직원의 급여 차액은 얼마인가?
SELECT * FROM tblinsa;

SELECT name, basicpay + sudang FROM (
SELECT a.*, rownum AS rnum FROM (
SELECT
	*
FROM
	tblinsa
WHERE
	substr(ssn, 8, 1) = 1
ORDER BY
	(basicpay + sudang) DESC) a)
WHERE rnum = 3;

SELECT name, basicpay + sudang FROM (
SELECT a.*, rownum AS rnum FROM (
SELECT
	*
FROM
	tblinsa
WHERE
	substr(ssn, 8, 1) = 1
ORDER BY
	(basicpay + sudang) DESC) a)
WHERE rnum = 9;



SELECT
	(
	SELECT
		basicpay + sudang
	FROM
		(
		SELECT
			a.*,
			rownum AS rnum
		FROM
			(
			SELECT
				*
			FROM
				tblinsa
			WHERE
				substr(ssn, 8, 1) = 1
			ORDER BY
				(basicpay + sudang) DESC) a)
	WHERE
		rnum = 3)
 - (
	SELECT
		basicpay + sudang
	FROM
		(
		SELECT
			a.*,
			rownum AS rnum
		FROM
			(
			SELECT
				*
			FROM
				tblinsa
			WHERE
				substr(ssn, 8, 1) = 1
			ORDER BY
				(basicpay + sudang) DESC) a)
	WHERE
		rnum = 9) AS 급여차액
FROM
	dual;





