create table emp (
emp_id varchar2(10) primary key,
ename varchar2(10),
salary number(5),
depart varchar2(10)
);

-- select * from emp;

insert into emp values('a111', '홍길동', 2000,'관리');
insert into emp values('a222', '이순신', 4000,'개발');

 --   drop table emp;
