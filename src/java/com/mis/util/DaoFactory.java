/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mis.util;

import com.mis.dao.IStudentDao;
import com.mis.dao.impl.StudentDaoImpl;

/**
 *
 * @author Administrator
 */
public class DaoFactory {
    public static  IStudentDao getStudentDao(){
         return new StudentDaoImpl();
    }
}
