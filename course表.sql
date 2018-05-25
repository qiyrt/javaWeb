drop table sc;
drop table Course;
CREATE TABLE course(
 Cno VARCHAR2(4) PRIMARY KEY,
 Cname VARCHAR2(50),
Cpno VARCHAR2(4),--前导课
Ccredit NUMBER(2,0)
);
insert into course values('3','操作系统','1',3);
insert into course values('4','C 语言程序设计','1',4);
insert into course values('5','数据结构','4',4);
insert into course values('6','数据库','5',4);
insert into course values('7','信息系统','6',4);

select * from course;
delete from course where cno='8';
