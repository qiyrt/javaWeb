/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mis.model;

/**
 *
 * @author Administrator
 */
public class Course {
    private String cno;
    private String cname;
    private String cpno;
    private int credit;
    public  Course(){
    }
    public Course(String cno,String cname,String cpno,int credit){
        this.cno=cno;
        this.cname=cname;
        this.cpno=cpno;
        this.credit=credit;
    }
    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCpno() {
        return cpno;
    }

    public void setCpno(String cpno) {
        this.cpno = cpno;
    }

    public int getCredit() {
        return credit;
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }
}
