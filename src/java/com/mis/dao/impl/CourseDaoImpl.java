/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mis.dao.impl;

import com.mis.dao.ICourseDao;
import com.mis.model.Course;
import com.mis.util.DatabaseBean;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author Administrator
 */
public class CourseDaoImpl implements ICourseDao{
    Connection  conn=null;
   // Statement stmt=null;
   // PreparedStatement psmt=null;
    ResultSet rs=null;
    CallableStatement cs = null;
    
    @Override
    public List<Course> getAllCourse() {
        List<Course> courses=new ArrayList<Course>();
         try{
          conn=DatabaseBean.getConnection();
          cs = conn.prepareCall("{call courses.select_all(?)}");
         // stmt=conn.createStatement();
          cs.registerOutParameter(1, OracleTypes.CURSOR);
          cs.execute();
          rs = (ResultSet) cs.getObject(1);
         // rs=stmt.executeQuery("select cno,cname,cpno,ccredit from course");
          while(rs.next()){
              Course cou =new Course();
              cou.setCno(rs.getString("cno"));
              cou.setCname(rs.getString("cname"));
              cou.setCpno(rs.getString("cpno"));
              cou.setCredit(rs.getInt("ccredit"));
              courses.add(cou);
          }
         }catch(SQLException ex){
             ex.printStackTrace();
         }finally{
        // DatabaseBean.close(rs,stmt,conn);
         DatabaseBean.close(rs,cs,conn);
         
                 }
         return courses;  
    }

    @Override
    public Course getCourse(String cno) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean findCourse(String cno) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean insertCourse(Course course) {
        try{
            //String sql="insert into course(cno,cname,cpno,ccredit) values(?,?,?,?)";
            conn=DatabaseBean.getConnection();
            cs = conn.prepareCall("{call courses.insert_info(?,?,?,?)}");
           // cs=conn.prepareStatement(sql);
            cs.setString(1,course.getCno());
            cs.setString(2,course.getCname());
            cs.setString(3,course.getCpno());
            cs.setInt(4,course.getCredit());
            cs.executeUpdate();
            return true;
        }catch(SQLException ex){
             ex.printStackTrace();
        }finally{
             //DatabaseBean.close(rs,stmt,conn);
             DatabaseBean.close(rs,cs,conn);
        }
        return false;
       }

    @Override
    public boolean updateCourse(Course course) {
       try{
            //String sql="update course set cname=?,cpno=?,ccredit=? where cno=?";
            conn=DatabaseBean.getConnection();
            cs = conn.prepareCall("{call courses.update_info(?,?,?,?)}");
           // psmt=conn.prepareStatement(sql);
            cs.setString(1,course.getCno());
            cs.setString(2,course.getCname());
            cs.setString(3,course.getCpno());
            cs.setInt(4,course.getCredit());
           
            cs.executeUpdate();
            return true;
        }catch(SQLException ex){
             ex.printStackTrace();
        }finally{
             DatabaseBean.close(rs,cs,conn);
        }
        return false;       
    }

    @Override
    public boolean deleteCourse(String cno) {
       Course course =new Course();
            try{
                 conn=DatabaseBean.getConnection();
                 cs = conn.prepareCall("{call courses.delete_by_cno(?)}");
                 //psmt=conn.prepareStatement("delete from course where cno=?");
                 cs.setString(1,cno);
                 rs=cs.executeQuery();
                return true;
            }catch(SQLException ex){
                 ex.printStackTrace();
            }finally{
                  DatabaseBean.close(rs,cs,conn);
            }
          return false;
    }
    
}
