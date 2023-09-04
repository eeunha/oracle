-- ex25_transaction.sql

/*
	트랜잭션, Transaction
	- 데이터를 조작하는 업무의 물리적(시간적) 단위(행동의 범위)
	- 1개 이상의 명령어를 묶어 놓은 단위
	
	트랜잭션 관련 명령어, DCL(TCL)
	1. COMMIT
	2. ROLLBACK
	3. SAVEPOINT

*/

CREATE TABLE tblTrans
AS
SELECT name, buseo, jikwi FROM tblInsa WHERE city = '서울'; -- 데이터만 카피. 업무용은 아니고 확인용으로 사용

SELECT * FROM tbltrans;

-- 우리가 하는 행동 > 시간순으로 기억(*****)

-- 로그인 직후(접속) > 트랜잭션이 시작됨
-- 트랜잭션 > 모든 명령어 (X) > INSERT, UPDATE, DELETE 명령어만 트랜잭션에 포함된다.
-- INSERT, UPDATE, DELETE 작업 > 오라클 적용(x), 임시 메모리 적용(o)

DELETE FROM tblTrans WHERE name = '박문수'; -- 트랜잭션에 포함

SELECT * FROM tbltrans; -- 트랜잭션과 무관

COMMIT;
ROLLBACK;	-- 현재 트랜잭션에서 했던 모든 행동을 데이터베이스에 적용하지 말고 취소해라!!

SELECT * FROM tbltrans;

DELETE FROM tblTrans WHERE name = '박문수';

SELECT * FROM tbltrans;

COMMIT; -- 현재 트랜잭션에서 했던 모든 행동을 데이터베이스에 적용한다.

SELECT * FROM tbltrans;

DELETE FROM tbltrans WHERE name = '김영년';

SELECT * FROM tbltrans;

COMMIT;

SELECT * FROM tbltrans;

INSERT INTO tbltrans VALUES ('호호호', '기획부', '사원');

UPDATE tbltrans SET jikwi = '상무' WHERE name = '홍길동';

SELECT * FROM tbltrans;

COMMIT;


/*
	트랜잭션이 언제 시작해서 ~ 언제 끝나는지?
	
	새로운 트랜잭션이 시작하는 시점
	1. 클라이언트 접속 직후
	2. commit 실행 직후
	3. rollback 실행 직후

	현재 트랜잭션이 종료되는 시점
	1. commit > 현재 트랜잭션을 DB에 반영
	2. rollback > 현재 트랜잭션을 종료 + DB에 반영
	3. 클라이언트 접속 종료
		a. 정상 종료
			- 현재 트랜잭션에 아직 반영이 안된 명령어가 남아있는데 > 어떻게? 질문
		b. 비정상 종료
			- 메모리 상(트랜잭션)의 모든 작업이 반영이 될만한 틈이 없이 강제 종료
			- rollback
	4. DDL 실행
		- CREATE, ALTER, DROP > 실행 > 즉시 commit 실행
		- DDL 성격 > 구조 변경 > 데이터 영향 끼침 > 사전에 미리 저장(commit)
		 

*/

UPDATE tbltrans SET jikwi = '부장' WHERE name = '홍길동';

SELECT * FROM tbltrans;

COMMIT;

SELECT * FROM tbltrans;

UPDATE tbltrans SET jikwi = '상무' WHERE name = '홍길동';

SELECT * FROM tbltrans;

UPDATE tbltrans SET jikwi = '부장' WHERE name = '홍길동';

SELECT * FROM tbltrans;

COMMIT;

UPDATE tbltrans SET jikwi = '사장' WHERE name = '홍길동';

SELECT * FROM tbltrans;


-- 시퀀스 객체 생성
CREATE SEQUENCE secTrans; -- 현재 트랜잭션 COMMIT 동반

ROLLBACK;

SELECT * FROM tbltrans;


