CREATE TABLE EMP_MEMBER(
	id VARCHAR2(100) PRIMARY KEY,
	password VARCHAR2(100) NOT NULL,
	com_name VARCHAR2(100) NOT NULL,
	member_group VARCHAR2(100) NOT NULL,
	reg_date DATE NOT NULL
)


select * from EMP_MEMBER;

INSERT INTO EMP_MEMBER(id,password,com_name,member_group,reg_date) values('samsung','a','삼성전자','기업',sysdate)

INSERT INTO EMP_MEMBER(id,password,com_name,member_group,reg_date) values('kakao','123','카카오','기업',sysdate);