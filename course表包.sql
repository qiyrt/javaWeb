
create or replace package courses
is
  type mycursor is ref cursor;
 ------1����ѯ���пγ���Ϣ----------------
  procedure select_all(outcursor out mycursor);
 ------2����ѯָ���γ̺ŵĿγ���Ϣ��¼------
  procedure select_all_by_cno(cno in varchar2, outcursor out mycursor);
 ------3������γ���Ϣ��¼���γ̺š��γ�����ǰ���γ̡��γ�ѧ�֣�-------
  procedure insert_info(cno in varchar2,cname in varchar2,cpno in varchar2,pcredit in number);
 ------4��ɾ��ָ���γ̺ſγ���Ϣ��¼-------
  procedure delete_by_cno(pcno in varchar2);
 ------5�����¿γ���Ϣ��¼���γ̺š��γ�����ǰ���γ̡��γ�ѧ�֣�-------
  procedure update_info(pcno in varchar2,pcname in varchar2,pcpno in varchar2,pcredit in number);

end courses;

----------------------------------------------------
--����
--------------------------------------------------------
create or replace package body courses is

 ------1����ѯ���пγ���Ϣ----------------
  procedure select_all(outcursor out mycursor)
  as
  begin
    open outcursor for select * from course;
  end select_all;
  ------2����ѯָ���γ̺ŵĿγ���Ϣ��¼------ 
  procedure select_all_by_cno(
    cno in varchar2,
    outcursor out mycursor
   )
  as
  begin
    open outcursor for select * from course where cno = cno;
    --ʹ�ñ���p_sno�滻:sno
    --using p_sno;
  end select_all_by_cno;
   ------3������γ���Ϣ��¼���γ̺š��γ�����ǰ���γ̡��γ�ѧ�֣�-------
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

   ------4��ɾ��ָ���γ̺ſγ���Ϣ��¼-------
  procedure delete_by_cno(
    pcno in varchar2)
  as
  begin
    delete from course where cno = pcno;
  end delete_by_cno;

 ------5������ѧ����Ϣ��¼��ѧ�š��������Ա����䡢ϵ���ֶΣ�-------
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
