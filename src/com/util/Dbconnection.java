package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbconnection {

	public static Connection getConnection() {
		// TODO Auto-generated method stub
		String driver = "com.mysql.cj.jdbc.Driver"; // class name
		String url = "jdbc:mysql://localhost:3306/tourproject"; // path ,url,database
		String userName = "root";
		String password = "12345678";

		try {
			Class.forName(driver); // to load the driver class in to the menory we use class.forname method
									// ....class mathi import karavva mate class.forName , you can import
									// java.lang.util--> Class.forName(Scanner.class)
			Connection con = DriverManager.getConnection(url, userName, password); // get/open connection from driver

			System.out.println("done....");
			return con;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
