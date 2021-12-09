create table memo_Test (
  num number,
  name varchar2(15),
  title varchar2(100),
  pass varchar2(10),
  indate date default sysdate,
  primary key(num)
  );

  
-- ORACLE SEQUENCE : 오라클에서 자동 증가값 만들기
-- AUTO_SEQ_NUMBER 시퀀스를 생성, 초기값을 1부터 1씩
--  증가하며 최대값은 1000 으로 생성

    CREATE SEQUENCE AUTO_SEQ_NUMBER
         INCREMENT BY 1
         START WITH 1
         MAXVALUE  1000
         NOCACHE
         NOCYCLE;

         
INSERT INTO memo_Test(num, name, title, pass) VALUES(AUTO_SEQ_NUMBER.NEXTVAL,'aaaa', 'TEST','1111');
--select * from memo_Test;

