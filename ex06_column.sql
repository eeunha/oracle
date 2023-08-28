--ex06_column.sql

-- 컬럼 리스트에서 할 수 있는 행동
-- select 컬럼 리스트

-- 컬럼 명시
SELECT * FROM TBLINSA ;

SELECT name, ssn FROM TBLINSA ;

-- 연산
SELECT NAME || '님', BASICPAY * 2 FROM TBLINSA ;

-- 상수
SELECT 100, '홍길동' FROM TBLINSA ;

/*
	Java Stream > list.stream().distinct().forEach() -> 중복 제거
	
	distinct
	- 컬럼 리스트에서 사용
	- 중복값 제거
	- distinct 컬럼명
	
	
	
	
*/

SELECT CONTINENT FROM TBLCOUNTRY ;
SELECT DISTINCT CONTINENT FROM TBLCOUNTRY ;

-- tblInsa. > 수많은 부서 > 어떤 부서가 있습니까? > 중복값 제거
SELECT DISTINCT BUSEO FROM TBLINSA ;

SELECT DISTINCT JIKWI FROM TBLINSA ;

SELECT DISTINCT NAME FROM TBLINSA ;


SELECT DISTINCT BUSEO, NAME FROM TBLINSA ; -- DISTINCT 해당 문장 전부 적용. 두개가 동시에 똑같아야지만 중복제거를 하겠다.


SELECT DISTINCT BUSEO, JIKWI FROM TBLINSA ;



/*
	case
	- 대부분의 절에서 사용 가능
	- 조건문 역할
	- 조건을 만족하지 못하면 null을 반환(*********************)
	

*/

SELECT
	LAST || FIRST AS name,
	CASE 
		-- when 조건 then 값
		WHEN gender = 'm' THEN '남자' 		
		WHEN gender = 'f' THEN '여자' 		
	END AS GENDER 
FROM
	TBLCOMEDIAN ;


SELECT
	NAME,
	CONTINENT,
	CASE 	
		WHEN CONTINENT = 'AS' THEN '아시아'
		WHEN CONTINENT = 'EU' THEN '유럽'
		WHEN CONTINENT = 'AF' THEN '아프리카'
		--ELSE '기타'
		--ELSE CONTINENT
		--ELSE 100 --자료형이 같아야 함.  SQL Error [932] [42000]: ORA-00932: inconsistent datatypes: expected CHAR got NUMBER
		ELSE CAPITAL --데이터의 성질도 같아야 함.
	END AS continentName
FROM
	TBLCOUNTRY ;


SELECT
	LAST || FIRST AS name,
	weight,
	CASE 
		WHEN weight >= 50 AND WEIGHT <= 90 THEN '정상체중'
		ELSE '주의체중'
	END AS state
FROM
	TBLCOMEDIAN ;



SELECT
	LAST || FIRST AS name,
	weight,
	CASE 
		WHEN weight between 50 AND 90 THEN '정상체중'
		ELSE '주의체중'
	END AS state
FROM
	TBLCOMEDIAN ;


SELECT
	name,
	JIKWI,
	CASE
		WHEN JIKWI = '과장' OR JIKWI = '부장' THEN '관리직'
		ELSE '생산직'
	END,
	CASE 
		WHEN JIKWI IN ('과장', '부장') THEN '관리직'
		ELSE '생산직'
	END
FROM
	TBLINSA ;


SELECT
	NAME, SUDANG,
	CASE 
		WHEN name LIKE '홍%' THEN 50000
		ELSE 0
	END + SUDANG 
FROM
	TBLINSA ;


SELECT
	TITLE,
	CASE 
		WHEN COMPLETEDATE IS NULL THEN '미완료'
		WHEN COMPLETEDATE IS NOT NULL THEN '완료'
		--ELSE '완료'
	END AS state
FROM
	TBLTODO ; 
	





