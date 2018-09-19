/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login.connection;

import com.login.bean.FunctionBean;
import com.login.bean.LoginBean;

import com.login.util.DBConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author suren_v
 */
public class function {

    public ArrayList<FunctionBean> getFunction(String roleid , String interfaceid){
        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;
        LoginBean loginBean = new LoginBean();
        con = DBConnection.createConnection();
       
        ArrayList<FunctionBean> function = new ArrayList<>();
        
        try {
            statement = con.createStatement();
            String sql = "select f.name , f.url , f.functionid from function f , func_interface fi where fi.interfaceid = '"+interfaceid+"' and fi.roleid ='"+roleid+"' and f.functionid = fi.functionid";
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
                FunctionBean functionBean = new FunctionBean(resultSet.getString("f.functionid") , resultSet.getString("f.name"), resultSet.getString("f.url"));
                function.add(functionBean);
            }

        } catch (SQLException ex) {
            Logger.getLogger(WithdrawServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return function;
    }
        
}
