package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bean.UserBean;

import com.util.Dbconnection;

public class userDao {

	public boolean insertUser(UserBean user) {
		Connection con = Dbconnection.getConnection(); // connection done
		try {
			PreparedStatement pstmt = con.prepareStatement(
					"insert into users (firstName,lastName,email,mobileNo,yourLocation,placesToVisit,budget) values(?,?,?,?,?,?,?)");

			// after making userbean
			pstmt.setString(1, user.getFirstName());
			pstmt.setString(2, user.getLastName());
			pstmt.setString(3, user.getEmail());
			pstmt.setString(4, user.getMobileNo());
			pstmt.setString(5, user.getYourLocation());
			pstmt.setString(6, user.getPlacesToVisit());
			pstmt.setString(7, user.getBudget());
			int i = pstmt.executeUpdate();// run // return type integer that how many rows are affected..
			if (i == 0) {
				return false;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public ArrayList<UserBean> getAllUsers() {
		ArrayList<UserBean> users = new ArrayList<UserBean>();

		try {
			Connection con = Dbconnection.getConnection();

			PreparedStatement pstmt = con.prepareStatement("select * from users");

			ResultSet rs = pstmt.executeQuery(); // ResultSet(interface)--> temporary storage where data can be store!

			// ResultSet have bunch of records in table are stored..
			// resultset--> 1st row bahar kadhvani!
			// row arraylist ne aapi devani!
			// Userbean ne aapvani

			// rs --> cursor
			// 2nd row --> move cursor

			while (rs.next()) // return true or false...1 row pr ja!return 1st row
			{
				UserBean userBean = new UserBean();

				userBean.setUserId(rs.getInt("userId"));
				userBean.setFirstName(rs.getString("firstName"));
				userBean.setLastName(rs.getString("lastName"));
				userBean.setEmail(rs.getString("email"));
				userBean.setMobileNo(rs.getString("mobileNo"));
				userBean.setYourLocation(rs.getString("yourLocation"));
				userBean.setPlacesToVisit(rs.getString("placesToVisit"));
				userBean.setBudget(rs.getString("budget"));
				users.add(userBean);

			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return users;
	}

	public boolean deleteUser(int userId) {
		Connection con = null;
		boolean flag = false;
		PreparedStatement pstmt = null;
		

		try
		{
			con = Dbconnection.getConnection();
			pstmt = con.prepareStatement("delete from users where userId = ? ");
			pstmt.setInt(1, userId);

			int record = pstmt.executeUpdate();
			if (record != 0) 
			{
				flag = true;
			}
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		} 
		finally 
		{
			try 
			{
				con.close();
			} 
			catch (SQLException e)
			{
				e.printStackTrace();
			}
		}
		return flag;
	}
	
	public boolean updateUser(int userId)
	{
		Connection con = null;
		boolean flag = false;
		PreparedStatement pstmt = null;

		try {
			con = Dbconnection.getConnection();
			pstmt = con.prepareStatement("update users set firstName=?,email=? where userId = ? ");
			
			UserBean user =new UserBean();
			
			pstmt.setString(1,user.getFirstName());
			pstmt.setString(2,user.getEmail());
			pstmt.setInt(3, userId);

			int record = pstmt.executeUpdate();
			if (record != 0) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return flag;
	}
	
	
	public UserBean getUserById(int userId) {

		try (Connection con = Dbconnection.getConnection();
				PreparedStatement pstmt = con.prepareStatement("select * from users where userId = ? ");) {
			pstmt.setInt(1, userId);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			UserBean user = new UserBean();

			user.setUserId(rs.getInt("userId"));
			user.setFirstName(rs.getString("firstName"));
			user.setEmail(rs.getString("email"));

			return user; 
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}
	
	
	
}
