/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mis.dao;

import com.mis.model.Student;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface IStudentDao {
     public List<Student> getAllStudent();
     public Student getStudent(String sno);
     public boolean findStudent(String sno);
     public boolean insertStudent(Student stu);
     public boolean updateStudent(Student stu);
     public boolean deleteStudent(String sno);
      
}
