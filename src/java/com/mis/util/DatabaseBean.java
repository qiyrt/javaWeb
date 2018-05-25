/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mis.util;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import oracle.jdbc.pool.OracleDataSource;

/**
 *
 * @author Administrator
 */
public class DatabaseBean {
     public static Connection getConnection() throws SQLException{
                String  jdbcUrl="jdbc:oracle:thin:@localhost:1521/xe";
                String  userid="test";
                String  password="oracle";
                OracleDataSource ds = new OracleDataSource();
                ds.setURL(jdbcUrl);
                return ds.getConnection(userid,password);
        
        
     }
     
     public static void close(ResultSet rs,Statement st,Connection conn){
         try{
             if(rs!=null){
                 rs.close();
             }
             if(st!=null){
                 st.close();
             }
             if(conn!=null){
                 conn.close();
             }
         }
         catch(SQLException ex){
            // ex.printStackTrace();
              Logger.getLogger(DatabaseBean.class.getName()).log(Level.SEVERE, null, ex);
         }
     }
}
