/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jums;

import java.io.Serializable;

/**
 *
 * @author 44yos
 */
public class UserDataBeans implements Serializable{
    private String name = "";
    private int year = 0;
    private int month = 0;
    private int day = 0;
    private int type = 0;
    private String tell = "";
    private String comment = "";
    
    public UserDataBeans(){}
    
    public String getName(){
        return this.name;
    }
    public void setName(String name){
        if(!name.trim().equals("")){
            this.name = name;
        }
    }
    
    public int getYear(){
        return this.year;
    }
    public void setYear(String year){
        if(!year.equals("")){
            this.year = Integer.parseInt(year);
        }
    }
    
    public int getMonth(){
        return this.month;
    }
    public void setMonth(String month){
        if(!month.equals("")){
            this.month = Integer.parseInt(month);
        }
    }
    
    public int getDay(){
        return this.day;
    }
    public void setDay(String day){
        if(!day.equals("")){
            this.day = Integer.parseInt(day);
        }
    }
    
    public int getType(){
        return this.type;
    }
    public void setType(String type){
        if(!type.equals("")){
            this.type = Integer.parseInt(type);
        }
    }
    
    public String getTell(){
        return this.tell;
    }
    public void setTell(String tell){
        if(!tell.trim().equals("")){
            this.tell = tell;
        }
    }
    
    public String getComment(){
        return this.comment;
    }
    public void setComment(String comment){
        if(!tell.trim().equals("")){
            this.comment = comment;
        }
    }
}
