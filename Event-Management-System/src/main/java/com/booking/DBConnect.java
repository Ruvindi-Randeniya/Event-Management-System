package com.booking;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static String sqlurl="jdbc:mysql://localhost:3306/eventplanning";
	private static String sqluser="root";
	private static String pass="1234";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");	
			con=DriverManager.getConnection(sqlurl,sqluser,pass);    
		}catch(Exception e) {
			System.out.println("Database Connection not Success");
		}        
		return con;
	}
}
