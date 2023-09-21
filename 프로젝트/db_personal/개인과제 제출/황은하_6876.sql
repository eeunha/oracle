-- DDL
create table member(
    id varchar2(30) primary key,
    pass varchar2(100) not null,
    name varchar2(50) not null,
    gender varchar2(10) null,
    tel varchar2(13) null,
    regdate date default sysdate
);

create table schedule_movie(
    movie_code varchar2(15) not null primary key,
    mv_title varchar2(100) not null,
    mv_story varchar2(4000) not null,
    mv_runtime number not null,
    my_regdate date default sysdate
);

create sequence mv_code_seq;

create table director(
    dr_code varchar2(15) primary key,
    dr_name varchar2(50) not null,
    dr_regdate date default sysdate,
    movie_code varchar2(15) null references schedule_movie(movie_code)
);

create sequence dr_code_seq;

create table reservation(
    res_num number primary key,
    id varchar2(30) not null references member (id),
    movie_code varchar2(15) not null references schedule_movie (movie_code),
    regdate date default sysdate
);

create sequence res_num_seq;


-- DML
-- member
insert into member values ('son', '1234', '손재옥', '남', '010-7361-9876', sysdate);
insert into member values ('kim', '1234', '김영주', '남', '010-6712-7652', sysdate);
insert into member values ('jung', '1234', '정헌석', '남', '010-7731-1471', sysdate);


-- movie
insert into schedule_movie values ('MV_'||ltrim(to_char(mv_code_seq.nextVal, '000000000000')), '007 노 타임 투 다이(No time to Die)', '가장 강력한 운명의 적과 마주하게된 제임스 본드의 마지막 미션이 시작된다. ', 163, sysdate);
insert into schedule_movie values ('MV_'||ltrim(to_char(mv_code_seq.nextVal, '000000000000')), '보이스(On the Line)', '단 한 통의 전화!걸려오는 순간 걸려들었다! ', 109, sysdate);
insert into schedule_movie values ('MV_'||ltrim(to_char(mv_code_seq.nextVal, '000000000000')), '수색자(The Recon)', '억울하게 죽은 영혼들의 무덤 DMZ', 111, sysdate);
insert into schedule_movie values ('MV_'||ltrim(to_char(mv_code_seq.nextVal, '000000000000')), '기적(Mircle)', '오갈 수 있는 길은 기찻길밖에 없지만 정작 기차역은 없는 마을. ', 117, sysdate);

-- director
insert into director values ('DR_'||ltrim(to_char(dr_code_seq.nextVal, '000000000000')), '캐리 후쿠나가', sysdate, 'MV_000000000001');
insert into director values ('DR_'||ltrim(to_char(dr_code_seq.nextVal, '000000000000')), '김선', sysdate, 'MV_000000000002');
insert into director values ('DR_'||ltrim(to_char(dr_code_seq.nextVal, '000000000000')), '김곡', sysdate, 'MV_000000000002');
insert into director values ('DR_'||ltrim(to_char(dr_code_seq.nextVal, '000000000000')), '김민섭', sysdate, 'MV_000000000003');
insert into director values ('DR_'||ltrim(to_char(dr_code_seq.nextVal, '000000000000')), '이창훈', sysdate, 'MV_000000000004');

-- reservation
insert into reservation values (res_num_seq.nextVal, 'son', 'MV_000000000002', sysdate);
insert into reservation values (res_num_seq.nextVal, 'son', 'MV_000000000003', sysdate);
insert into reservation values (res_num_seq.nextVal, 'kim', 'MV_000000000001', sysdate);
insert into reservation values (res_num_seq.nextVal, 'jung', 'MV_000000000002', sysdate);


-- 검색

-- 모든 회원 정보를 검색한다.
select * from member;

-- 모든 예매 정보를 조회한다.
select * from reservation;

-- 모든 감독 정보를 조회한다.
select * from director;

-- 영화제목, 스토리, 러닝타임, 감독명을 조회한다. (감독이 n명이면 영화가 n건 조회)
select 
    m.mv_title as 영화제목, 
    m.mv_story as 스토리, 
    m.mv_runtime as 러닝타임, 
    d.dr_name as 감독명 
from schedule_movie m 
inner join director d on m.movie_code = d.movie_code;

-- 보이스 라는 영화의 예약자명, 성별, 전화번호, 예매번호, 예매일을 조회한다. 단, 예매일이 마지막에 예매된 순서대로 조회하세요.
select 
    m.name as 예약자명,
    m.gender as 성별,
    m.tel as 전화번호,
    r.res_num as 예매번호,
    r.regdate as 예매일
from reservation r
    inner join member m on r.id = m.id
    inner join schedule_movie mv on r.movie_code = mv.movie_code
where mv.mv_title = '보이스(On the Line)'
order by r.regdate desc;