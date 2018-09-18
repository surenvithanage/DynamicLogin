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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author suren_v
 */
public class DepositDao {
    Connection con = null;
    Statement statement = null;
    ResultSet resultSet = null;
    public String getPermissions(){
       
        try {
            statement = con.createStatement();
            String sql = "select f.name from function f , func_interface fi where fi.interfaceid = 2 and fi.roleid = 2 and f.functionid = fi.functionid";
            resultSet = statement.executeQuery(sql);
            
            while(resultSet.next()){
                System.out.println(resultSet.getString("name"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DepositDao.class.getName()).log(Level.SEVERE, null, ex);
        }
               
        return null;
    }
}
