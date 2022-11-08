package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bean.PackageBean;
import com.bean.ServiceBean;
import com.util.Dbconnection;

public class ServiceDao {

	public boolean insertservice(ServiceBean sb) {
		Connection con = Dbconnection.getConnection(); // connection done
		try {
			PreparedStatement pstmt = con.prepareStatement("insert into service (servicename,description) values(?,?)");

			pstmt.setString(1, sb.getServicename());
			pstmt.setString(2, sb.getDescription());
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

	public static ArrayList<ServiceBean> getAllService() {

		ArrayList<ServiceBean> services = new ArrayList<ServiceBean>();
		try {
			Connection con = Dbconnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from service");
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				ServiceBean servicebean = new ServiceBean();
				servicebean.setServiceid(rs.getInt("serviceid"));
				servicebean.setServicename(rs.getString("servicename"));
				servicebean.setDescription(rs.getString("description"));
				services.add(servicebean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return services;

	}

	public boolean deleteservice(int serviceid) {

		Connection con = null;
		boolean flag = false;
		PreparedStatement pstmt = null;

		try {
			con = Dbconnection.getConnection();
			pstmt = con.prepareStatement("delete from service where serviceid = ? ");
			pstmt.setInt(1, serviceid);

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

}
