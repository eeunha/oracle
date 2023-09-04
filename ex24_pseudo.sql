-- ex24_pseudo.sql

/*
	의사 컬럼, Pseudo Column
	- 실제 컬럼이 아닌데 컬럼처럼 행동하는 객체
	
	rownum
	- 행번호
	- 시퀀스 객체 상관X
	- 현재 테이블의 행번호를 가져오는 역할
	- 테이블에 저장된 값이 아니라, select 실행 시 동적으로 계산되어 만들어진다.(***)
	- from절이 실행될 때 각 레코드에 rownum을 할당한다.(*************************)
	- where절이 실행될 때 상황에 따라 rownum이 재계산된다.(****************) > from절에서 만들어진 rownum은 where절이 실행될 때 변경될 수 있다.
	
*/

SELECT 
	name, buseo, 	-- 컬럼(속성) > OUTPUT > 객체(레코드)의 특성에 따라 다른 값을 가진다.
	100,			-- 상수 > OUTPUT > 모든 레코드가 동일한 값을 가진다.
	substr(name, 2),	-- 함수 > INPUT + OUTPUT > 객체의 특성에 따라 다른 값을 가진다.
	rownum			-- 의사컬럼 > OUTPUT
FROM tblinsa;


-- 게시판 > 페이지
-- 1페이지 > rownum between 1 and 20
-- 2페이지 > rownum between 21 and 40
-- 3페이지 > rownum between 41 and 60


SELECT name, buseo, rownum FROM tblinsa WHERE rownum = 1;
SELECT name, buseo, rownum FROM tblinsa WHERE rownum <= 5; -- 범위 추출

-- 안나와.
SELECT name, buseo, rownum FROM tblinsa WHERE rownum = 5;
SELECT name, buseo, rownum FROM tblinsa WHERE rownum > 5 AND rownum <= 10;


SELECT name, buseo, rownum	-- 2. 소비 > 1에서 만든 rownum을 가져온다.(여기서 생성x) 
FROM tblinsa;				-- 1. 생성 > FROM절이 실행되는 순간 모든 레코드에 rownum 할당됨.

SELECT name, buseo, rownum	-- 3. 소비
FROM tblinsa				-- 1. 생성
WHERE rownum = 1;			-- 2. 조건

SELECT name, buseo, rownum	-- 3. 소비
FROM tblinsa				-- 1. 생성
WHERE rownum = 3;			-- 2. 조건

-- 첫 행에 rownum이 3인가 묻는다. > 아니다. > 해당 행은 탈락. 없는 행 취급함. > 그다음 행부터 본다. > rownum = 1 로 초기화된다. (반복) => 값이 안나온다.
-- rownum이 1이 포함되고, 쌓이는 형태가 아니면 사용할 수 없다.


-- 정렬은 됐지만 행번호가 뒤섞였다. select에서 rownum 사용된 뒤에 정렬되었기 때문에 rownum도 그에 따라 섞이게 된다.
SELECT name, buseo, basicpay, rownum	-- 2. 소비
FROM tblinsa							-- 1. rownum 할당
ORDER BY basicpay desc;					-- 3. 정렬


-- ** 내가 원하는 순서대로 정렬 후 > rownum을 할당하는 방법 > 서브쿼리 사용(***)
SELECT name, buseo, basicpay, rownum, rnum -- 여기의 rownum은 가져온 값에 대해 자기만의 rownum을 새로 붙인다. 그래서 정렬되어있다.
FROM (SELECT name, buseo, basicpay, rownum AS rnum -- 여기의 rownum은 뒤섞인 rownum (꼭 별칭 사용하기!)
	FROM tblinsa 
	ORDER BY basicpay desc) WHERE rownum <= 3;						


-- 급여 5~10등까지
-- 원하는 범위 추출(1이 포함X) > rownum 사용 불가능

-- 1. 내가 원하는 순서대로 정렬
-- 2. 1을 서브쿼리로 묶는다. + rownum(rnum)
-- 3. 2를 서브쿼리로 묶는다. + rownum(불필요) + rnum (사용***)
SELECT 
	name, buseo, basicpay, rnum, rownum
FROM (
	SELECT name, buseo, basicpay, rownum AS rnum	-- 2.
	FROM (SELECT name, buseo, basicpay				
			FROM tblinsa 
			ORDER BY basicpay DESC))				-- 1.
WHERE rnum BETWEEN 5 AND 10; -- 별칭을 붙인 rownum은 가져올 수 있다. 안쪽에서 이미 fix된 값이라 밖에서 변경될 수 없다.


-- 페이징 > 나눠서 보기 > 한 번에 20명씩 보기 + 이름순으로 정렬(공식처럼 써)
SELECT * FROM tbladdressbook;	-- 2,000 건

-- 1.
SELECT * FROM tbladdressbook ORDER BY name ASC;

-- 2. 이 때의 rownum이 필요한다.
SELECT a.*, rownum FROM (
	SELECT *
	FROM tbladdressbook 
	ORDER BY name ASC) a;

-- 3. rownum을 조건 사용 > 한 번 더 서브쿼리
SELECT * FROM (SELECT a.*, rownum FROM (
	SELECT *
	FROM tbladdressbook 
	ORDER BY name ASC) a);

SELECT * FROM (SELECT a.*, rownum AS rnum FROM (
	SELECT *
	FROM tbladdressbook 
	ORDER BY name ASC) a)
WHERE rnum BETWEEN 1 AND 20;

SELECT * FROM (SELECT a.*, rownum AS rnum FROM (
	SELECT *
	FROM tbladdressbook 
	ORDER BY name ASC) a)
WHERE rnum BETWEEN 21 AND 40;

SELECT * FROM (SELECT a.*, rownum AS rnum FROM (
	SELECT *
	FROM tbladdressbook 
	ORDER BY name ASC) a)
WHERE rnum BETWEEN 41 AND 60;


-- 가장 바깥쪽 서브쿼리는 뷰로 만들어서 사용할 수 있다.
SELECT * FROM (SELECT a.*, rownum FROM (
	SELECT *
	FROM tbladdressbook 
	ORDER BY name ASC) a);
	
CREATE OR REPLACE VIEW vwAddressBook
AS
SELECT a.*, rownum AS rnum FROM ( -- 별칭 붙이기
	SELECT *
	FROM tbladdressbook 
	ORDER BY name ASC) a;
	
SELECT * FROM vwAddressBook;


SELECT * FROM vwaddressbook
WHERE rnum BETWEEN 1 AND 20;