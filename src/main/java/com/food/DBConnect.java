package com.food;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/hotel_management";
	private static String userName = "root";
	private static String password = "123456";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		
			con = DriverManager.getConnection(url, userName, password);
			
		}catch(Exception e) {
			System.out.println("Databse Connectionis not success");
		}
		return con;
		
	}

}
