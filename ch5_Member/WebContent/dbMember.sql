select * from student;

select * from member;

-- 실행할 때는 앞에 주석 빼고 블럭선택해서 실행
-- drop table member; --테이블을 지우는 것(삭제하는것은 꼭 주석처리 후 사용할 것!!)

CREATE TABLE member(
       id VARCHAR2(15),
       pass VARCHAR2(10),
       name VARCHAR2(15),
       age NUMBER,
       gender VARCHAR2(10),
       email VARCHAR2(30),
       status NUMBER default 0,
       PRIMARY Key(id)
   );

insert into member(id, pass, name, age, gender, email, status) 
   values('abcd','1111',＇KIM',44,'여자', 'aaa@aaa.com', 0);

insert into member(id, pass, name, age, gender, email, status) 
   values('admin','1111',＇LEE',23,'남자', 'bbb@bbb.com', 0);
