-- OTT
DROP TABLE mTBLOTT;
DROP SEQUENCE OTT_Seq;

CREATE SEQUENCE OTT_Seq;

CREATE TABLE mTBLOTT	-- OTT
(
	OTT_Seq NUMBER PRIMARY KEY,
	name VARCHAR2(30) NOT NULL 
);


INSERT INTO mTBLOTT(OTT_Seq,name)values((SELECT nvl(max(OTT_Seq), 0) + 1 FROm mTBLOTT),'웨이브');
INSERT INTO mTBLOTT(OTT_Seq,name)values((SELECT nvl(max(OTT_Seq), 0) + 1 FROm mTBLOTT),'넷플릭스');
INSERT INTO mTBLOTT(OTT_Seq,name)values((SELECT nvl(max(OTT_Seq), 0) + 1 FROm mTBLOTT),'왓챠');
INSERT INTO mTBLOTT(OTT_Seq,name)values((SELECT nvl(max(OTT_Seq), 0) + 1 FROm mTBLOTT),'티빙');

select * from mTBLOTT;

commit;
---------------------------------------------------------------------------------------------------------------
--OTT 리스트
DROP TABLE mTBLOTTLIST;
DROP SEQUENCE moSeq;

CREATE SEQUENCE moSeq;

CREATE TABLE mTBLOTTLIST -- OTT리스트
(
	moSeq NUMBER PRIMARY KEY,
	mSeq NUMBER NOT NULL REFERENCES mTBLMOVIE(MOVIE_Seq),
	oSeq NUMBER NOT NULL REFERENCES mTBLOTT(OTT_Seq)
);


--INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),1,null);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),2,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),3,1);
--INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),4,null);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),5,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),5,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),5,3);
--INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),6,null);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),7,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),7,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),7,3);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),7,4);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),8,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),9,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),9,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),10,1);
--INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),11,null);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),12,2);
--INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),13,null);
--INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),14,null);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),15,3);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),16,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),16,4);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),17,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),17,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),17,3);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),17,4);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),18,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),18,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),18,3);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),18,4);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),19,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),19,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),19,3);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),20,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),21,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),21,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),21,3);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),21,4);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),22,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),23,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),23,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),23,3);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),23,4);
--INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),24,null);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),25,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),25,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),26,1);
--INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),27,null);
--INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),28,null);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),29,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),29,4);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),30,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),30,4);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),31,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),31,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),31,3);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),31,4);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),32,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),32,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),33,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),33,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),33,3);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),33,4);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),34,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),35,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),35,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),35,3);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),35,4);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),36,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),36,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),36,3);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),36,4);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),37,3);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),38,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),38,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),38,3);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),38,4);
--INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),39,null);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),40,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),40,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),40,3);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),40,4);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),41,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),42,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),42,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),43,3);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),43,4);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),44,1);
--INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),45,null);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),46,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),46,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),46,4);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),47,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),47,3);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),47,4);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),48,1);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),49,2);
INSERT INTO mTBLOTTLIST(moSeq,mSeq,oSeq)values((SELECT nvl(max(moSeq), 0) + 1 FROm mTBLOTTLIST),50,1);

commit;


select * from mTBLOTTLIST;