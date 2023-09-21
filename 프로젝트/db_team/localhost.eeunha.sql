-- 필기
create or replace procedure procSetStdWrtScore(
    pstdseq number,
    psubseq number,
    pcourseseq number,
    pscore number
)
is
    vsublistseq number;
    vscore tblscoreinfo.writingscore%type;
    vstatus tblstudent.compldropstatus%type;
    vdropdate tblstudent.compldropdate%type;
    vsubfdate tblsubjectlist.subjectfinishdate%type;
    vwrtgrade tblsubjectgrade.writtengrade%type;
begin
    -- 과목목록번호 가져오기
    procGetSubjectListNum(psubseq, pcourseseq, vsublistseq);

    -- 필기성적 가져오기
    procGetStdWrtScore(pstdseq, vsublistseq, vscore);
    
    if vscore is null then
        -- 중도탈락여부 가져오기
        procGetStdDropStatus(pstdseq, vstatus);
        dbms_output.put_line('중도탈락여부: ' || vstatus);
        
        -- 중도탈락일 가져오기
        procGetStdDropDate(pstdseq, vdropdate);
        dbms_output.put_line('중도탈락일: ' || vdropdate);
        
        -- 과목종료일 가져오기
        procGetSubFDate(vsublistseq, vsubfdate);
        dbms_output.put_line('과목종료일: ' || vsubfdate);
        
        if vstatus = '중도탈락' and vdropdate < vsubfdate then -- 중도탈락 + 과목보다 일찍 탈락
            dbms_output.put_line('과목을 다 듣기 전에 탈락하였습니다. 성적을 등록할 수 없습니다. 등록을 종료합니다.');

        else -- 성적 입력 가능
        
            -- 필기배점 가져오기
            procGetWrtGrade(vsublistseq, vwrtgrade);
            dbms_output.put_line('필기배점: ' || vwrtgrade);
            
            if vwrtgrade is not null then -- 배점이 있는 경우
                -- 배점과 입력할 성적 비교
                
                -- 최대 점수가 각 시험의 배점까지이다.
                if pscore < 0 or pscore > vwrtgrade then -- 부적절한 범위
                    dbms_output.put_line('유효하지 않은 입력입니다. 입력을 종료합니다.');
                else -- 필기 성적 입력
                    update tblscoreinfo set writingscore = pscore where studentseq = pstdseq and subjectlistseq = vsublistseq;
                    commit;
                    
                    dbms_output.put_line('필기 성적 등록을 완료했습니다.');
                end if;
                
            else -- 필기배점이 없는 경우
                dbms_output.put_line('과목에 등록된 필기배점이 없습니다. 배점을 먼저 등록해주세요. 등록을 종료합니다.');
                
            end if;
            
        end if;
        
    else -- 성적이 이미 존재
        dbms_output.put_line('성적이 이미 존재합니다. 등록을 종료합니다.');
    end if;
exception
    when NO_DATA_FOUND then
        dbms_output.put_line('데이터 없음');  
        
    when others then
        dbms_output.put_line('예외 처리');
end procSetStdWrtScore;

-- 실행
begin
    procSetStdWrtScore(66, 1, 3, 50);
end;

-- 확인
select * from tblscoreinfo where studentseq = 66;

select * from tblstudent where studentseq = 66;


------
select * from tblsubjectlist;



-------------------------------------------
-- 실기
create or replace procedure procSetStdPrctScore(
    pstdseq number,
    psubseq number,
    pcourseseq number,
    pscore number
)
is
    vsublistseq number;
    vscore tblscoreinfo.practicalscore%type;
    vstatus tblstudent.compldropstatus%type;
    vdropdate tblstudent.compldropdate%type;
    vsubfdate tblsubjectlist.subjectfinishdate%type;
    vprctgrade tblsubjectgrade.practicalgrade%type;
begin
    -- 과목목록번호 가져오기
    procGetSubjectListNum(psubseq, pcourseseq, vsublistseq);

    -- 실기성적 가져오기
    procGetStdPrctScore(pstdseq, vsublistseq, vscore);
    
    if vscore is null then
        -- 중도탈락여부 가져오기
        procGetStdDropStatus(pstdseq, vstatus);
        dbms_output.put_line('중도탈락여부: ' || vstatus);
        
        -- 중도탈락일 가져오기
        procGetStdDropDate(pstdseq, vdropdate);
        dbms_output.put_line('중도탈락일: ' || vdropdate);
        
        -- 과목종료일 가져오기
        procGetSubFDate(vsublistseq, vsubfdate);
        dbms_output.put_line('과목종료일: ' || vsubfdate);
        
        if vstatus = '중도탈락' and vdropdate < vsubfdate then -- 중도탈락 + 과목보다 일찍 탈락
            dbms_output.put_line('과목을 다 듣기 전에 탈락하였습니다. 성적을 등록할 수 없습니다. 등록을 종료합니다.');

        else -- 성적 입력 가능
        
            -- 실기배점 가져오기
            procGetPrctGrade(vsublistseq, vprctgrade);
            dbms_output.put_line('실기배점: ' || vprctgrade);
            
            if vprctgrade is not null then -- 배점이 있는 경우
                -- 배점과 입력할 성적 비교
                
                -- 최대 점수가 각 시험의 배점까지이다.
                if pscore < 0 or pscore > vprctgrade then -- 부적절한 범위
                    dbms_output.put_line('유효하지 않은 입력입니다. 입력을 종료합니다.');
                else -- 실기 성적 입력
                    update tblscoreinfo set practicalscore = pscore where studentseq = pstdseq and subjectlistseq = vsublistseq;
                    commit;
                    
                    dbms_output.put_line('실기 성적 등록을 완료했습니다.');
                end if;
                
            else -- 실기배점이 없는 경우
                dbms_output.put_line('과목에 등록된 실기배점이 없습니다. 배점을 먼저 등록해주세요. 등록을 종료합니다.');
                
            end if;
            
        end if;
        
    else -- 성적이 이미 존재
        dbms_output.put_line('성적이 이미 존재합니다. 등록을 종료합니다.');
    end if;
exception
    when NO_DATA_FOUND then
        dbms_output.put_line('데이터 없음');  
        
    when others then
        dbms_output.put_line('예외 처리');
end procSetStdPrctScore;

-- 실행
begin
    procSetStdPrctScore(66, 1, 3, 50);
end;




-------------------------------------------
-- 과정종료일 가져오기
create or replace procedure procGetCourseFdate(
    pcourseseq number,
    pdate out date
)
is
begin
    select coursefinishdate into pdate from tblcourse where courseseq = pcourseseq;
exception
    when NO_DATA_FOUND then
        dbms_output.put_line('데이터 없음');  
        
    when others then
        dbms_output.put_line('예외 처리');
end procGetCourseFdate;

--
--declare
--    vresult date;
--begin
--    procGetCourseFdate(3, vresult);
--    dbms_output.put_line(vresult);
--end;


-- 출결
create or replace procedure procSetStdAttScore(
    pstdseq number,
    psubseq number,
    pcourseseq number,
    pscore number
)
is
    vsublistseq number;
    vscore tblscoreinfo.attendancescore%type;
    vstatus tblstudent.compldropstatus%type;
    vdropdate tblstudent.compldropdate%type;
    vcoursefdate tblcourse.coursefinishdate%type;
    vattgrade tblsubjectgrade.attendancegrade%type;
begin
    -- 과목목록번호 가져오기
    procGetSubjectListNum(psubseq, pcourseseq, vsublistseq);

    -- 출결성적 가져오기
    procGetStdAttScore(pstdseq, vsublistseq, vscore);
    
    if vscore is null then
        -- 중도탈락여부 가져오기
        procGetStdDropStatus(pstdseq, vstatus);
        dbms_output.put_line('중도탈락여부: ' || vstatus);
        
        -- 중도탈락일 가져오기
        procGetStdDropDate(pstdseq, vdropdate);
        dbms_output.put_line('중도탈락일: ' || vdropdate);
        
        -- 과정종료일 가져오기
        procGetCourseFdate(pcourseseq, vcoursefdate);
        dbms_output.put_line('과정종료일: ' || vcoursefdate);
        
        if vstatus = '중도탈락' and vdropdate < vcoursefdate then -- 중도탈락 + 과정보다 일찍 탈락
            dbms_output.put_line('과정을 다 듣기 전에 탈락하였습니다. 성적을 등록할 수 없습니다. 등록을 종료합니다.');

        else -- 성적 입력 가능
        
            -- 출결배점 가져오기
            procGetAttGrade(vsublistseq, vattgrade);
            dbms_output.put_line('출결배점: ' || vattgrade);
            
            if vattgrade is not null then -- 배점이 있는 경우
                -- 배점과 입력할 성적 비교
                
                -- 최대 점수가 각 시험의 배점까지이다.
                if pscore < 0 or pscore > vattgrade then -- 부적절한 범위
                    dbms_output.put_line('유효하지 않은 입력입니다. 입력을 종료합니다.');
                else -- 출결 성적 입력
                    update tblscoreinfo set attendancescore = pscore where studentseq = pstdseq and subjectlistseq = vsublistseq;
                    commit;
                    
                    dbms_output.put_line('출결 성적 등록을 완료했습니다.');
                end if;
                
            else -- 출결배점이 없는 경우
                dbms_output.put_line('과목에 등록된 출결배점이 없습니다. 배점을 먼저 등록해주세요. 등록을 종료합니다.');
                
            end if;
            
        end if;
        
    else -- 성적이 이미 존재
        dbms_output.put_line('성적이 이미 존재합니다. 등록을 종료합니다.');
    end if;
exception
    when NO_DATA_FOUND then
        dbms_output.put_line('데이터 없음');  
        
    when others then
        dbms_output.put_line('예외 처리');
end procSetStdAttScore;

-- 실행
begin
    procSetStdAttScore(66, 1, 3, 50);
end;



-- 년월 테스트
CREATE OR REPLACE PROCEDURE procTestE(
    pdatestr IN VARCHAR2,
    pstartdate OUT DATE,
    penddate OUT DATE
)
IS
BEGIN
    pstartdate := TO_DATE(pdatestr || '01', 'yyyymmdd');
    dbms_output.put_line(pstartdate);
    
    penddate := LAST_DAY(pstartdate);
    dbms_output.put_line(penddate);
END procTestE;


declare
    vs date;
    ve date;
begin
    procTestE('202307', vs, ve);
    dbms_output.put_line(vs);
    dbms_output.put_line(ve);
end;



