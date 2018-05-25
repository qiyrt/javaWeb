/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mis.dao;

import com.mis.model.Course;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface ICourseDao {
     public List<Course> getAllCourse();
     public Course getCourse(String cno);
     public boolean findCourse(String cno);
     public boolean insertCourse(Course course);
     public boolean updateCourse(Course course);
     public boolean deleteCourse(String cno);
}
