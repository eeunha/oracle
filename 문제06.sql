--1. traffic_accident. 각 교통 수단 별(지하철, 철도, 항공기, 선박, 자동차) 발생한 총 교통 사고 발생 수, 총 사망자 수, 사건 당 평균 사망자 수를 가져오시오.
SELECT * FROM traffic_accident;

SELECT
	trans_type AS 교통수단,
	sum(total_acct_num) AS "총 교통사고 발생 수",
	sum(death_person_num) AS "총 사망자 수",
	round(avg(death_person_num)) AS "평균 사망자 수"
FROM
	traffic_accident
GROUP BY
	trans_type;        
        

--2. tblZoo. 종류(family)별 평균 다리의 갯수를 가져오시오.
SELECT * FROM tblzoo;

SELECT
	family, 
	round(avg(leg)) AS "평균 다리 개수"
FROM
	tblzoo	
GROUP BY
	family;
    
    

--몰루
--3. tblZoo. 체온이 변온인 종류 중 아가미 호흡과 폐 호흡을 하는 종들의 갯수를 가져오시오.
SELECT * FROM tblzoo;

SELECT
	family,
	breath,
	count(*) AS 개수
FROM
	tblzoo
WHERE
	thermo = 'variable'
GROUP BY family, breath;

SELECT
	family,
	count(*) AS 개수
FROM
	tblzoo
WHERE
	thermo = 'variable'
GROUP BY family;
HAVING breath IN ('gill', 'lung');


--4. tblZoo. 사이즈와 종류별로 그룹을 나누고 각 그룹의 갯수를 가져오시오.
SELECT * FROM tblzoo;
        
SELECT
	sizeof,
	family,
	count(*)
FROM
	tblzoo
GROUP BY sizeof, family
ORDER BY 1;
        


        
        
--12. tblAddressBook. 관리자의 실수로 몇몇 사람들의 이메일 주소가 중복되었다. 중복된 이메일 주소만 가져오시오.
SELECT * FROM tbladdressbook;
    
SELECT
	email
FROM
	tbladdressbook
GROUP BY email
HAVING count(*) >= 2;

            

--15. tblAddressBook. 성씨별 인원수가 100명 이상 되는 성씨들을 가져오시오.
SELECT * FROM tbladdressbook;

SELECT
	substr(name, 1, 1),
	count(*)
FROM
	tbladdressbook
GROUP BY
	substr(name, 1, 1)
HAVING
	count(*) >= 100;



            
            
--17. tblAddressBook. 이메일이 스네이크 명명법으로 만들어진 사람들 중에서 여자이며, 20대이며, 키가 150~160cm 사이며, 고향이 서울 또는 인천인 사람들만 가져오시오.
SELECT * FROM tbladdressbook;

SELECT
	*
FROM
	tbladdressbook
WHERE
	instr(email, '_') > 0 AND gender = 'f' AND (age between 20 AND 30) AND (height between 150 AND 160) AND hometown IN ('서울', '인천');


-- 몰루
--20. tblAddressBook. '건물주'와 '건물주자제분'들의 거주지가 서울과 지방의 비율이 어떻게 되느냐?
SELECT * FROM tbladdressbook;

SELECT
	substr(address, 1, 2),
	count(CASE
		WHEN substr(address, 1, 2) = '서울' THEN 1
	END) AS 서울, 
	count(CASE
		WHEN NOT substr(address, 1, 2) = '서울' THEN 1
	END) AS 지방
FROM
	tbladdressbook
WHERE
	job IN ('건물주', '건물주자제분')
GROUP BY CUBE(substr(address, 1, 2));




