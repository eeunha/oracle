-- ex28_with.sql

/*
	[WITH <Sub Query>]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expression [ASC|DESC]]
    
    
    from 절 서브쿼리 > 이름 없는 테이블 > 1회용 테이블
    from 테이블 > 이름 있는 테이블 > N회용 테이블
    
    with 절
    - 인라인뷰(from 절 서브쿼리)에 이름을 붙이는 기술
    
    with 임시테이블명 as (서브 쿼리)
    select 문
    
    
*/

SELECT * FROM (SELECT name, buseo, jikwi FROM tblinsa WHERE city = '서울');

WITH seoul AS (SELECT name, buseo, jikwi FROM tblinsa WHERE city = '서울')
SELECT * FROM seoul; -- 미리 위로 올려서 이름을 지어둔 것. 가독성 향상


SELECT * FROM (SELECT name, age, couple FROM tblmen WHERE weight < 90) a
	INNER JOIN (SELECT name, age, couple FROM tblwomen WHERE weight > 60) b
		ON a.couple = b.name;

WITH a as(SELECT name, age, couple FROM tblmen WHERE weight < 90),
	b AS ((SELECT name, age, couple FROM tblwomen WHERE weight > 60))
SELECT * FROM a INNER JOIN b ON a.couple = b.name;







