DROP TABLE mTBLGENRELIST;
DROP SEQUENCE mgSeq;

CREATE SEQUENCE mgSeq;

CREATE TABLE mTBLGENRELIST -- 장르리스트
(
	mgSeq NUMBER PRIMARY KEY,
	mSeq NUMBER NOT NULL REFERENCES mTBLMOVIE(MOVIE_Seq),
	gSeq NUMBER NOT NULL REFERENCES mTBLGENRE(GENRE_Seq)
);

select * from mTBLGENRELIST;

INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),1,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),1,10);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),2,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),3,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),3,2);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),3,3);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),3,4);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),4,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),4,5);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),5,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),5,6);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),6,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),6,2);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),6,7);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),7,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),7,5);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),8,4);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),9,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),9,2);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),9,3);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),10,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),11,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),11,2);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),11,7);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),12,2);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),12,6);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),12,8);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),12,9);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),13,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),13,2);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),13,3);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),14,5);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),15,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),15,2);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),15,3);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),16,6);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),17,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),17,3);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),17,4);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),17,5);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),18,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),18,3);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),18,7);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),19,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),19,5);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),20,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),20,2);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),20,6);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),21,5);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),22,2);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),22,7);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),23,15);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),24,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),24,5);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),24,10);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),24,11);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),25,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),26,6);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),27,8);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),28,6);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),28,8);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),28,9);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),28,11);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),29,5);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),30,5);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),31,4);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),31,10);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),32,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),32,2);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),33,5);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),33,10);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),34,13);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),34,14);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),35,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),35,2);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),35,7);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),35,8);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),36,5);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),36,6);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),37,2);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),37,7);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),37,8);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),38,5);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),39,8);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),39,11);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),40,13);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),40,14);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),41,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),41,2);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),41,12);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),42,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),43,8);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),44,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),44,10);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),45,5);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),46,11);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),46,12);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),47,5);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),48,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),49,1);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),49,8);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),49,10);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),50,5);
INSERT INTO mTBLGENRELIST(mgSeq,mseq,gSeq)values((SELECT nvl(max(mgSeq), 0) + 1 FROm mTBLGENRELIST),50,10);

select * from mTBLGENRELIST;

commit;