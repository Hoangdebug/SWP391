/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fa.task4.dao;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import fa.task4.model.Users;

/**
 *
 * @author Admin
 */
public class RegisterDAO {
    public ArrayList getList(){
    ArrayList<Users> list = new ArrayList<>();
    
    
    try{
            String sql = "select * from user";
            PreparedStatement pr = JDBCConnection.getJDBCConnection().prepareStatement(sql);
            ResultSet rs = pr.executeQuery();
            while(rs.next()){
                Users temp = new Users();
                list.add(temp);
            }
            pr.close();
            
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    
    }
    public int insertUsers(Users p){
    int kq=0;
    try{
        String sql= "INSERT INTO `bus`.`user` (`username`, `password`, `fullName`, `gender`, `address`, `phoneNum`, `role`, `email`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
        PreparedStatement pr = JDBCConnection.getJDBCConnection().prepareStatement(sql);
        pr.setString(1,p.getUsername());
        pr.setString(2, p.getPassword());
        pr.setString(3,p.getFullName());
        pr.setString(4,p.getGender());
        pr.setString(5,p.getAddress());
        pr.setString(6,p.getPhoneNum());
        pr.setString(7,"Customer");
        pr.setString(8,p.getEmail());
      
        pr.execute();
    }catch (SQLException e) {
            e.printStackTrace();
        }
        return kq;
    
    }
     

}
