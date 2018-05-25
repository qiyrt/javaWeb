/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mis.dao.impl;

import com.mis.dao.IStudentDao;
import com.mis.model.Student;
import com.mis.util.DatabaseBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class StudentDaoImpl implements IStudentDao {
    Connection  conn=null;
    Statement stmt=null;
    PreparedStatement psmt=null;
    ResultSet rs=null;
    @Override
    public List<Student> getAllStudent() {
        List<Student> students=new ArrayList<Student>();
         try{
          conn=DatabaseBean.getConnection();
          stmt=conn.createStatement();
          rs=stmt.executeQuery("select sno,sname,ssex,sage,sdept from student");
          while(rs.next()){
              Student stu =new Student();
              stu.setSno(rs.getString("sno"));
              stu.setSname(rs.getString("sname"));
              stu.setSsex(rs.getString("ssex"));
              stu.setSage(rs.getInt("sage"));
              stu.setSdept(rs.getString("sdept"));
              students.add(stu);
          }
         }catch(SQLException ex){
             ex.printStackTrace();
         }finally{
         DatabaseBean.close(rs,stmt,conn);
                 }
         return students;    
    }

    @Override
    public Student getStudent(String sno) {
       Student stu =new Student();
        try{
             conn=DatabaseBean.getConnection();
             psmt=conn.prepareStatement("select sno,sname,ssex,sage,sdept from student where sno=?");
             psmt.setString(1,sno);
             rs=psmt.executeQuery();
             while(rs.next()){
                stu.setSno(rs.getString("sno"));
                stu.setSname(rs.getString("sname"));
                stu.setSsex(rs.getString("ssex"));
                stu.setSage(rs.getInt("sage"));
                stu.setSdept(rs.getString("sdept"));
             }
        }catch(SQLException ex){
             ex.printStackTrace();
        }finally{
              DatabaseBean.close(rs,stmt,conn);
        }
        
        return stu;   
    }

    @Override
    public boolean findStudent(String sno) {
          Student stu =new Student();
            try{
                 conn=DatabaseBean.getConnection();
                 psmt=conn.prepareStatement("select sno,sname,ssex,sage,sdept from student where sno=?");
                 psmt.setString(1,sno);
                 rs=psmt.executeQuery();
                 return rs.next();
            }catch(SQLException ex){
                 ex.printStackTrace();
            }finally{
                  DatabaseBean.close(rs,stmt,conn);
            }
          return false;
    
    }

    @Override
    public boolean insertStudent(Student stu) {
         try{
            String sql="insert into student(sno,sname,ssex,sage,sdept) values(?,?,?,?,?)";
            conn=DatabaseBean.getConnection();
            psmt=conn.prepareStatement(sql);
            psmt.setString(1,stu.getSno());
            psmt.setString(2,stu.getSname());
            psmt.setString(3,stu.getSsex());
            psmt.setInt(4,stu.getSage());
            psmt.setString(5,stu.getSdept());
            psmt.executeUpdate();
            return true;
        }catch(SQLException ex){
             ex.printStackTrace();
        }finally{
             DatabaseBean.close(rs,stmt,conn);
        }
        return false;
    }

    @Override
    public boolean updateStudent(Student stu) {
        try{
            String sql="update student set sname=?,ssex=?,sage=?,sdept=? where sno=?";
            conn=DatabaseBean.getConnection();
            psmt=conn.prepareStatement(sql);
            psmt.setString(1,stu.getSname());
            psmt.setString(2,stu.getSsex());
            psmt.setInt(3,stu.getSage());
            psmt.setString(4,stu.getSdept());
            psmt.setString(5,stu.getSno());
            psmt.executeUpdate();
            return true;
        }catch(SQLException ex){
             ex.printStackTrace();
        }finally{
             DatabaseBean.close(rs,stmt,conn);
        }
        return false;        
    }

    @Override
    public boolean deleteStudent(String sno) {
       Student stu =new Student();
            try{
                 conn=DatabaseBean.getConnection();
                 psmt=conn.prepareStatement("delete from student where sno=?");
                 psmt.setString(1,sno);
                 rs=psmt.executeQuery();
                return true;
            }catch(SQLException ex){
                 ex.printStackTrace();
            }finally{
                  DatabaseBean.close(rs,stmt,conn);
            }
          return false;
    
    }
    
}
