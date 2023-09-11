show user; -- sql developer 전용 명령어

select * from tabs; -- 아무 작업을 하지 않아서 아무것도 나오지 않는다.

-- ORA-01031: insufficient privileges > 권한 받아야 생성이 가능하다.
create table tblData (
    seq number primary key,
    data varchar2(100) not null
);

select * from tblData;