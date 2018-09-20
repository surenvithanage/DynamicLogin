/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login.dao;

import com.login.bean.InterfaceBean;
import com.login.bean.LoginBean;
import com.login.util.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

/**
 *
 * @author suren_v
 */
public class LoginDao {
    String rolePermission = "";
    String User="";
    Connection con = null;
    Statement statement = null;
    ResultSet resultSet = null;
    PreparedStatement preparedStatment = null;
    
    HashMap<String,String> interfaces = new HashMap<String,String>(); 
    
    ArrayList list = new ArrayList();     
    
    public String authenticateUser(LoginBean loginbean){
        String username = loginbean.getUsername();
        String password = loginbean.getPassword();
       
        String usernameDB = "";
        String passwordDB = "";
        String roleDB = "";
        String idDB = "";
        String roleId = "";
        
        try {
            con = DBConnection.createConnection();
            statement =  con.createStatement();
            String sql = "SELECT u.userid ,u.username , u.password , r.rolename , r.roleid FROM user u , role r where u.roleid = r.roleid ";
            resultSet = statement.executeQuery(sql);
            
            while(resultSet.next()){
                idDB = resultSet.getString("u.userid");
                usernameDB = resultSet.getString("u.username");
                passwordDB = resultSet.getString("u.password");
                roleDB = resultSet.getString("r.rolename");
                roleId = resultSet.getString("r.roleid");
                               
                if(username.equals(usernameDB) && password.equals(passwordDB)){
                    loginbean.setId(idDB);
                    loginbean.setRole(roleDB);
                    loginbean.setRoleId(roleId);
                    rolePermission = roleDB;    
                }
            }

        } catch (SQLException ex) {
            Logger.getLogger(LoginDao.class.getName()).log(Level.SEVERE, null, ex);
        }  
      
        return "Invalid Credentails";
    }
 
/* METHOD 2    public Map<String, String> Details(){
        try {
            String query = "SELECT i.interfaceid , i.name, i.url from role r , privilage p , interface i where r.roleid = p.roleid and p.interfaceid = i.interfaceid and r.rolename ='"+rolePermission+"'";
            resultSet = statement.executeQuery(query);
            
            while(resultSet.next()){
                
                interfaces.put(resultSet.getString("i.name"), resultSet.getString("i.url"));
               
            }
            
//             for(Map.Entry m:interfaces.entrySet()){  
//                System.out.println(m.getKey()+" "+m.getValue());  
//                }  
            
        } catch (SQLException ex) {
            Logger.getLogger(LoginDao.class.getName()).log(Level.SEVERE, null, ex);
        }
            
         return interfaces;   
    }
    
    */
    
 
    public ArrayList<InterfaceBean> GetPages(){
        ArrayList<InterfaceBean> al = new ArrayList<>();
        try {
            String query = "SELECT i.interfaceid , i.name, i.url from role r , privilage p , interface i where r.roleid = p.roleid and p.interfaceid = i.interfaceid and r.rolename ='"+rolePermission+"'";
            resultSet = statement.executeQuery(query);
            
            while(resultSet.next()){
                InterfaceBean i = new InterfaceBean(resultSet.getString("i.name"), resultSet.getString("i.url"), resultSet.getString("i.interfaceid"));
                al.add(i);
            }
  
        } catch (SQLException ex) {
            Logger.getLogger(LoginDao.class.getName()).log(Level.SEVERE, null, ex);
        }
            
         return al;  
    }

   
}
