--mTBLLINE 테이블 

CREATE TABLE mTBLLINE	-- 명대사
(
	LINE_Seq NUMBER PRIMARY KEY,
	movieLine VARCHAR2(300) NOT NULL 
);


iNSERT INTO mTBLLINE (lSeq, movieLine) values (1,'누가 5야?');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'너 납치된 거야.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'돌아오는 법도 가르쳐야죠.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'우리 가족은 하나야.그것이 강점이자 약점이지.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'물의 길은 시작도 끝도 없다. 물의 길은 모든걸 잇는다.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'우리에겐 더 압도적인 승리가 필요하다.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'이번 전쟁은 의와 불의의 싸움이다.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'다 처먹으려다 전부를 잃는거야'); --
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'아무리 시대가 바껴도 수사는 발로 뛰는거고 수갑은 형사가 채우는거야.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'한 번 길을 잃었다고 해서, 영원히 잃은 건 아니야.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'같은 목표를 위해 잠시 한 배를 탄 것 뿐이야.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'무엇이 보이십니까?');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'학질이요...');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'때로는 눈 감고 사는 게 편할 때도 있습니다.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'우리는 세상을 지배하는 것이 아니라 자연에 종속되는 존재이다.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'오랜만이네?');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'내 길은 내가 선택하고 싶어.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'가장 작은 자도 무언가를 할 수 있다.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'보여줘, 우리가 누구인지');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'나락에 떨어져 본 자만이 위대한 지도자가 될 수 있지');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'할 수 있는데까진 해봐야죠, 끝까지');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'나는 여기 비행기에 탄 사람들이 전부 죽었으면 좋겠어요.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'큰 힘에는 큰 책임이 따르지');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'보고 싶을 때 볼 수 있는게 그거이 통일이다!');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'우는구나, 마침내.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'내가 그렇게 나쁩니까?');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'밥은 먹고 합시다 시간은 기니까.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'꼬레아 우라 꼬레아 우라 꼬레아 우라!');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'우두머리는 죽음을 두려워해야 돼, 그래야 다같이 살 길을 찾으려고 하거든');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'버려진 게 아니라 구해진거야.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'태어나줘서 고마워,');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'위험한 시대에는 위험한 자가 유세하지.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'덕분에 행복하게 잘 살다 갑니다.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'지금까지 살고 있으면 사이 좋은 거야.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'땅끝에 오면 끝일 줄 알았는데 끝에 보길도가 있네. 사는 것도 그랬으면 좋겠다.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'상황이 그러면 훌륭한 사람도 알 수 없는 게 세상이야.'); ----------
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'우리가 쓰러지면 남은 이들이 못 버팁니다.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'만약 그떄로 돌아간대도 같은 선택을 하실 겁니까?');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'긴 실을 더 만들어야 했습니다.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'너는.. 끝까지 잡아서 죽인다.'); --
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'도망을 가서 숨는 건 경험상 현명한 결정이 아냐.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'걱정, 두려움 때문에 기회를 놓칠 순 없어, 밑져야 본전이잖아!');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'내 힘은 축복이 아닌 저주이자 분노에서 태어났다!');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'지는사람이 있어야 이기는게 의미가 있지.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'증언은 증거보다 힘이없어요.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'보물은 사라진게아니라 행방을모르는거야');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'니가 다 옳은거같지?');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'둘이 함께 내일의 너를 속이는거야.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'형! 외모가 중요한게 아니잖아');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'정답보다 중요한 건 답을 찾는 과정이다.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'마음 가는 대로 솔직하게,  진실은 언제나!');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'확신에 차있는 사람의 모습은 이런 거구나.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'내가 웃고 있구나');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'한 시간만 정상으로 돌아가면 뭘하고 싶어?');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'인생이 원래 이렇게 힘든 거에요?');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'이 정도면 목숨 걸어야 돼');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'자식이 잘못된 길로 가면 바로 잡아주는게 부모의 도리야');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'용서받을 기회는 아버님이 없애신 거예요.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'죄를 지었으면 벌을 받아 죽음으로써 도망치지 말고..!');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'특권을 타고 났다면 먼저 모범을 보여야 한다. ');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'신사는 그림자 속에 숨지 않지.');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'한번 악당은 평생 악당!');
INSERT INTO mTBLLINE (lSeq, movieLine) values ((SELECT nvl(max(lSeq), 0) + 1 FROm mTBLLINE) ,'싸움은 망설이는 놈이 지는 기다.');



--mTBLLINELIST 테이블

CREATE SEQUENCE tblLineList;

CREATE TABLE mTBLLINELIST -- 명대사리스트
(
	seq NUMBER PRIMARY KEY,
	mSeq NUMBER NOT NULL REFERENCES mTBLMOVIE(MOVIE_Seq),
	lSeq NUMBER NOT NULL REFERENCES mTBLLINE(LINE_Seq)
);

select * from mTBLLINELIST;

INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),1,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),1,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),2,tblLineList.nextval); -----
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),3,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),3,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),4,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),4,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),5,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),5,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),6,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),7,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),8,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),8,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),8,tblLineList.nextval);

INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),9,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),10,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),11,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),12,tblLineList.nextval);

INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),13,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),13,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),14,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),14,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),15,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),16,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),17,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),17,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),18,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),19,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),20,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),21,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),21,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),22,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),23,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),23,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),23,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),24,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),25,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),25,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),25,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),25,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),27,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),27,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),29,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),30,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),31,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),32,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),33,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),34,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),36,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),38,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),40,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),40,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),40,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),41,tblLineList.nextval);

INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),44,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),44,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),45,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),45,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),47,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),48,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),49,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),49,tblLineList.nextval);
INSERT INTO mTBLLINELIST (seq, mSeq, lSeq) values ((SELECT nvl(max(lSeq), 0) + 1 FROM mTBLLINELIST),50,tblLineList.nextval);




--mTBLOST 테이블
DROP TABLE mTBLOST;
DROP SEQUENCE oSeq;

CREATE SEQUENCE oSeq;

CREATE TABLE mTBLOST -- OST
(
	oSeq NUMBER PRIMARY KEY,
	name VARCHAR2(300) NOT NULL 
);

select * from mTBLOST;

INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'탑건 : 매버릭 (Top Gun: Maverick) (영화 OST)');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'Avatar: The Way of Water (Original Motion Picture Soundtrack)');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'공조2: 인터내셔날');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'Doctor Strange in the Multiverse of Madness (Original Motion Picture Soundtrack)');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'올빼미 OST');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'Thor: Love and Thunder (Original Motion Picture Soundtrack)');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'Minions: The Rise Of Gru (Original Motion Picture Soundtrack)');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'Black Panther: Wakanda Forever (Original Score)');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'Spider-Man: No Way Home (Original Motion Picture Soundtrack) 영화 <스파이더맨: 노 웨이 홈> OST');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'영웅');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'브로커');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'Fantastic Beasts: The Secrets of Dumbledore (Original Motion Picture Soundtrack)');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'인생은 아름다워 OST');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'정직한 후보 2 OST');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'Sing 2 (Original Motion Picture Soundtrack)');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'Uncharted (Original Motion Picture Soundtrack)');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'오늘 밤, 세계에서 이 사랑이 사라진다 해도 ');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'이상한 나라의 수학자 OST');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'고백 (영화 ''동감'' X 츄 (이달의 소녀))');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'습관 (Bye Bye) (영화 ''동감'' X meenoi (미노이))');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'개똥벌레 (영화 ''동감'' X 이무진)');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'너에게로 가는 길 (영화 ''동감'' X 엔플라잉 (N.Flying))');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'늘 지금처럼 (영화 ''동감'' X VIVIZ (비비지))');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'편지 (영화 ''동감'' X 윤하 (YOUNHA))');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'너를 위해 (영화 ''동감'' X 황치열)');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'Morbius (Original Motion Picture Soundtrack)');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'늑대사냥 OST');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'''뽀로로 극장판 드래곤캐슬 대모험'' OST');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'특송 OST');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'리멤버 OST');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'The King''s Man (Original Motion Picture Soundtrack)');
INSERT INTO mTBLOST (oSeq, name) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOST),'뜨거운 피 OST');

select * from mTBLOST;

commit;

--mTBLOSTLIST 테이블 
DROP TABLE mTBLOST;
DROP SEQUENCE oSeq;

CREATE SEQUENCE oSeq;



create sequence sost;

INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),2,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),3,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),5,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),6,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),8,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),11,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),12,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),13,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),15,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),19,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),21,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),22,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),23,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),24,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),25,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),25,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),26,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),27,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),32,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),34,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),38,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),39,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),40,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),40,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),40,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),40,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),40,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),40,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),41,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),42,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),43,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),44,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),47,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),48,sost.nextval);
INSERT INTO MTBLOSTLIST (seq, mSeq, oSeq) values ((SELECT nvl(max(oSeq), 0) + 1 FROM mTBLOSTLIST),50,sost.nextval);


------------------------------------

CREATE SEQUENCE LINE_Seq;

CREATE TABLE mTBLLINE	-- 명대사
(
	LINE_Seq NUMBER PRIMARY KEY,
	movieLine VARCHAR2(300) NOT NULL 
);

select * from mTBLLINE;

INSERT INTO mTBLLINE (LINE_Seq, movieLine) values (1,'누가 5야?');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'너 납치된 거야.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'돌아오는 법도 가르쳐야죠.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'우리 가족은 하나야.그것이 강점이자 약점이지.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'물의 길은 시작도 끝도 없다. 물의 길은 모든걸 잇는다.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'우리에겐 더 압도적인 승리가 필요하다.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'이번 전쟁은 의와 불의의 싸움이다.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'다 처먹으려다 전부를 잃는거야'); --
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'아무리 시대가 바껴도 수사는 발로 뛰는거고 수갑은 형사가 채우는거야.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'한 번 길을 잃었다고 해서, 영원히 잃은 건 아니야.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'같은 목표를 위해 잠시 한 배를 탄 것 뿐이야.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'무엇이 보이십니까?');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'학질이요...');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'때로는 눈 감고 사는 게 편할 때도 있습니다.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'우리는 세상을 지배하는 것이 아니라 자연에 종속되는 존재이다.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'오랜만이네?');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'내 길은 내가 선택하고 싶어.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'가장 작은 자도 무언가를 할 수 있다.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'보여줘, 우리가 누구인지');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'나락에 떨어져 본 자만이 위대한 지도자가 될 수 있지');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'할 수 있는데까진 해봐야죠, 끝까지');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'나는 여기 비행기에 탄 사람들이 전부 죽었으면 좋겠어요.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'큰 힘에는 큰 책임이 따르지');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'보고 싶을 때 볼 수 있는게 그거이 통일이다!');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'우는구나, 마침내.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'내가 그렇게 나쁩니까?');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'밥은 먹고 합시다 시간은 기니까.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'꼬레아 우라 꼬레아 우라 꼬레아 우라!');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'우두머리는 죽음을 두려워해야 돼, 그래야 다같이 살 길을 찾으려고 하거든');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'버려진 게 아니라 구해진거야.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'태어나줘서 고마워,');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'위험한 시대에는 위험한 자가 유세하지.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'덕분에 행복하게 잘 살다 갑니다.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'지금까지 살고 있으면 사이 좋은 거야.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'땅끝에 오면 끝일 줄 알았는데 끝에 보길도가 있네. 사는 것도 그랬으면 좋겠다.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'상황이 그러면 훌륭한 사람도 알 수 없는 게 세상이야.'); ----------
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'우리가 쓰러지면 남은 이들이 못 버팁니다.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'만약 그떄로 돌아간대도 같은 선택을 하실 겁니까?');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'긴 실을 더 만들어야 했습니다.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'너는.. 끝까지 잡아서 죽인다.'); --
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'도망을 가서 숨는 건 경험상 현명한 결정이 아냐.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'걱정, 두려움 때문에 기회를 놓칠 순 없어, 밑져야 본전이잖아!');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'내 힘은 축복이 아닌 저주이자 분노에서 태어났다!');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'지는사람이 있어야 이기는게 의미가 있지.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'증언은 증거보다 힘이없어요.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'보물은 사라진게아니라 행방을모르는거야');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'니가 다 옳은거같지?');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'둘이 함께 내일의 너를 속이는거야.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'형! 외모가 중요한게 아니잖아');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'정답보다 중요한 건 답을 찾는 과정이다.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'마음 가는 대로 솔직하게,  진실은 언제나!');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'확신에 차있는 사람의 모습은 이런 거구나.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'내가 웃고 있구나');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'한 시간만 정상으로 돌아가면 뭘하고 싶어?');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'인생이 원래 이렇게 힘든 거에요?');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'이 정도면 목숨 걸어야 돼');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'자식이 잘못된 길로 가면 바로 잡아주는게 부모의 도리야');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'용서받을 기회는 아버님이 없애신 거예요.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'죄를 지었으면 벌을 받아 죽음으로써 도망치지 말고..!');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'특권을 타고 났다면 먼저 모범을 보여야 한다. ');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'신사는 그림자 속에 숨지 않지.');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'한번 악당은 평생 악당!');
INSERT INTO mTBLLINE (LINE_Seq, movieLine) values ((SELECT nvl(max(LINE_Seq), 0) + 1 FROm mTBLLINE) ,'싸움은 망설이는 놈이 지는 기다.');
drop SEQUENCE LINE_Seq;

commit;