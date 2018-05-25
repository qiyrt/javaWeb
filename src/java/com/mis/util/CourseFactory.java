/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mis.util;

import com.mis.dao.ICourseDao;
import com.mis.dao.impl.CourseDaoImpl;

/**
 *
 * @author Administrator
 */
public class CourseFactory {
     public static  ICourseDao getCourseDao(){
         return new CourseDaoImpl();
    }
}
