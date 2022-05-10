CREATE TABLE CATEGORY(
	car_no NUMBER PRIMARY KEY,
	car_name VARCHAR2(100) NOT NULL
)

DROP TABLE CATEGORY

INSERT INTO CATEGORY(car_no,car_name) values(1,'회사이야기')
INSERT INTO CATEGORY(car_no,car_name) values(2,'취미생활이야기');
INSERT INTO CATEGORY(car_no,car_name) values(3,'주식이야기');

SELECT car_no, car_name FROM CATEGORY

CREATE TABLE EMP_MEMBER(
	id VARCHAR2(100) PRIMARY KEY,
	password VARCHAR2(100) NOT NULL,
	com_name VARCHAR2(100) NOT NULL,
	member_group VARCHAR2(100) NOT NULL,
	reg_date DATE NOT NULL
)

INSERT INTO EMP_MEMBER(id,password,com_name,member_group,reg_date) values('samsung','a','삼성전자','기업',sysdate)


CREATE TABLE FAQ(
	faq_no NUMBER PRIMARY KEY,
	answer CLOB NOT NULL
)

CREATE TABLE  CMU_BOARD(
	board_no NUMBER PRIMARY KEY,
	title VARCHAR2(100) NOT NULL,
	car_no NUMBER NOT NULL,
	content CLOB NOT NULL,
	time_posted DATE NOT NULL,
	like_no NUMBER DEFAULT 0,
	hits NUMBER DEFAULT 0,
	id VARCHAR2(100) NOT NULL,
	CONSTRAINT cmu_board_id_fk FOREIGN KEY(id) REFERENCES EMP_MEMBER(id),
	CONSTRAINT cmu_board_carno_fk FOREIGN KEY(car_no) REFERENCES CATEGORY(car_no)
)

CREATE SEQUENCE cmu_board_seq;

INSERT INTO CMU_BOARD(board_no,title,car_no,content,time_posted,like_no,hits,id)
						values(cmu_board_seq.nextval,'안녕하세요','1','안녕하세요',sysdate,1,1,'samsung')
	
SELECT * FROM 	CMU_BOARD		

-- 커뮤니티 게시물 테스트
SELECT c.board_no as 게시물번호, c.title as 제목,c.content as 본문,c.like_no as 좋아요,c.hits as 조회수,ca.car_name as 카테고리
FROM CMU_BOARD c , CATEGORY ca
WHERE c.car_no= ca.car_no;

--카테고리별 테스트
SELECT title,like_no,hits FROM CMU_BOARD WHERE car_no= '1';

--detail sql 테스트

SELECT c.title, c.content, c.hits, c.time_posted, m.com_name
FROM CMU_BOARD c , EMP_MEMBER m
WHERE c.id = m.id AND c.board_no = 7;

-- 게시판 수정 테스트
UPDATE CMU_BOARD SET title='배드민턴',content='좋아하시는분??', car_no='1' WHERE board_no = 22

CREATE TABLE LIKE_COUNT(
	id VARCHAR2(100),
	board_no NUMBER,
	CONSTRAINT like_id_fk FOREIGN KEY(id) REFERENCES EMP_MEMBER(id),
	CONSTRAINT like_borad_no_fk FOREIGN KEY(board_no) REFERENCES CMU_BOARD(board_no),
	CONSTRAINT like_pk_shares PRIMARY KEY(id,board_no)
)

CREATE TABLE BOARD_COMMENT(
	comment_no NUMBER PRIMARY KEY,
	comment_content VARCHAR2(300) NOT NULL,
	time_posted DATE NOT NULL,
	id VARCHAR2(100) NOT NULL,
	board_no NUMBER NOT NULL,
	CONSTRAINT comment_id_pk FOREIGN KEY(id) REFERENCES EMP_MEMBER(id),
	CONSTRAINT comment_borad_no_fk FOREIGN KEY(board_no) REFERENCES CMU_BOARD(board_no)
)

CREATE SEQUENCE board_comment_seq;

--댓글 테스트
INSERT INTO BOARD_COMMENT(comment_no, comment_content, time_posted,id,board_no)
                           VALUES(board_comment_seq.nextval,'좋아요~!',sysdate,'samsung','7')
        
                           
                         
select * from BOARD_COMMENT

-- 게시판별 댓글 리스트
SELECT co.comment_no,co.comment_content, co.time_posted
FROM BOARD_COMMENT co , CMU_BOARD cmu
WHERE co.board_no = cmu.board_no AND co.board_no = 9

CREATE TABLE REVIEW(
	re_no NUMBER PRIMARY KEY,
	title VARCHAR2(100) NOT NULL,
	content CLOB NOT NULL,
	time_posted DATE NOT NULL,
	rating NUMBER DEFAULT 0,
	hits NUMBER DEFAULT 0,
	id VARCHAR2(100) NOT NULL,
	CONSTRAINT review_id_pk FOREIGN KEY(id) REFERENCES EMP_MEMBER(id)
)

CREATE SEQUENCE review_seq;


DROP TABLE REVIEW

DROP TABLE EMPLOYMENT
DROP sequence employment_seq

CREATE SEQUENCE employment_seq;

CREATE TABLE EMPLOYMENT(
	emp_no NUMBER PRIMARY KEY,
	title VARCHAR2(100) NOT NULL,
	emp_group VARCHAR2(100) NOT NULL,
	emp_mail VARCHAR2(100) NOT NULL,
	content CLOB NOT NULL,
	time_posted DATE NOT NULL,
	hits NUMBER DEFAULT 0,
	id VARCHAR2(100) NOT NULL,
	CONSTRAINT employment_id_pk FOREIGN KEY(id) REFERENCES EMP_MEMBER(id)
)


SELECT * FROM EMPLOYMENT

SELECT * FROM REVIEW

SELECT * FROM EMPLOYMENT

SELECT * FROM REVIEW

SELECT * FROM EMPLOYMENT

SELECT * FROM REVIEW

SELECT * FROM EMPLOYMENT

SELECT * FROM REVIEW

SELECT * FROM EMPLOYMENT

SELECT * FROM REVIEW



--내꺼 
SELECT r.re_no, m.com_name, r.title, r.hits, r.time_posted
FROM REVIEW r, EMP_MEMBER m 
WHERE  r.id=m.id
ORDER BY r.re_no DESC

--강사님꺼
SELECT rnum,no,title,time_posted,hits
FROM(
	SELECT ROW_NUMBER() OVER(ORDER BY no DESC)as rnum, no,title,TO_CHAR(time_posted,'YYYY.MM.DD') AS time_posted,hits,id
	FROM board
)
WHERE rnum BETWEEN 1 AND 5

--TEST
--step1
SELECT ROW_NUMBER() OVER(ORDER BY re_no DESC)as rnum, re_no,title ,hits
FROM review

--step2
SELECT rnum, re_no, title, hits
FROM(
	SELECT ROW_NUMBER() OVER(ORDER BY re_no DESC)as rnum, re_no,title ,hits
	FROM review
)
WHERE rnum BETWEEN 1 AND 5

--step3
SELECT r.rnum, r.re_no, m.com_name, r.title, r.hits
FROM(
	SELECT ROW_NUMBER() OVER(ORDER BY re_no DESC)as rnum, re_no,title,hits,id
	FROM REVIEW
)r, EMP_MEMBER m
WHERE r.id=m.id AND rnum BETWEEN 1 AND 5


--강사님 oracel sql

SELECT b.rnum,b.no,b.title,b.time_posted,b.hits,m.name
FROM(
	SELECT ROW_NUMBER() OVER(ORDER BY no DESC)as rnum, no,title,TO_CHAR(time_posted,'YYYY.MM.DD') AS time_posted,hits,id
	FROM board
) b, member m 
WHERE b.id=m.id AND rnum BETWEEN 1 AND 5

--constraint myboard_fk FOREIGN KEY(id) REFERENCES member(id)