set serveroutput on;

-- 강의 스케줄 조회
-- 과목번호 과정번호 과정명 과정시작일 과정종료일 강의실 과목명 과목시작일 과목종료일 교재명 교육생등록인원 강의진행여부
-- ex) 교사번호 = 3

-- ansi
select 
    sl.subseq as 과목번호, sl.courseseq as 과정번호, c.coursename as 과정명, c.coursestartdate as 과정시작일, c.coursefinishdate as 과정종료일, 
    c.classroomname as 강의실, s.subname as 과목명, sl.subjectstartdate as 과목시작일, sl.subjectfinishdate as 과목종료일,
    b.bookname as 교재명, c.studentnumber as 교육생등록인원,
    case
        when sl.subjectstartdate > sysdate and sl.subjectfinishdate > sysdate then '강의예정'
        when sl.subjectstartdate < sysdate and sl.subjectfinishdate > sysdate then '강의중'
        when sl.subjectfinishdate < sysdate then '강의종료'
    end as 강의진행여부
from tblSchedule sch
    inner join tblSubjectList sl
        on sch.subjectlistseq = sl.subjectlistseq
            inner join tblCourse c
                on sl.courseseq = c.courseseq
                    inner join tblBook b
                        on sl.bookseq = b.bookseq
                            inner join tblSubject s
                                on sl.subseq = s.subseq
where sch.teacherseq = 3
order by sl.subseq;

-- pl/sql
create or replace procedure procPrintTeacherSchedule(
    pTeacherNum number
)
is
    cursor vcursor
    is
    select 
        sl.subseq as 과목번호, sl.courseseq as 과정번호, c.coursename as 과정명, c.coursestartdate as 과정시작일, c.coursefinishdate as 과정종료일, 
        c.classroomname as 강의실, s.subname as 과목명, sl.subjectstartdate as 과목시작일, sl.subjectfinishdate as 과목종료일,
        b.bookname as 교재명, c.studentnumber as 교육생등록인원,
        case
            when sl.subjectstartdate > sysdate and sl.subjectfinishdate > sysdate then '강의예정'
            when sl.subjectstartdate < sysdate and sl.subjectfinishdate > sysdate then '강의중'
            when sl.subjectfinishdate < sysdate then '강의종료'
        end as 강의진행여부
    from tblSchedule sch
        inner join tblSubjectList sl
            on sch.subjectlistseq = sl.subjectlistseq
                inner join tblCourse c
                    on sl.courseseq = c.courseseq
                        inner join tblBook b
                            on sl.bookseq = b.bookseq
                                inner join tblSubject s
                                    on sl.subseq = s.subseq
    where sch.teacherseq = 3
    order by sl.subseq;
    
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
    vstudentnumber tblCourse.studentnumber%type;
    vprogress varchar2(30);
begin
    open vcursor;
        loop
            fetch vcursor into vsubseq, vcourseseq, vcoursename, vcoursestartdate, vcoursefinishdate, vclassroomname, vsubname, vsubjectstartdate, vsubjectfinishdate, vbookname, vstudentnumber, vprogress;
            exit when vcursor%notfound;
            dbms_output.put_line('과목번호: ' || vsubseq || '  ' || '과정번호: ' || vcourseseq || '  ' || '과정명: ' || vcoursename ||'  ' || '과정시작일: ' || vcoursestartdate || '  ' || '과정종료일: ' || vcoursefinishdate || '  ' || '강의실: ' || vclassroomname || '  ' || '과목명: ' || vsubname || '  ' || '과목시작일: ' || vsubjectstartdate || '  ' || '과목종료일: ' || vsubjectfinishdate || '  ' || '교재명: ' || vbookname || '  ' || '교육생등록인원: ' || vstudentnumber || '  ' || '강의진행여부: ' || vprogress);
--            dbms_output.put_line(vsubseq);
        end loop;
    close vcursor;
exception
    when others then
        dbms_output.put_line('예외 처리');
end;


begin
    procprintteacherschedule(1);
end;


-- 강의예정


-- 강의중


-- 강의종료


-- 과정번호 입력
-- 교육생 정보 출력
-- (번호) (교육생번호) 교육생이름 전화번호 등록일 수료|중도여부
-- ex) 과정번호 = 2
select * from tblstudent;

create or replace procedure procStudentList(
    pCourse number
)
is
    cursor vcursor
    is 
    select 
        studentseq as 교육생번호, name as 교육생이름, phone as 전화번호, registerdate as 등록일, compldropstatus as 수료중도탈락여부 -- stdentseq, name, phone, registerdate, compldropstatus
    from tblstudent 
    where processseq = 2;
    
    vstdseq tblstudent.studentseq%type;
    vstdname tblstudent.name%type;
    vstdphone tblstudent.phone%type;
    vstdreg tblstudent.registerdate%type;
    vstdcom tblstudent.compldropstatus%type;
begin
     dbms_output.put_line('교육생이름');
     open vcursor;
        loop
            fetch vcursor into vstdseq, vstdname, vstdphone, vstdreg, vstdcom;
            exit when vcursor%notfound;
            
            dbms_output.put_line('    ' || vstdname); -- 위의 변수 그대로 더 사용하면 출력됨.
            
        end loop;
     close vcursor;
end;



begin
    procStudentList(2);
end;




-- 교사 조회하기
create or replace procedure procTeacherList
is
    cursor vcursor
    is
    select * from tblTeacher;
    vrow tblTeacher%rowtype;
begin
    dbms_output.put_line('교사번호' || ' ' || '이름' || '     ' || '전화번호');
    open vcursor;
        loop
            fetch vcursor into vrow;
            exit when vcursor%notfound;
            
            dbms_output.put_line('    ' || vrow.teacherseq || ' ' || vrow.name || ' ' || vrow.tel);
            
        end loop;
    close vcursor;
end;

set serveroutput on;

begin
    procTeacherList;
end;

select * from tblTeacher;


declare
    cursor vcursor
    is
    select * from tblInsa;
    vrow tblInsa%rowtype;
begin
    open vcursor;
        loop
            fetch vcursor into vrow;
            exit when vcursor%notfound;
            
            dbms_output.put_line(vrow.name);
            
        end loop;
    close vcursor;
end;




create or replace procedure procBuseo (
    pbuseo in varchar2,
    pcursor out sys_refcursor --커서의 자료형 
)
is
    -- cursor vcursor is select..   > 내부 소비 시 이렇게 사용
begin
    open pcursor
    for 
    select * from tblInsa where buseo = pbuseo;
end procBuseo;


declare
    vcursor sys_refcursor; -- 커서 참조변수
    vrow tblInsa%rowtype;
begin
    procBuseo('영업부', vcursor);
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        
        -- 업무
        dbms_output.put_line(vrow.name);
    end loop;
end;