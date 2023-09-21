-- 2. 배점 입출력
-- 2.1. 강의를 마친 과목 목록 출력하기

-- 교사번호에 맞는 강의완료 테이블 가져오기
create or replace procedure procGetTFinishedSubject(
    pnum in number,
    pcursor out SYS_REFCURSOR
)
is
begin
    open pcursor
    for
    select 
        sl.subseq as 과목번호, sl.courseseq as 과정번호, c.coursename as 과정명, c.coursestartdate as 과정시작일, c.coursefinishdate as 과정종료일, 
        c.classroomname as 강의실, s.subname as 과목명, sl.subjectstartdate as 과목시작일, sl.subjectfinishdate as 과목종료일,
        b.bookname as 교재명,
        sg.attendancegrade as 출결배점, sg.writtengrade as 필기배점, sg.practicalgrade as 실기배점,
        sct.writtentestdate as 필기시험날짜, sct.practicaltestdate as 실기시험날짜, sct.writtentestfilereg as 필기시험등록여부, sct.practicaltestfilereg as 실기시험등록여부
    from tblSchedule sch
        inner join tblSubjectList sl
            on sch.subjectlistseq = sl.subjectlistseq
                inner join tblCourse c
                    on sl.courseseq = c.courseseq
                        inner join tblBook b
                            on sl.bookseq = b.bookseq
                                inner join tblSubject s
                                    on sl.subseq = s.subseq
                                        inner join tblsubjectgrade sg
                                            on sl.subjectlistseq = sg.subjectlistseq
                                                inner join tblscoretest sct
                                                    on sct.subjectlistseq = sl.subjectlistseq
    where sch.teacherseq = pnum and sl.subjectfinishdate < sysdate
    order by sl.subjectstartdate;
exception
    when others then
        dbms_output.put_line('예외 처리');
end procGetTFinishedSubject;


create or replace procedure procPrintTFinishedSubject(
    pnum number
)
is
    vcursor sys_refcursor;
    vsubseq tblSubjectList.subseq%type;
    vcourseseq tblSubjectList.courseseq%type;
    vcoursename tblCourse.coursename%type;
    vcoursestartdate tblCourse.coursestartdate%type;
    vcoursefinishdate tblCourse.coursefinishdate%type;
    vclassroomname tblCourse.classroomname%type;
    vsubname tblSubject.subname%type;
    vsubjectstartdate tblSubjectList.subjectstartdate%type;
    vsubjectfinishdate tblSubjectList.subjectfinishdate%type;
    vbookname tblBook.bookname%type;
    vattgrade tblSubjectGrade.attendancegrade%type;
    vwgrade tblSubjectGrade.writtengrade%type;
    vpgrade tblSubjectGrade.practicalgrade%type;
    vwrittentestdate tblScoreTest.writtentestdate%type;
    vpracticaltestdate tblScoreTest.practicaltestdate%type;
    vwrittenfilereg tblScoreTest.writtentestfilereg%type;
    vpracticalfilereg tblScoreTest.practicaltestfilereg%type;
    vteachername tblTeacher.name%type;
begin
    -- 해당 교사번호, 교사명 출력
    procGetTeacherName(pnum, vteachername);
    dbms_output.put_line('교사번호: ' || pnum || '  교사명:  ' || vteachername); 
    
    dbms_output.put_line('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
    
    -- 해당 교사 스케줄 가져오기
    procGetTFinishedSubject(pnum, vcursor);
    
    loop
        fetch vcursor into vsubseq, vcourseseq, vcoursename, vcoursestartdate, vcoursefinishdate, vclassroomname, vsubname, vsubjectstartdate, vsubjectfinishdate, vbookname, vattgrade, vwgrade, vpgrade, vwrittentestdate, vpracticaltestdate, vwrittenfilereg, vpracticalfilereg;
        exit when vcursor%notfound;
            dbms_output.put_line('과목번호: ' || vsubseq || '   과정번호: ' || vcourseseq || '   과정명: ' || vcoursename ||'   과정시작일: ' || vcoursestartdate || '   과정종료일: ' || vcoursefinishdate || '   강의실: ' || vclassroomname || '   과목명: ' || vsubname || '   과목시작일: ' || vsubjectstartdate || '   과목종료일: ' || vsubjectfinishdate || '   교재명: ' || vbookname || '   출결배점: ' || vattgrade || '   필기배점: ' || vwgrade || '   실기배점: ' || vpgrade || '   필기시험날짜: ' || vwrittentestdate || '   실기시험날짜: ' || vpracticaltestdate || '   필기시험문제등록여부: ' || vwrittenfilereg || '   실기시험문제등록여부: ' || vpracticalfilereg);
    end loop;
exception
    when others then
        dbms_output.put_line('예외 처리');
end;

-- 최종 실행
begin 
    procPrintTFinishedSubject(3);
end;

--------------------------------------------------------------------



-- 강의를 마친 과목 목록 출력하기
create or replace procedure procPrintTFinishedSubject(
    pnum number
)
is
    vcursor sys_refcursor;
    vsubseq tblSubjectList.subseq%type;
    vcourseseq tblSubjectList.courseseq%type;
    vcoursename tblCourse.coursename%type;
    vcoursestartdate tblCourse.coursestartdate%type;
    vcoursefinishdate tblCourse.coursefinishdate%type;
    vclassroomname tblCourse.classroomname%type;
    vsubname tblSubject.subname%type;
    vsubjectstartdate tblSubjectList.subjectstartdate%type;
    vsubjectfinishdate tblSubjectList.subjectfinishdate%type;
    vbookname tblBook.bookname%type;
    vattgrade tblSubjectGrade.attendancegrade%type;
    vwgrade tblSubjectGrade.writtengrade%type;
    vpgrade tblSubjectGrade.practicalgrade%type;
    vteachername tblTeacher.name%type;
begin
    -- 해당 교사번호, 교사명 출력
    procGetTeacherName(pnum, vteachername);
    dbms_output.put_line('교사번호: ' || pnum || '  교사명:  ' || vteachername); 
    
    dbms_output.put_line('----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
    
    -- 해당 교사 스케줄 가져오기
    procGetTFinishedSubject(pnum, vcursor);
    
    loop
        fetch vcursor into vsubseq, vcourseseq, vcoursename, vcoursestartdate, vcoursefinishdate, vclassroomname, vsubname, vsubjectstartdate, vsubjectfinishdate, vbookname, vattgrade, vwgrade, vpgrade;
        exit when vcursor%notfound;
            dbms_output.put_line('과목번호: ' || vsubseq || '   과정번호: ' || vcourseseq || '   과정명: ' || vcoursename ||'   과정시작일: ' || vcoursestartdate || '   과정종료일: ' || vcoursefinishdate || '   강의실: ' || vclassroomname || '   과목명: ' || vsubname || '   과목시작일: ' || vsubjectstartdate || '   과목종료일: ' || vsubjectfinishdate || '   교재명: ' || vbookname || '   출결배점: ' || vattgrade || '   필기배점: ' || vwgrade || '   실기배점: ' || vpgrade);
    end loop;
exception
    when others then
        dbms_output.put_line('예외 처리');
end;

-- 최종 실행
begin 
    procPrintTFinishedSubject(3);
end;