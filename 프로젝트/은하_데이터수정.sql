-- 데이터 수정하기
-- tblsubjectgrade
-- subjectgradeseq = 13 -> null
select * from tblsubjectgrade;

-- 원본
INSERT INTO TBLSUBJECTGRADE  VALUES (subject_grade_seq.nextval, 13, 20, 50, 30);

update tblsubjectgrade set attendancegrade = null where subjectgradeseq = 13;
update tblsubjectgrade set writtengrade = null where subjectgradeseq = 13;
update tblsubjectgrade set practicalgrade = null where subjectgradeseq = 13;

select * from tblsubjectgrade where subjectgradeseq = 13;

------------------------------------------------------------------------------------
select * from tblscoretest where subjectlistseq = 13;
--13	13	Y	Y	23/05/15	23/05/29	Y	Y

update tblscoretest set writtentestfilereg = 'N' where subjectlistseq = 13;
update tblscoretest set practicaltestfilereg = 'N' where subjectlistseq = 13;
update tblscoretest set writtentestdate = null where subjectlistseq = 13;
update tblscoretest set practicaltestdate = null where subjectlistseq = 13;

------------------------------------------------------------------------------------
select * from tblscoretest where subjectlistseq = 13;
--13	13	Y	Y	23/05/15	23/05/29	Y	Y

update tblscoretest set writtentestscorereg = 'N' where subjectlistseq = 13;
update tblscoretest set practicaltestscorereg = 'N' where subjectlistseq = 13;

------------------------------------------------------------------------------------
update tblscoreinfo set writingscore = null where studentseq = 66 and subjectlistseq = 13;
update tblscoreinfo set practicalscore = null where studentseq = 66 and subjectlistseq = 13;

-------------------------------------------------------------------------------------------------
select * from tblsubjectgrade where subjectlistseq = 10;
--10	10	20	30	50
update tblsubjectgrade set attendancegrade = null where subjectlistseq = 10;

update tblsubjectgrade set attendancegrade = 20 where subjectlistseq = 10; -- 원본
-----------------------------------------------------------------------------------------
select * from tblscoreinfo where subjectlistseq = 37;
--1009	169	37	16	28	50

update tblscoreinfo set attendancescore = null where scoreseq = 1009;

-------------------------------------
--필기 성적 등록
---- 중도탈락 + 과목종료일보다 먼저 탈락한 경우
select * from tblstudent;

-- 6번학생 중도탈락, 230420, 1번과정
-- 11번학생 중도탈락 230710, 1번과정

select * from tblsubjectlist;



-- 1번과목목록번호, 1번과정, 1번과목, 종료일 230413 + 6번학생 테스트
-- 6번학생 필기 실기 성적 없애기
select * from tblscoreinfo where studentseq = 6;
-- 31	6	1	18	25	50

-- 초기화
update tblscoreinfo set attendancescore = null where scoreseq = 31;
update tblscoreinfo set writingscore = null where scoreseq = 31;
update tblscoreinfo set practicalscore = null where scoreseq = 31;

-- 원본
update tblscoreinfo set attendancescore = 18 where scoreseq = 31;
update tblscoreinfo set writingscore = 25 where scoreseq = 31;
update tblscoreinfo set practicalscore = 50 where scoreseq = 31;



-- 11번학생 중도탈락 230710, 1번과정
-- 4번 과목목록, 1번 과정목록, 26번 과목목록, 과목종료일 230713 , 1번교사



-- 1번과목목록번호, 1번과정, 1번과목, 종료일 230413 + 11번학생 테스트
-- 11번학생 필기 실기 성적 없애기
select * from tblscoreinfo where studentseq = 11;
-- 61	11	1	17	25	48

-- 초기화
update tblscoreinfo set attendancescore = null where scoreseq = 61;
update tblscoreinfo set writingscore = null where scoreseq = 61;
update tblscoreinfo set practicalscore = null where scoreseq = 61;

-- 원본
update tblscoreinfo set attendancescore = 17 where scoreseq = 61;
update tblscoreinfo set writingscore = 25 where scoreseq = 61;
update tblscoreinfo set practicalscore = 48 where scoreseq = 61;



select * from tblsubjectlist;

-- 성적등록여부
select * from tblscoretest where subjectlistseq = 1;
--1	1	Y	Y	23/04/03	23/04/11	Y	Y

-- 필기실기 다 N으로 변경
update tblscoretest set writtentestscorereg = 'N' where subjectlistseq = 1;
update tblscoretest set practicaltestscorereg = 'N' where subjectlistseq = 1;

-- 원본
update tblscoretest set writtentestscorereg = 'Y' where subjectlistseq = 1;
update tblscoretest set practicaltestscorereg = 'Y' where subjectlistseq = 1;




---- 배점의 범위를 벗어난 성적인 경우
-- 배점
select * from tblsubjectgrade where subjectlistseq = 1;
-- 1	1	20	30	50


---- 배점이 없는 경우

-- 1번과목 배점 없애기

select * from tblscoreinfo where subjectlistseq = 1;

update tblsubjectgrade set writtengrade = null where subjectlistseq = 1;
update tblsubjectgrade set practicalgrade = null where subjectlistseq = 1;

update tblsubjectgrade set writtengrade = 30 where subjectlistseq = 1;
update tblsubjectgrade set practicalgrade = 50 where subjectlistseq = 1;

---------------------
select * from tblcourse;

select * from tblstudent where processseq = 1;

-- 중도탈락 아닌 학생의 출결점수 등록하기
-- 학생 1번, 과목목록 1번, 과정 1번, 과목 1번

select * from tblscoreinfo;

-- 출결점수 초기화
update tblscoreinfo set attendancescore = null where scoreseq = 1;

-- 배점 점수 초기화
select * from tblsubjectgrade;

update tblsubjectgrade set attendancegrade = null where subjectgradeseq = 1;

-----------------
procSetSubjectGrade(1, 3, 20, 50, 30); -- 과목 과정 출 필 실

select * from tblsubjectgrade;
select * from tblcourse;

select * from tblsubjectlist; --과목목록 10, 과목 9, 과정 2, 

procSetSubjectGrade(9, 2, 20, 50, 30); -- 올바른 등록

procSetSubjectGrade(9, 2, 10, 50, 40); -- 출결 점수 낮게

-- 초기화
update tblsubjectgrade set attendancegrade = null where subjectgradeseq = 10;
update tblsubjectgrade set writtengrade = null where subjectgradeseq = 10;
update tblsubjectgrade set practicalgrade = null where subjectgradeseq = 10;

--------------------
-- 필기시험날짜
select * from tblscoretest;

select * from tblsubjectlist where subjectlistseq = 6;

select * from tblscoretest where scoretestseq = 6; -- 6, 1, 34 (과목목록, 과정, 과목)
--6	6	Y	N	23/09/15		N	N

update tblscoretest set writtentestfilereg = 'N' where scoretestseq = 6;
update tblscoretest set practicaltestfilereg = 'N' where scoretestseq = 6;
update tblscoretest set writtentestdate = null where scoretestseq = 6;
update tblscoretest set practicaltestdate = null where scoretestseq = 6;
