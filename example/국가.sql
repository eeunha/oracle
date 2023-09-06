-------------국가---------
DROP TABLE mTBLCOUNTRY;
DROP SEQUENCE COUNTRY_Seq;

CREATE SEQUENCE COUNTRY_Seq;

CREATE TABLE mTBLCOUNTRY	-- 국가
(
	COUNTRY_Seq NUMBER PRIMARY KEY,
	name VARCHAR2(30) NOT NULL 
);


INSERT INTO mTBLCOUNTRY VALUES (1,'한국'); 
INSERT INTO mTBLCOUNTRY VALUES (2,'미국'); 
INSERT INTO mTBLCOUNTRY VALUES (3,'영국'); 
INSERT INTO mTBLCOUNTRY VALUES (4,'일본'); 

select * from mTBLCOUNTRY;

commit;

--------------국가리스트
DROP TABLE mtblcountrylist;
DROP SEQUENCE mcSeq;

CREATE SEQUENCE mcSeq;

CREATE TABLE mtblcountrylist -- 국가리스트
(
	mcSeq NUMBER PRIMARY KEY,
	mSeq NUMBER NOT NULL REFERENCES mTBLMOVIE(MOVIE_Seq),
	cSeq NUMBER NOT NULL REFERENCES mTBLCOUNTRY(COUNTRY_Seq)
);

select * from mtblcountrylist;


INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),1,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),2,2);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),3,2);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),4,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),5,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),6,2);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),7,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),8,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),9,2);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),10,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),11,2);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),12,2);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),13,2);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),14,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),15,2);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),16,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),17,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),18,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),19,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),20,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),21,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),22,2);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),23,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),24,2);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),25,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),26,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),27,2);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),28,4);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),29,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),30,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),31,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),32,2);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),33,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),34,4);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),35,4);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),36,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),37,4);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),38,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),39,4);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),40,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),41,2);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),42,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),43,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),44,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),45,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),46,2);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),47,1);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),48,2);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),48,3);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),49,2);
INSERT INTO mtblcountrylist values((SELECT nvl(max(mcSeq), 0) + 1 FROm mtblcoutrylist),50,1);



DROP TABLE mTBLCOUNTRYLIST;
DROP SEQUENCE mcSeq;

CREATE SEQUENCE mcSeq;

CREATE TABLE mTBLCOUNTRYLIST -- 국가리스트
(
    mcSeq NUMBER PRIMARY KEY,
	mSeq NUMBER NOT NULL REFERENCES mTBLMOVIE(MOVIE_Seq),
	cSeq NUMBER NOT NULL REFERENCES mTBLCOUNTRY(COUNTRY_Seq)
);

select * from mTBLCOUNTRYLIST;


INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 From mTBLCOUNTRYLIST),1,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),2,2);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),3,2);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),4,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),5,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),6,2);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),7,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),8,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),9,2);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),10,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),11,2);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),12,2);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),13,2);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),14,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),15,2);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),16,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),17,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),18,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),19,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),20,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),21,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),22,2);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),23,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),24,2);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),25,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),26,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),27,2);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),28,4);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),29,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),30,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),31,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),32,2);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),33,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),34,4);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),35,4);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),36,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),37,4);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),38,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),39,4);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),40,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),41,2);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),42,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),43,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),44,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),45,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),46,2);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),47,1);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),48,2);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),48,3);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),49,2);
INSERT INTO mTBLCOUNTRYLIST values((SELECT nvl(max(mcSeq), 0) + 1 FROm mTBLCOUNTRYLIST),50,1);

select * from mTBLCOUNTRYLIST;

commit;