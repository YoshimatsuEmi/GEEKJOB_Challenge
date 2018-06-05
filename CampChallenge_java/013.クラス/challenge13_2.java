/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.io.*;
//import static java.lang.System.out;

/**
 *
 * @author 44yos
 */
public class challenge13_2 {
    protected String name;
    protected int age;
    
    protected void func(String name,int age){
        this.name = name;
        this.age = age;
    }
    
    void pprint(){
        
       // PrintWriter pw = new PrintWriter(new BufferedWriter(new FileWriter(file)));
        System.out.println("name:"+name+"<br>");
        System.out.println("age:"+age+"<br>");        
    }
}
