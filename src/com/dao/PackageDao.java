package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bean.PackageBean;
import com.util.Dbconnection;

public class PackageDao {

	public boolean insertPackage(PackageBean package1) {
		Connection con = Dbconnection.getConnection(); // connection done
		try {
			PreparedStatement pstmt = con.prepareStatement(
					"insert into package (packageName,destination,timeDuration,transportationFacility,charge) values(?,?,?,?,?)");

			// after making packagebean

			pstmt.setString(1, package1.getPackageName());
			pstmt.setString(2, package1.getDestination());
			pstmt.setString(3, package1.getTimeDuration());
			pstmt.setString(4, package1.getTransportationFacility());
			pstmt.setString(5, package1.getCharge());

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

	public ArrayList<PackageBean> getAllPackage() {

		ArrayList<PackageBean> packages = new ArrayList<PackageBean>();
		try {
			Connection con = Dbconnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from package");
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				PackageBean packageBean = new PackageBean();
				packageBean.setPackageId(rs.getInt("packageId"));
				packageBean.setPackageName(rs.getString("packageName"));
				packageBean.setDestination(rs.getString("destination"));
				packageBean.setTimeDuration(rs.getString("timeduration"));
				packageBean.setTransportationFacility(rs.getString("transportationFacility"));
				packageBean.setCharge(rs.getString("charge"));
				packages.add(packageBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return packages;
	}

	public boolean deletePackage(int packageId) {
		Connection con = null;
		boolean flag = false;
		PreparedStatement pstmt = null;

		try
		{
			con = Dbconnection.getConnection();
			pstmt = con.prepareStatement("delete from package where packageId = ? ");
			pstmt.setInt(1, packageId);

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

	
}
