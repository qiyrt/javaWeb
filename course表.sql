drop table sc;
drop table Course;
CREATE TABLE course(
 Cno VARCHAR2(4) PRIMARY KEY,
 Cname VARCHAR2(50),
Cpno VARCHAR2(4),--ǰ����
Ccredit NUMBER(2,0)
);
insert into course values('3','����ϵͳ','1',3);
insert into course values('4','C ���Գ������','1',4);
insert into course values('5','���ݽṹ','4',4);
insert into course values('6','���ݿ�','5',4);
insert into course values('7','��Ϣϵͳ','6',4);

select * from course;
delete from course where cno='8';
