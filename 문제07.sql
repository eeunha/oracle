--16. tblAddressBook. 남자 평균 나이보다 나이가 많은 서울 태생 + 직업을 가지고 있는 사람들을 가져오시오.
SELECT * FROM tbladdressbook;

SELECT 
	*
FROM
	tbladdressbook
WHERE
	age > (
		SELECT
			round(avg(age))
		FROM
			tbladdressbook
		WHERE
			gender = 'm'
	)
	AND hometown = '서울'
	AND job IS NOT NULL;


SELECT 
	* 
FROM tbladdressbook 
WHERE age > (SELECT round(avg(age)) FROM tbladdressbook WHERE gender = 'm') 
	AND hometown = '서울' 
	AND job IS NOT null;


--? -> city 없음.
-- employees. 'Munich' 도시에 위치한 부서에 소속된 직원들 명단?
SELECT * FROM employees;

SELECT
	*
FROM employees
WHERE department_id = ();

-- tblMan. tblWoman. 서로 짝이 있는 사람 중 남자와 여자의 정보를 모두 가져오시오.
--    [남자]        [남자키]   [남자몸무게]     [여자]    [여자키]   [여자몸무게]
--    홍길동         180       70              장도연     177        65
--    아무개         175       null            이세영     163        null
--    ..
SELECT * FROM tblmen;
SELECT * FROM tblwomen;

SELECT 
	m.name AS 남자,
	m.height AS 남자키,
	m.weight AS 남자몸무게,
	w.name AS 여자,
	w.height AS 여자키,
	w.weight AS 여자몸무게
FROM tblmen m
	INNER JOIN tblwomen w
		ON m.couple = w.name;
    
    

-- tblAddressBook. 가장 많은 사람들이 가지고 있는 직업은 주로 어느 지역 태생(hometown)인가?
SELECT * FROM tbladdressbook;


SELECT 
	job, count(*) AS 수
FROM tbladdressbook 
GROUP BY job;

SELECT 
	count(*) AS 수
FROM tbladdressbook 
GROUP BY job;

SELECT
	job
FROM (SELECT 
		job, count(*) AS c
	FROM tbladdressbook 
	GROUP BY job)
WHERE c = max(c);
	

--답
SELECT
	DISTINCT hometown
FROM tbladdressbook
WHERE job = (
	SELECT job 
	FROM tbladdressbook 
	GROUP BY job 
	HAVING count(*) = (
		SELECT max(count(*)) 
		FROM tbladdressbook 
		GROUP BY job))
ORDER BY hometown ASC;



-- tblAddressBook. 이메일 도메인들 중 평균 아이디 길이가 가장 긴 이메일 사이트의 도메인은 무엇인가?
SELECT 
	* 
FROM tbladdressbook;

SELECT 
	email,
	length(email),
	avg(length(email))
FROM tbladdressbook;   

SELECT 
	* 
FROM tbladdressbook
GROUP BY ;

-- tblAddressBook. 평균 나이가 가장 많은 출신(hometown)들이 가지고 있는 직업 중 가장 많은 직업은?






-- tblAddressBook. 남자 평균 나이보다 나이가 많은 서울 태생 + 직업을 가지고 있는 사람들을 가져오시오.






-- tblAddressBook. 가장 나이가 많으면서 가장 몸무게가 많이 나가는 사람과 같은 직업을 가지는 사람들을 가져오시오.



-- tblAddressBook.  동명이인이 여러명 있습니다. 이 중 가장 인원수가 많은 동명이인(모든 이도윤)의 명단을 가져오시오.




-- tblAddressBook. 가장 사람이 많은 직업의(332명) 세대별 비율을 구하시오.
--    [10대]       [20대]       [30대]       [40대]
--    8.7%        30.7%        28.3%        32.2%























