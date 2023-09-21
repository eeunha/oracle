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

select * from schedule_movie;
--drop table schedule_movie;
--drop sequence mv_code_seq;
--drop table director;
--drop table reservation;


create sequence mv_code_seq;

create table director(
    dr_code varchar2(15) primary key,
    dr_name varchar2(50) not null,
    dr_regdate date default sysdate,
    movie_code varchar2(15) null references schedule_movie(movie_code)
);

create sequence dr_code_seq;
--drop sequence dr_code_seq;

create table reservation(
    res_num number primary key,
    id varchar2(30) not null references member (id),
    movie_code varchar2(15) not null references schedule_movie (movie_code),
    regdate date default sysdate
);

create sequence res_num_seq;

--drop table reservation;

--
--CREATE TABLE reservation (
--	"res_num"    number       NOT NULL,
--	"id"         varchar2(30) NOT NULL,
--	"movie_code" varchar2(15) NOT NULL, 
--	"regdate"    DATE         NOT NULL DEFAULT sysdate,
--    
--    CONSTRAINT reservation_pk PRIMARY KEY(RES_NUM),
--    CONSTRAINT reservation_fk foreign key(movie_code) references schedule_movie (movie_code)
--);


--CREATE TABLE director (
--	"dr_code"    number       NOT NULL,
--	"dr_name"    varchar2(50) NOT NULL,
--	"dr_regdate" DATE         NOT NULL DEFAULT sysdate, 
--	"movie_code" varchar2(15) NULL,
--    
--    CONSTRAINT director_pk PRIMARY KEY(dr_code),
--    CONSTRAINT director_fk foreign key(movie_code) references schedule_movie (movie_code)
--);

--CREATE TABLE schedule_movie (
--	"movie_code" varchar2(15)   NOT NULL PRIMARY KEY, 
--	"mv_title"   varchar2(100)  NOT NULL, 
--	"mv_story"   varchar2(4000) NOT NULL, 
--	"mv_runtime" number         NOT NULL,
--	"my_regdate" DATE           NOT NULL DEFAULT sysdate,
--    
--    CONSTRAINT schedule_movie_pk PRIMARY KEY(movie_code)
--);

--CREATE TABLE member (
--	id      varchar2(30)  NOT NULL PRIMARY KEY,
--	pass    varchar2(100) NOT NULL,
--	"name"    varchar2(50)  NOT NULL,
--	"gender"  varchar2(10)  NULL,
--	"tel"     varchar2(13)  NULL,
--	"regdate" DATE          NOT NULL DEFAULT sysdate
--);




