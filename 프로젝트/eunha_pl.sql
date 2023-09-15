set serveroutput on;

-- 과정번호 입력
-- 교육생 정보 출력
-- (번호) (교육생번호) 교육생이름 전화번호 등록일 수료|중도여부
-- ex) 과정번호 = 2

select * from tblcourse; -- 과정
select * from tblcourselist; -- 수강 과정 목록
select * from tblstudent; -- 교육생

--select studentseq from tblCourseList where courseseq = 2; -- 2번 과정을 듣는 학생 번호

select 
    studentseq as 교육생번호, name as 교육생이름, phone as 전화번호, registerdate as 등록일, compldropstatus as 수료중도탈락여부
from tblstudent 
where processseq = 2;


create or replace procedure procStudentList(
    pCourse number
)
is
    cursor vcursor
    is 
    select 
        studentseq as 교육생번호, name as 교육생이름, phone as 전화번호, registerdate as 등록일, compldropstatus as 수료중도탈락여부
    from tblstudent 
    where processseq = 2;
    vrow (select 
        studentseq as 교육생번호, name as 교육생이름, phone as 전화번호, registerdate as 등록일, compldropstatus as 수료중도탈락여부
    from tblstudent 
    where processseq = 2)%rowtype;
begin
     dbms_output.put_line('교육생번호' || ' ' || '교육생이름' || '     ' || '전화번호' || ' ' || '등록일' || '     ' || '수료중도탈락여부');
     open vcursor;
        loop
            fetch vcursor into vrow;
            exit when vcursor%notfound;
            
            dbms_output.put_line('    ' || vrow.studentseq || ' ' || vrow.name || ' ' || vrow.tel);
            
        end loop;
     close vcursor;
end;



begin
    procStudentList(2);
end;


------------
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