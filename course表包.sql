
create or replace package courses
is
  type mycursor is ref cursor;
 ------1、查询所有课程信息----------------
  procedure select_all(outcursor out mycursor);
 ------2、查询指定课程号的课程信息记录------
  procedure select_all_by_cno(cno in varchar2, outcursor out mycursor);
 ------3、插入课程信息记录（课程号、课程名、前导课程、课程学分）-------
  procedure insert_info(cno in varchar2,cname in varchar2,cpno in varchar2,pcredit in number);
 ------4、删除指定课程号课程信息记录-------
  procedure delete_by_cno(pcno in varchar2);
 ------5、更新课程信息记录（课程号、课程名、前导课程、课程学分）-------
  procedure update_info(pcno in varchar2,pcname in varchar2,pcpno in varchar2,pcredit in number);

end courses;

----------------------------------------------------
--包体
--------------------------------------------------------
create or replace package body courses is

 ------1、查询所有课程信息----------------
  procedure select_all(outcursor out mycursor)
  as
  begin
    open outcursor for select * from course;
  end select_all;
  ------2、查询指定课程号的课程信息记录------ 
  procedure select_all_by_cno(
    cno in varchar2,
    outcursor out mycursor
   )
  as
  begin
    open outcursor for select * from course where cno = cno;
    --使用变量p_sno替换:sno
    --using p_sno;
  end select_all_by_cno;
   ------3、插入课程信息记录（课程号、课程名、前导课程、课程学分）-------
  procedure insert_info(
    cno in varchar2
    ,cname in varchar2
    ,cpno in varchar2
    ,pcredit in number
    )
  as
  begin
      insert into course(cno,cname,cpno,ccredit) 
               values(cno,cname,cpno,pcredit);
  end insert_info;

   ------4、删除指定课程号课程信息记录-------
  procedure delete_by_cno(
    pcno in varchar2)
  as
  begin
    delete from course where cno = pcno;
  end delete_by_cno;

 ------5、更新学生信息记录（学号、姓名、性别、年龄、系部字段）-------
  procedure update_info(
    pcno in varchar2
    ,pcname in varchar2
    ,pcpno in varchar2
    ,pcredit in number)
  as
  begin
     update course set cname=pcname, cpno=pcpno,ccredit=pcredit where cno=pcno;
  end update_info;
end courses;
