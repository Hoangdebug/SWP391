/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fa.task4.dao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Admin
 */
public class JDBCConnection {
	public static Connection getJDBCConnection() {
		Connection cone = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			cone = DriverManager.getConnection("jdbc:mysql://localhost:3306/company", "root", "12345");
		} catch (Exception e) {
		}
		return cone;
	}
  public static void main(String[] args) {
	 Connection cone = getJDBCConnection();
	if(cone!=null) {
		System.out.println("true");
	}else {
		System.out.println("fail");
	}
}
}
