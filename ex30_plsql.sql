-- ex30_plsql.sql

/*
    PL/SQL
    - Oracle's Procedural Language extension to SQL
    - 기존의 ANSI-SQL + 절차 지향 언어 기능 추가
    - ANSI-SQL + 확장팩(변수, 제어 흐름(제어문), 객체(메서드) 정의)
    
    프로시저, Procedure
    - 메서드, 함수 등...
    - 순서가 있는 명령어의 집합
    - 모든 PL/SQL 구문은 프로시저 내에서만 작성/동작이 가능하다.
    - 프로시저 아닌 영역 > ANSI-SQL
    
    1. 익명 프로시저
        - 1회용 코드 작성용
    
    2. 실명 프로시저
        - 데이터베이스 객체
        - 저장용
        - 재호출
    
    
    
    PL/SQL 프로시저 구조
    
    1. 4개의 블럭(키워드)으로 구성
        - DECLARE
        - BEGIN
        - EXCEPTION
        - END
        
    2. DECLARE
        - 선언부
        - 프로시저 내에서 사용할 변수, 객체 등을 선언하는 영역
        - 생략 가능
        
    3. BEGIN ~ END
        - 실행부, 구현부
        - 구현된 코드를 가지는 영역(메서드의 바디부분)
        - 생략 불가능
        - 구현된 코드 > ANSI-SQL + PL/SQL(연산, 제어 등)
        
    4. EXCEPTION
        - 예외처리부
        - catch 역할, 3번 영역 try 역할
        - 생략 가능
        
    
    자료형 + 변수
    
    PL/SQL 자료형
    - ANSI/SQL과 동일
    
    
    변수 선언하기
    - 변수형 자료형 [not null] [default 값];
    
    
    PL/SQL 연산자
    - ANSI/SQL과 동일
    
    대입 연산자
    - ANSI/SQL 대입 연산자
        ex) update table set column = '값';
    - PL/SQL 대입 연산자
        ex) 변수 := '값';
        
*/



-- syso 하기위한 설정 변경
set serveroutput off;
set serveroutput on; -- 현재 세션에서만 유효(접속 해재 > 초기화)
set serverout on;

-- 익명 프로시저
declare
    num number;
    name varchar2(30);
    today date;
begin
    num := 10;
    dbms_output.put_line(num); -- syso
    
    name := '홍길동';
    dbms_output.put_line(name); -- syso
     
    today := sysdate;
    dbms_output.put_line(today); -- syso
    
end;
-- 블럭 안잡아도 ctrl + enter로 실행되게 하는 방법. 프로시저 끝나면 아래에 / 붙이기
/ 

declare
    num1 number;
    num2 number;
    num3 number := 30;
    num4 number default 40;
    num5 number not null := 50; -- declare 블럭에서 초기화를 해야 한다.(구현부 X)
begin
    dbms_output.put_line(num1);
    
    num2 := 20;
    dbms_output.put_line(num2);
    
    dbms_output.put_line(num3);
    
    dbms_output.put_line(num4);
    
    num4 := 400;
    dbms_output.put_line(num4);
    
    -- num5 := 50; 초기화가 아님. 선언과 동시에 초기화를 해야 함.
    dbms_output.put_line(num5);
    
end;
/


/*
    변수 > 어떤 용도로 사용?
    - select 결과를 담는 용도(****************)
    - select into 절(PL/SQL)

*/

declare
    vbuseo varchar2(15);
begin
--    vbuseo := (select buseo from tblInsa where name = '홍길동');
    
    select buseo into vbuseo from tblInsa where name = '홍길동';
    dbms_output.put_line(vbuseo);
    
--    select buseo from tblInsa where name = '홍길동';
--    dbms_output.put_line(buseo);


end;



begin
    -- PL/SQL 프로시저 안에서는 순수한 SELECT문은 올 수 없다.(절대)
    -- PL/SQL 프로시저 안에서는 SELECT INTO문만 사용한다.
    select buseo from iblInsa where name = '홍길동'
end;


-- 성과급 받는 직원명
create table tblName(
    name varchar2(15);
);

-- 1. 개발부 + 부장 > select > name?
-- 2. tblName > name > insert
--> 제어의 흐름 발생

insert into tblname (name) values ((select name from tblInsa where buseo = '개발부' and jikwi = '부장'));
/
declare
    vname varchar2(15);
begin

    -- 1.
    select name into vname from tblInsa where buseo = '개발부' and jikwi = '부장';
    
    -- 2.
    insert into tblName (name) values (vname);
end;
/
select * from tblName;
/

declare
    vname varchar2(15);
    vbuseo varchar2(15);
    vjikwi varchar2(15);
    vbasicpay number;
begin

    -- select into
--    select name into vname, buseo into vbuseo, jikwi into vjikwi, basicpay into vbasicpay from tblInsa where num = 1001;
    
    -- into는 한번만.
    -- into 사용 시
    -- 1. 컬럼의 개수와 변수의 개수 일치
    -- 2. 컬럼의 순서와 변수의 순서 일치
    -- 3. 컬럼과 변수의 자료형 일치
    select name, buseo, jikwi, basicpay into vname, vbuseo, vjikwi, vbasicpay from tblInsa where num = 1001;

    dbms_output.put_line(vname);
    dbms_output.put_line(vbuseo);
    dbms_output.put_line(vjikwi);
    dbms_output.put_line(vbasicpay);
    
end;


/*
    타입 참조
    
    %type
    - 사용하는 테이블의 특정 컬럼값의 스키마를 알아내서 변수에 적용
    - 복사되는 정보
        - a. 자료형
        - b. 길이
    - 컬럼 1개 참조
        
    %rowtype
    - 행 전체 참조(여러 개의 컬럼을 한번에 참조)
    - %type의 집합형
    - 레코드 전체(여러 개 컬럼)를 하나의 변수에 저장
    
*/

declare
--    vbuseo varchar2(15);
    vbuseo tblInsa.buseo%type;
begin
    select buseo into vbuseo from tblInsa where name = '홍길동';
    dbms_output.put_line(vbuseo);
end;
/


declare
    vname tblInsa.name%type;
    vbuseo tblInsa.buseo%type;
    vjikwi tblInsa.jikwi%type;
    vbasicpay tblInsa.basicpay%type;
begin
    select name, buseo, jikwi, basicpay into vname, vbuseo, vjikwi, vbasicpay from tblInsa where num = 1001;

    dbms_output.put_line(vname);
    dbms_output.put_line(vbuseo);
    dbms_output.put_line(vjikwi);
    dbms_output.put_line(vbasicpay);
    
end;
/

-- 직원 중 일부에게 보너스 지급 > 내역 저장
drop table tblBonus;

create table tblBonus(
    seq number primary key,
    num number(5) not null references tblInsa(num), --직원번호(FK)
    bonus number not null
);

select * from tblBonus;

select num, basicpay from tblInsa where city = '서울' and jikwi = '부장' and buseo = '영업부';

declare
    vnum tblInsa.num%type;
    vbasicpay tblInsa.basicpay%type;
begin
    select num, basicpay into vnum, vbasicpay from tblInsa where city = '서울' and jikwi = '부장' and buseo = '영업부'; 
    dbms_output.put_line(vnum);
    dbms_output.put_line(vbasicpay);
    insert into tblBonus (seq, num, bonus) values ((select nvl(max(seq), 0) + 1 from tblBonus), vnum, vbasicpay * 1.5);
    
end;

select * from tblBonus;
select * from tblInsa;



-- 무명씨 찾기 > 성전환 수술 > tblMen -> tblWomen 옮기기
-- 1. '무명씨' > tblMen > tblWomen
-- 2. tblWomen > insert
-- 3. tblMen > delete

select * from tblMen;
select * from tblWomen;

declare
    vname tblMen.name%type;
    vage tblMen.age%type;
    vheight tblMen.height%type;
    vweight tblMen.weight%type;
begin
    select name, age, height, weight into vname, vage, vheight, vweight from tblMen where name = '무명씨';
    
    insert into tblWomen (name, age, height, weight, couple) values (vname, vage, vheight, vweight, null);
    
    delete from tblMen where name = '무명씨';
end;

select * from tblMen;
select * from tblWomen;


-- 답
declare
    vname tblMen.name%type;
    vage tblMen.age%type;
    vheight tblMen.height%type;
    vweight tblMen.weight%type;
    vcouple tblMen.couple%type;
begin

    --1.
    select 
        name, age, height, weight, couple 
        into
        vname, vage, vheight, vweight, vcouple         
    from tblMen where name = '무명씨';
    
    --2.
    insert into tblWomen (name, age, height, weight, couple)
        values (vname, vage, vheight, vweight, vcouple);

    --3.
    delete from tblMen where name = vname;

end;
/

select * from tblMen;
select * from tblWomen;

declare
--    vname tblMen.name%type;
--    vage tblMen.age%type;
--    vheight tblMen.height%type;
--    vweight tblMen.weight%type;
--    vcouple tblMen.couple%type;
    vrow tblMen%rowtype; -- vrow: tblMen의 모든 레코드 1개(모든 컬럼값)를 저장할 수 있는 변수
begin

    --1.
    select * into vrow        
    from tblMen where name = '정형돈';
    
    dbms_output.put_line(vrow.name);
    dbms_output.put_line(vrow.age);
    dbms_output.put_line(vrow.height);
    dbms_output.put_line(vrow.weight);
    dbms_output.put_line(vrow.couple);
    
    
    --2.
    insert into tblWomen (name, age, height, weight, couple)
        values (vrow.name, vrow.age, vrow.height, vrow.weight, vrow.couple);

    --3.
    delete from tblMen where name = vrow.name;

end;

commit;

-----------------------------------------------------------------------------------------------------------------------------------
/*
    제어문
    1. 조건문
    2. 반복문
    3. 분기문


*/

declare
    vnum number := 10;
    
begin
    if vnum > 0 then
        dbms_output.put_line('양수');
    end if;
    
end;
/

declare
    vnum number := 10;
    
begin
    if vnum > 0 then
        dbms_output.put_line('양수');
    else
        dbms_output.put_line('음수');
    end if;
    
end;
/

declare
    vnum number := -10;
    
begin
    if vnum > 0 then
        dbms_output.put_line('양수');
    elsif vnum < 0 then -- else if, elseif, elsif 등...
        dbms_output.put_line('음수');
    else
        dbms_output.put_line('0');
    end if;
    
end;
/


-- tblInsa. 남자 직원/여자 직원 > 다른 업무
select substr(ssn, 8, 1) from tblInsa where num = 1035;


declare
    vgender varchar2(1);
begin
    
    select substr(ssn, 8, 1) into vgender from tblInsa where num = 1035;
    
    if vgender = '1' then
        dbms_output.put_line('남자 직원');
    else 
        dbms_output.put_line('여자 직원');
    end if;
    
end;

commit;
/


-- 직원 1명 선택 > 보너스 지급
-- 차등 지급
-- a. 과장/부장 > basicpay * 1.5
-- b. 대리/사원 > basicpay * 2

drop table tblBonus;

create table tblBonus(
    seq number primary key,
    num number(5) not null references tblInsa(num), --직원번호(FK)
    bonus number not null
);

select num, jikwi, basicpay from tblInsa where num = 1040; 

declare
    vnum tblInsa.num%type;
    vbasicpay tblInsa.basicpay%type;
    vjikwi tblInsa.jikwi%type;
begin
    select num, basicpay, jikwi into vnum, vbasicpay, vjikwi from tblInsa where city = '서울' and jikwi = '부장' and buseo = '영업부'; 
    dbms_output.put_line(vnum);
    dbms_output.put_line(vbasicpay);
    insert into tblBonus (seq, num, bonus) values ((select nvl(max(seq), 0) + 1 from tblBonus), vnum, vbasicpay * 1.5);
    
end;





declare
    vnum tblInsa.num%type;
    vjikwi tblInsa.jikwi%type;
    vbasicpay tblInsa.basicpay%type;
begin
    select num, jikwi, basicpay into vnum, vjikwi, vbasicpay from tblInsa where num = 1040; 
    
    if (vjikwi = '과장' or vjikwi = '부장') then 
        insert into tblBonus (seq, num, bonus) values ((select nvl(max(seq), 0) + 1 from tblBonus), vnum, vbasicpay * 1.5);
    else
        insert into tblBonus (seq, num, bonus) values ((select nvl(max(seq), 0) + 1 from tblBonus), vnum, vbasicpay * 2);
    end if;
    
end;

select * from tblBonus;
select * from tblInsa;

-- 답

declare
    vnum tblInsa.num%type;
    vjikwi tblInsa.jikwi%type;
    vbasicpay tblInsa.basicpay%type;
    vbonus number;
begin
    select num, jikwi, basicpay into vnum, vjikwi, vbasicpay from tblInsa where num = 1040; 
    
    if vjikwi = '과장' or vjikwi = '부장' then 
        vbonus := vbasicpay * 1.5;
    elsif vjikwi in ('사원', '대리') then
        vbonus := vbasicpay * 2;   
    end if;
    
    insert into tblBonus (seq, num, bonus) values ((select nvl(max(seq), 0) + 1 from tblBonus), vnum, vbonus);
end;

select * from tblBonus;





/*
    case문
    - ANSI-SQL의 case문과 거의 유사
    - 자바의 switch문, 다중 if문


*/

declare
    vcontinent tblCountry.continent%type;
    vresult varchar2(30);
begin

    select continent into vcontinent from tblCountry where name = '영국';

    if vcontinent = 'AS' then
        vresult := '아시아';
    elsif vcontinent = 'EU' then
        vresult := '유럽';
    elsif vcontinent = 'AF' then
        vresult := '아프리카';
    else
        vresult := '기타';
    end if;
    
    dbms_output.put_line(vresult);
    
end;



declare
    vcontinent tblCountry.continent%type;
    vresult varchar2(30);
begin

    select continent into vcontinent from tblCountry where name = '영국';

--    case
--        when vcontinent = 'AS' then vresult := '아시아';
--        when vcontinent = 'EU' then vresult := '유럽';
--        when vcontinent = 'AF' then vresult := '아프리카';
--        else vresult := '기타';
--    end case;
--    
--    dbms_output.put_line(vresult);
    
    
    case vcontinent
        when 'AS' then vresult := '아시아';
        when 'EU' then vresult := '유럽';
        when 'AF' then vresult := '아프리카';
        else vresult := '기타';
    end case;    
    
    dbms_output.put_line(vresult);
    
end;



/*
    반복문
    
    1. loop
        - 단순 반복
    
    2. for loop
        - 횟수 반복(자바 for)
        - loop 기반
    
    3. while loop
        - 조건 반복(자바 while)
        - loop 기반


*/
-- 무한 루프
begin
    
    loop
        dbms_output.put_line('100');
    end loop;
    
end;


declare
    vnum number := 1;
begin
    loop
        dbms_output.put_line(vnum);
        vnum := vnum + 1;
        
        exit when vnum > 10; -- 조건부 break
        
    end loop;
end;



create table tblLoop (
    seq number primary key,
    data varchar2(100) not null
);

create sequence seqLoop;

-- 데이터 x 1000건 추가
-- data > '항목1', '항목2', ... '항목1000'

declare
    vnum number := 1;
begin
    loop
        insert into tblLoop values(seqLoop.nextVal, '항목' || vnum);
        
        vnum := vnum + 1;
        exit when vnum > 1000;
    end loop;
     
end;

select * from tblLoop;


-- 2. for loop

/*
    향상된 for문
    - foreach문
    - for in
    
    for (int n : list) {
    
    }
    
    for (int n in list) {
    
    }

*/

begin 
    
    for i in 1..10 loop
        dbms_output.put_line(i);
    end loop;
    
end;



create table tblGugudan (
    dan number not null,
    num number not null,
    result number not null,
    constraint tblgugudan_dan_num_pk primary key(dan, num) -- 복합키(Composite key)
);

drop table tblgugudan;


create table tblGugudan (
    dan number not null,
    num number not null,
    result number not null   
);

alter table tblGugudan 
add constraint tblgugudan_dan_num_pk primary key(dan, num);

select * from tblgugudan;

begin
    for dan in 2..9 loop
        for num in 1..9 loop
            insert into tblgugudan (dan, num, result) values (dan, num, dan * num);
        end loop;
    end loop;
end;

select * from tblgugudan;


-- 반대로 돌기
begin 
    
    for i in reverse 1..10 loop
        dbms_output.put_line(i);
    end loop;
    
end;



-- 3. while loop
declare
    vnum number := 1;
begin 
    loop
        dbms_output.put_line(vnum);
        vnum := vnum + 1;
        exit when vnum > 10;
    end loop;
end;


declare
    vnum number := 1;
begin 
    while vnum <= 10 loop
        dbms_output.put_line(vnum);
        vnum := vnum + 1;
    end loop;
end;


/*
    select > 결과셋 > PL/SQL 변수 대입
    
    1. select into
        - 결과셋의 레코드가 1개일 때만 사용이 가능하다.
        
    2. cursor
        - 결과셋의 레코드가 N개일 때 사용한다.
        - 루프 사용
        
    declare
        변수 선언;
        커서 선언;
    begin
        커서 열기;
            loop
                데이터 접근(루프 1회전 > 레코드 1개) <- 커서 사용
            end loop;
        커서 닫기;
    end;
    
*/

declare
    vname tblInsa.name%type;
begin
    -- ORA-01422: exact fetch returns more than requested number of rows
    select name into vname from tblInsa;
    dbms_output.put_line(vname);
end;



create view vview
as
select문

-- 뷰와 비슷
cursor vcursor 
is 
select문;

declare
    cursor vcursor 
    is 
    select name from tblInsa;
    vname tblInsa.name%type;
begin
    open vcursor; -- 커서 열기 > select 실행 > 결과셋을 커서가 참조
--        fetch vcursor into vname; --select into 역할  -> iterator와 비슷한 역할. 한번 실행할 때마다 커서가 하나씩 내려간다.
--        dbms_output.put_line(vname);
--        
--        fetch vcursor into vname; --select into 역할  -> iterator와 비슷한 역할. 한번 실행할 때마다 커서가 하나씩 내려간다.
--        dbms_output.put_line(vname);

-- 명 수를 어떻게 알지?
--        for i in 1..60 then
--            fetch vcursor into vname;
--            dbms_output.put_line(vname);
--        end loop;

        loop
            fetch vcursor into vname;
            exit when vcursor%notfound; -- 다음 데이터가 없다면 true 반환
            
            dbms_output.put_line(vname);
        end loop;
        
    close vcursor;
end;


-- '기획부' > 이름, 직위, 급여 > 출력

select name, jikwi, basicpay from tblInsa;

declare
    cursor vcursor
    is
    select name, jikwi, basicpay from tblInsa;
    vname tblInsa.name%type;
    vjikwi tblInsa.jikwi%type;
    vbasicpay tblInsa.basicpay%type;
begin
    open vcursor;
        loop
            fetch vcursor into vname, vjikwi, vbasicpay; -- 한 행을 가져오기 때문에 변수도 행의 열 개수에 맞춰서 작성해야한다.
            exit when vcursor%notfound;
            
            -- 업무 > 기획부 직원 한 사람씩 접근..
            dbms_output.put_line(vname || ', ' || vjikwi || ', ' || vbasicpay);
        end loop;
    close vcursor;
end;


-- 문제. tblBonus
-- 모든 직원에게 보너스 지급. 60명 전원 > 과장/부장(1.5), 대리/사원(2) 지급
select * from tblBonus;

select * from tblInsa;

--1. 모든 직원 한 행씩 가져오기
select num, jikwi, basicpay from tblInsa; 

--2. bonus 테이블에 insert

drop table tblBonus;

create table tblBonus(
    seq number primary key,
    num number(5) not null references tblInsa(num), --직원번호(FK)
    bonus number not null
);

declare
    cursor vcursor
    is
    select num, jikwi, basicpay from tblInsa; 
    vnum tblInsa.num%type;
    vjikwi tblInsa.jikwi%type;
    vbasicpay tblInsa.basicpay%type;
    vbonus number;
begin
    open vcursor;
        loop
            fetch vcursor into vnum, vjikwi, vbasicpay; -- 한 행을 가져오기 때문에 변수도 행의 열 개수에 맞춰서 작성해야한다.
            exit when vcursor%notfound;
        
            if vjikwi = '과장' or vjikwi = '부장' then 
                vbonus := vbasicpay * 1.5;
            elsif vjikwi in ('사원', '대리') then
                vbonus := vbasicpay * 2;   
            end if;
            
            insert into tblBonus (seq, num, bonus) values ((select nvl(max(seq), 0) + 1 from tblBonus), vnum, vbonus);
        end loop;
    close vcursor;
end;

select * from tblBonus;


-- 답
drop table tblBonus;

create table tblBonus(
    seq number primary key,
    num number(5) not null references tblInsa(num), --직원번호(FK)
    bonus number not null
);

declare
    
    cursor vcursor
        is select num, basicpay, jikwi from tblInsa;
        
    vnum tblInsa.num%type;
    vbasicpay tblInsa.basicpay%type;
    vjikwi tblInsa.jikwi%type;
    vbonus number;
    
begin
    
    open vcursor;
    loop
        fetch vcursor into vnum, vbasicpay, vjikwi;
        exit when vcursor%notfound;
        
        if vjikwi in ('과장', '부장') then
            vbonus := vbasicpay * 1.5;
        elsif vjikwi in ('사원', '대리') then
            vbonus := vbasicpay * 2;
        end if;
        
        insert into tblBonus (seq, num, bonus)
            values ((select nvl(max(seq), 0) + 1 from tblBonus), vnum, vbonus);
        
    end loop;
    close vcursor;

end;




-- 커서 탐색
-- 1. 커서 + loop > 정석
-- 2. 커서 + for loop > 간결

-- 걍 외워.
declare
    cursor vcursor
    is
    select * from tblInsa;
    vrow tblInsa%rowtype;
begin
    open vcursor;
        loop
            fetch into;
            exit when;
        end loop;
    close vcursor;
end;


-- 정석
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


-- 간결
declare
    cursor vcursor
    is
    select * from tblInsa;
    vrow tblInsa%rowtype;
begin
    for vrow in vcursor loop  -- loop + fetch into + vrow + exit when  (for 루프변수 in 집합 loop)
        dbms_output.put_line(vrow.name);
    end loop;
end;






-- 예외처리
-- : 실행부(begin-end)에서 발생하는 예외를 처리하는 블럭 > exception 블럭

declare
    vname varchar2(5);
begin -- try
    dbms_output.put_line('하나');
    select name into vname from tblInsa where num = 1001;
    dbms_output.put_line('둘');
    
    dbms_output.put_line(vname);
    
exception -- catch
    when others then
    dbms_output.put_line('예외 처리');

end;


-- 예외 발생 > DB 저장
create table tblLog(
    seq number primary key,                 -- PK
    code varchar2(7) not null check (code in ('A001', 'B001', 'B002', 'C001')), --에러 상태 코드
    message varchar2(1000) not null,        -- 에러 메시지
    regdate date default sysdate not null   -- 에러 발생 시각
);

create sequence seqLog;

drop table tblLog;
drop sequence seqLog;


select * from tblLog;

declare
    vcnt number;
    vname tblInsa.name%type;
begin
    select count(*) into vcnt from tblCountry where name = '태국'; -- ORA-01476: divisor is equal to zero
    dbms_output.put_line(100 / vcnt);
    
    select name into vname from tblInsa where num = 1000; -- ORA-01403: no data found
    dbms_output.put_line(vname);

exception
    when ZERO_DIVIDE then
        dbms_output.put_line('0으로 나누기');
        insert into tblLog values (seqLog.nextVal, 'B001', '가져온 레코드가 없습니다.', default);
        
    when NO_DATA_FOUND then
        dbms_output.put_line('데이터 없음');        
        insert into tblLog values (seqLog.nextVal, 'A001', '직원이 존재하지 않습니다.', default);
        
    when others then
        dbms_output.put_line('나머지 예외 ');
        insert into tblLog values (seqLog.nextVal, 'C001', '기타 예외가 발생했습니다.', default);
end;



-- ~ 익명 프로시저

-- 23.09.08
-- 실명 프로시저 ~

/*
    명령어 실행 > 처리 과정
    
    1. ANSI-SQL
    
    2. 익명 프로시저
        a. 클라이언트 > 구문 작성(select)
        b. 실행(Ctrl + Enter)
        c. 명령어를 오라클 서버에 전달
        d. 서버가 명령어를 수신
        e. 구문 분석(파싱) + 문법 검사
        f. 컴파일
        g. 실행(select)
        h. 결과셋 도출
        i. 결과셋을 클라이언트에게 반환
        j. 결과셋을 화면에 출력
        
    2.2. 다시 실행 (그 사이에 누군가가 데이터베이스를 수정했다면? -> 처음 실행과 결과가 달라질 수 있다.)
        a ~ j 다시 반복
        - 한 번 실행샜던 명령어를 다시 실행 > 위의 모든 과정을 처음부터 끝까지 다시 실행한다.
        - 첫 번째 실행 비용 = 다시 실행 비용
        
        
    3. 실명 프로시저
        a. 클라이언트 > 구문 작성(create)
        b. 실행(Ctrl + Enter)
        c. 명령어를 오라클 서버에 전달
        d. 서버가 명령어를 수신
        e. 구문 분석(파싱) + 문법 검사
        f. 컴파일
        g. 실행
        h. 오라클 서버 > 프로시저 생성 > 저장 (create 소스 원본이 아니고 컴파일된 기계어를 오라클 HDD에 저장한다.)
        i. 완료
        
        a. 클라이언트 > 구문 작성(호출)
        b. 실행(Ctrl + Enter)
        c. 명령어를 오라클 서버에 전달
        d. 서버가 명령어를 수신
        e. 구문 분석(파싱) + 문법 검사
        f. 컴파일
        g. 실행 > 프로시저 실행
        
    3.2 다시 실행
        a. 클라이언트 > 구문 작성(호출)
        b. 실행(Ctrl + Enter)
        c. 명령어를 오라클 서버에 전달 -> 프로시저명만 넘어감 -> 네트워크 트래픽 감소 -> 호출 시 컴파일 안함.
        d. 서버가 명령어를 수신
        e. 구문 분석(파싱) + 문법 검사
        f. 컴파일
        g. 실행 > 프로시저 실행
*/

select * from tblInsa;

/*
    프로시저
    1. 익명 프로시저
        - 1회용
        
    2. 실명 프로시저
        - 재사용
        - 오라클에 저장
        
        
    실명 프로시저
    - 저장 프로시저(Stored Procedure)
    1. 저장 프로시저, Stored Procedure
        - 매개변수 / 반환값 구성 > 자유
        
    2. 저장 함수, Stored Function -> 제약이 있는 프로시저다.
        - 매개변수 / 반환값 구성 > 필수
        
        
    익명 프로시저 선언
    
    declare
        변수 선언;
        커서 선언;
    begin
        구현부;
    exception
        예외처리;
    end;
    
    
    저장 프로시저 선언
    
    create [or replace] procedure 프로시저명  -> 보통은 or replace 쓴다.
    is(as)
        [변수 선언;
         커서 선언;]
    begin
        구현부;
    [exception
        예외처리;]
    end;
*/
/
set serverout on;

/
-- 즉시 실행    -> PL/SQL 프로시저가 성공적으로 완료되었습니다. 
declare 
    vnum number;
begin
    vnum := 10;
    dbms_output.put_line(vnum);
end;


-- 저장 프로시저    -> Procedure PROCTEST이(가) 컴파일되었습니다. (생성만 한 것.)
create or replace procedure procTest -- proc 붙이자
is
    vnum number;
begin
    vnum := 100;
    dbms_output.put_line(vnum);
end;

-- 저장 프로시저를 호출하는 방법    -> PL/SQL 프로시저가 성공적으로 완료되었습니다.
begin
    procTest; --프로시저 호출 (인자값 없으면 () 안씀)
end;


-- 저장 프로시저 = 메서드
-- 매개변수 + 반환값

-- 1. 매개변수가 있는 프로시저
create or replace procedure procTest(pnum number) --매개변수
is
    vresult number; -- 일반변수
begin
    vresult := pnum * 2;
    dbms_output.put_line(vresult);
end procTest;


begin 
    -- PL/SQL 영역
    procTest(100);
    procTest(200);
    procTest(300);
end;

-- 무슨 영역?
-- ANSI-SQL 영역 
select * from tblInsa;

-- PL/SQL못씀
procTest(400);

-- 얘는 가능
execute procTest(400);
exec procTest(500);
call procTest(600); -- 자바에서도 사용

-- 그렇지만 위의 정석대로 사용하자. 더 안정적이다.


create or replace procedure procTest(
    width number, 
    height number
)
is
    vresult number;
begin
    vresult := width * height;
    dbms_output.put_line(vresult);
end procTest;

begin
    procTest(10, 20);
end;


-- *** 프로시저 매개변수는 길이와 not null 표현은 불가능하다.
create or replace procedure procTest(
    name varchar2
)
is  -- 변수 선언이 없어도 반드시 기재
begin
    dbms_output.put_line('안녕하세요. ' || name || ' 님');
end;

begin
    procTest('홍길동');
end;



create or replace procedure procTest(
    width number, 
    height number default 10 -- default가 처음부터 있으면 안된다. 어떤 값인지 구분할 수 없다.
)
is
    vresult number;
begin
    vresult := width * height;
    dbms_output.put_line(vresult);
end procTest;

begin
    procTest(10, 20);   -- width(10), height(20)
--    procTest(10);       -- width(10), height(10-default)
end;


/*
    매개변수 모드
    - 매개변수가 값을 전달하는 방식
    - Call by Value > 매개변수 > 값을 넘기는 방식(값형 인자)
    - Call by Reference > 매개변수 > 참조값(주소)을 넘기는 방식(참조형 인자)
    
    1. in 모드 > 기본
    2. out 모드
    3. in out 모드(X)
    
*/

-- in 모드 정석
create or replace procedure procTest(
    pnum1 in number,    -- in parameter //인자값
    pnum2 in number,
    presult out number,  -- out parameter //반환값
    presult2 out number, -- 반환값
    presult3 out number  -- 반환값
)
is
begin
    presult := pnum1 + pnum2;
    presult2 := pnum1 - pnum2;
    presult3 := pnum1 * pnum2;
end procTest;


declare
    vnum number;
    vnum2 number;
    vnum3 number;
begin
    procTest(10, 20, vnum, vnum2, vnum3); -- vnum의 주소값이 전달됨. (참조값)
    dbms_output.put_line(vnum);
    dbms_output.put_line(vnum2);
    dbms_output.put_line(vnum3);
end;


-- 문제
-- 1. 부서 전달(인자) > 해당 부서의 직원 중 급여를 가장 많이 받는 사람의 번호를 반환(out) > 출력
-- in 1개 + out 1개

-- 2. 직원 번호 전달(인자) > 같은 지역에 사는 직원수?, 같은 직위가 몇명? 해당 직원보다 급여를 더 많이 받는 직원수? > 반환
-- in 1개 + out 3개

select num 
from tblInsa 
where basicpay = (select max(basicpay) from tblInsa where buseo = '개발부') ;

-- 1.
create or replace procedure procTest1(
    pbuseo in varchar2, 
    presult out number
)
is  
begin
    
    select num into presult from tblInsa where basicpay = (select max(basicpay) from tblInsa where buseo = pbuseo) ;
    
end procTest1;

declare
    vresult number;
begin
    procTest1('영업부', vresult);
    dbms_output.put_line(vresult);
end;


-- 2. 직원 번호 전달(인자) > 같은 지역에 사는 직원수?, 같은 직위가 몇명? 해당 직원보다 급여를 더 많이 받는 직원수? > 반환
-- in 1개 + out 3개
create or replace procedure procTest2(
    pnum in number,
    presult out number,
    presult2 out number,
    presult3 out number
)
is
begin
    select count(*) into presult from tblInsa where city = (select city from tblInsa where num = pnum);
    
    select count(*) into presult2 from tblInsa where jikwi = (select jikwi from tblInsa where num = pnum);
    
    select count(*) into presult3 from tblInsa where basicpay > (select basicpay from tblInsa where num = pnum);
    
end procTest2;


declare
    vnum number;
    vresult number;
    vresult2 number;
    vresult3 number;
begin
    procTest1('개발부', vnum);
    
    procTest2(vnum, vresult, vresult2, vresult3);
    
    dbms_output.put_line(vresult);
    dbms_output.put_line(vresult2);
    dbms_output.put_line(vresult3);
end;




select * from tblStaff;
select * from tblProject;

delete from tblStaff;
delete from tblProject;

INSERT INTO tblStaff (seq, name, salary, address) VALUES (1, '홍길동', 300, '서울시');
INSERT INTO tblStaff (seq, name, salary, address) VALUES (2, '아무개', 250, '인천시');
INSERT INTO tblStaff (seq, name, salary, address) VALUES (3, '하하하', 250, '부산시');

INSERT INTO tblProject (seq, project, staff_seq) VALUES (1, '홍콩 수출', 1); --홍길동
INSERT INTO tblProject (seq, project, staff_seq) VALUES (2, 'TV 광고', 2); --아무개
INSERT INTO tblProject (seq, project, staff_seq) VALUES (3, '매출 분석', 3); --하하하
INSERT INTO tblProject (seq, project, staff_seq) VALUES (4, '노조 협상', 1); --홍길동
INSERT INTO tblProject (seq, project, staff_seq) VALUES (5, '대리점 분양', 2); --아무개

commit;


-- 직원 퇴사 프로시저, procDeleteStaff
-- 1. 퇴사 직원 > 담당 프로젝트 유무 확인?
-- 2. 담당 프로젝트 존재 > 위임
-- 3. 퇴사 직원 삭제

create or replace procedure procDeleteStaff(
    pseq number,        -- 퇴사할 직원 번호
    pstaff number,      -- 위임받을 직원 번호
    presult out number  -- 성공(1) or 실패(0) > 피드백
)
is
    vcnt number;  -- 퇴사 직원의 담당 프로젝트 개수
begin
    -- 1. 퇴사 직원의 담당 프로젝트가 있는지? 
    select count(*) into vcnt from tblProject where staff_seq = pseq;
    
    -- 2. 조건 > 위임 유무 결정
    if vcnt > 0 then
        -- 3. 위임
        update tblProject set staff_seq = pstaff where staff_seq = pseq;
    else   
        -- 3. 아무것도 안함.
        null; -- 이 조건의 else 절에서는 아무것도 하지 마시오!! > 개발자의 의도 표현
    end if;
    
    -- 4. 퇴사
    delete from tblStaff where seq = pseq;
    
    -- 5. 피드백 > 성공
    presult := 1;

exception
    when others then 
        presult := 0;
    
end procDeleteStaff;


declare
    vresult number;
begin
    procDeleteStaff(1, 2, vresult);
    
    if vresult = 1 then
        dbms_output.put_line('퇴사 성공');
    else
        dbms_output.put_line('퇴사 실패');
    end if;
end;


select * from tblStaff;
select * from tblProject;

insert into tblStaff values (4, '호호호', 200, '서울시');

--commit;

-- 위임받을 직원 . 현재 프로젝트를 가장 적게 담당한 직원에게 자동으로 위임
-- 동률 > rownum = 1

select count(*) from tblProject group by staff_seq;

create or replace procedure procDeleteStaff(
    pseq number,        -- 퇴사할 직원 번호
    presult out number  -- 성공(1) or 실패(0) > 피드백
)
is
    vcnt number;  -- 퇴사 직원의 담당 프로젝트 개수
    vstaff_seq number; -- 담당 프로젝트가 가장 적은 직원 번호
begin
    -- 1. 퇴사 직원의 담당 프로젝트가 있는지? 
    select count(*) into vcnt from tblProject where staff_seq = pseq;
    
    -- 2. 조건 > 위임 유무 결정
    if vcnt > 0 then
    
        -- 2.5 적게 맡고 있는 직원 번호?
--        select seq into vstaff_deq from(
--        
--            select 
--                s.seq,
--                count(p.staff_seq),
--                rownum
--            from tblStaff s
--                left outer join tblProject p -- 프젝 안하는 직원도 보여줘야 하기 때문에. left outer join 함.
--                    on s.seq = p.staff_seq
--            group by s.seq
--            having count(p.staff_seq) = (select 
--                                            min(count(p.staff_seq))
--                                        from tblStaff s
--                                            left outer join tblProject p -- 프젝 안하는 직원도 보여줘야 하기 때문에. left outer join 함.
--                                                on s.seq = p.staff_seq
--                                        group by s.seq)) where rownum = 1;
        select seq from (
            select 
                s.seq
            from tblStaff s
                left outer join tblProject p
                    on s.seq = p.staff_seq
                        group by s.seq
                            having count(p.staff_seq) = (select                                                             
                                                                min(count(p.staff_seq))
                                                            from tblStaff s
                                                                left outer join tblProject p
                                                                    on s.seq = p.staff_seq
                                                                        group by s.seq))
                                                                         where rownum = 1
        
        -- 3. 위임
        update tblProject set staff_seq = vstaff_seq where staff_seq = pseq;
    else   
        -- 3. 아무것도 안함.
        null; -- 이 조건의 else 절에서는 아무것도 하지 마시오!! > 개발자의 의도 표현
    end if;
    
    -- 4. 퇴사
    delete from tblStaff where seq = pseq;
    
    -- 5. 피드백 > 성공
    presult := 1;

exception
    when others then 
        presult := 0;
    
end procDeleteStaff;






