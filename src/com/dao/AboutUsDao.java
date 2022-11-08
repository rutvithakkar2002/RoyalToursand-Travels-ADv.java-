package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bean.AboutUsBean;
import com.bean.PackageBean;
import com.util.Dbconnection;

public class AboutUsDao {

	public boolean insertcontent(AboutUsBean ab) {
		Connection con = Dbconnection.getConnection(); // connection done
		try {
			PreparedStatement pstmt = con.prepareStatement("insert into aboutus (aboutuscontent) values(?)");

			// after making packagebean

			pstmt.setString(1, ab.getAboutuscontent());
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

	public ArrayList<AboutUsBean> getAllContent() {

		ArrayList<AboutUsBean> contents = new ArrayList<AboutUsBean>();
		try {
			Connection con = Dbconnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from aboutus");
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				AboutUsBean abBean = new AboutUsBean();
				abBean.setAboutusid(rs.getInt("aboutusid"));
				abBean.setAboutuscontent(rs.getString("aboutuscontent"));
				contents.add(abBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return contents;
	}

	public boolean deletecontent(int aboutusid) {
		// TODO Auto-generated method stub
		Connection con = null;
		boolean flag = false;
		PreparedStatement pstmt = null;

		try
		{
			con = Dbconnection.getConnection();
			pstmt = con.prepareStatement("delete from aboutus where aboutusid = ? ");
			pstmt.setInt(1, aboutusid);

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
