-- ex04_operator.sql

/*
    연산자, Operator
    
    1. 산술 연산자
    - +, -, *, /
    - %(없음) > 함수로 제공(mod())
    
    2. 문자열 연산자(concat)
    - +(X) > ||(O)

	3. 비교 연산자
	- >, >=, <, <=
	- =(==), <>(!=)
	- 논리값 반환 > SQL에는 boolean이 없다 > 명시적으로 표현 불가능 > 조건이 필요한 상황에서 내부적으로 사용
	- 컬럼 리스트에서 사용 불가
	- 조건절에서 사용
	
	4. 논리 연산자
	- and(&&), or(||), not(!) (영어로 작성)
	- 논리값 반환
	- 컬럼 리스트에서 사용 불가
	- 조건절에서 사용
	
	5. 대입 연산자
	- =
	- 컬럼 = 값
	- update 문
	
	6. 3항 연산자
	- 없음
	- 제어문 없음
	
	7. 증감 연산자
	- 없음
	
	8. SQL 연산자
	- 자바 연산자 > instanceof, typeof 등...
	- in, between, like, is 등...(00절, 00구..)
	
	
*/

select 
    population,
    area,
    population + area,
    population - area,
    population * area,
    population / area
from 
    tblCountry;


-- ORA-01722: invalid number
SELECT name, couple, name + couple FROM tblMen; 
SELECT name, couple, name || couple FROM tblMen;

-- ORA-00923: FROM keyword not found where expected
SELECT height, weight, height > weight FROM tblMen;

SELECT height, weight FROM tblMen WHERE height > weight;


SELECT name, age FROM tblMen; -- 이전 나이(한국식)

-- 컬럼의 별칭(Alias)
-- : 되도록 가공된 컬럼에 적용
-- : 함수 결과에 적용
-- : *** 컬럼명이 식별자로 적합하지 않을 때 사용 > 적합한 식별자로 수정
-- : 식별자로 사용 불가능 상황 > 억지로 적용할 때
SELECT 
	name, 
	age, 
	age - 1 AS 나이, 
	length(name), 
	couple AS "여자 친구", -- 쌍따옴표 쓰면 가능하긴 하나 띄어쓰기 비추
	name "select" -- 쌍따옴표 쓰면 가능하긴 하나 예약어 쓰지 말자
FROM tblMen; -- 컬럼명(***) 가공값은 표현식 자체가 컬럼명이 된다. -> 이름 바꾸자 as 사용


-- 테이블 별칭(Alias)
-- : 편하게... + 가독성 향상
SELECT * FROM tblMen AS t; -- ORA-00933: SQL command not properly ended
SELECT * FROM tblMen t;

SELECT hr.tblMen.name, hr.tblMen.age, hr.tblMen.height, hr.tblMen.weight, hr.tblMen.couple FROM hr.tblMen;

SELECT tblMen.name, tblMen.age, tblMen.height, tblMen.weight, tblMen.couple FROM tblMen;

SELECT tblMen.name, tblMen.age, tblMen.height, tblMen.weight, tblMen.couple FROM tblMen m; -- 한글자로 작성

-- 각 절의 실행 순서
-- 2. select 절
-- 1. from 절

SELECT 
	m.name, m.age, m.height, m.weight, m.couple 
FROM 
	tblMen m;

SELECT name, age, height, weight, couple FROM tblMen;






