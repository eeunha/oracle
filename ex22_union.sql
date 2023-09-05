-- ex22_union.sql

/*
	관계 대수 연산
	1. 셀렉션 > select where
	2. 프로젝션 > select column
	3. 조인
	4. 합집합(union), 차집합(minus), 교집합(intersect)
	
	유니온, union
	- 스키마가 동일한 결과셋끼리 가능
	
*/

SELECT * FROM tblmen
union
SELECT * FROM tblwomen;

-- 컬럼 이름은 안중요함. 자료형만 중요함.
SELECT name, address, salary FROM tblstaff
union
SELECT name, city, basicpay FROM tblinsa;


-- 어떤 회사 > 부서별 게시판
SELECT * FROM 영업부게시판;
SELECT * FROM 총무부게시판;
SELECT * FROM 개발부게시판;

-- 회장님 > 모든 부서 게시판 글 > 한번에 열람
SELECT * FROM 영업부게시판
UNION 
SELECT * FROM 총무부게시판
UNION 
SELECT * FROM 개발부게시판;


-- 야구선수 > 공격수, 수비수
SELECT * FROM 공격수;
SELECT * FROM 수비수;

SELECT * FROM 공격수
union
SELECT * FROM 수비수;


-- sns > 하나의 테이블 + 다량의 데이터

SELECT * FROM 게시판2020;
SELECT * FROM 게시판2021;
SELECT * FROM 게시판2022;
SELECT * FROM 게시판2023;

SELECT * FROM 게시판2020
union
SELECT * FROM 게시판2021
union
SELECT * FROM 게시판2022
union
SELECT * FROM 게시판2023;


--
CREATE TABLE tblAAA(
	name varchar2(30) NOT NULL
);

CREATE TABLE tblBBB(
	name varchar2(30) NOT NULL
);

INSERT INTO tblAAA values('강아지');
INSERT INTO tblAAA values('고양이');
INSERT INTO tblAAA values('토끼');
INSERT INTO tblAAA values('거북이');
INSERT INTO tblAAA values('병아리');

INSERT INTO tblBBB values('강아지');
INSERT INTO tblBBB values('고양이');
INSERT INTO tblBBB values('호랑이');
INSERT INTO tblBBB values('사자');
INSERT INTO tblBBB values('코끼리');

SELECT * FROM tblAAA;
SELECT * FROM tblBBB;


--union > 수학의 집합 > 중복 제거
SELECT * FROM tblAAA
union
SELECT * FROM tblBBB;

-- union all > 중복값 허용
SELECT * FROM tblAAA
UNION ALL
SELECT * FROM tblBBB;


-- intersect > 교집합
SELECT * FROM tblAAA
intersect
SELECT * FROM tblBBB;


-- minus > 차집합(A - B) > 피연산자 위치 중요
SELECT * FROM tblAAA
minus
SELECT * FROM tblBBB;

SELECT * FROM tblBBB
minus
SELECT * FROM tblAAA;




