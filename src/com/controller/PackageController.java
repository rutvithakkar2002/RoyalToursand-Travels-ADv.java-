package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.PackageBean;
import com.bean.UserBean;
import com.dao.PackageDao;
import com.dao.userDao;
@WebServlet("/PackageController")
public class PackageController extends HttpServlet{

	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String packageName=request.getParameter("packageName");
		String destination=request.getParameter("destination");
		String timeDuration=request.getParameter("timeDuration");
		String transportationFacility=request.getParameter("modeOfTransportation");
		String charge=request.getParameter("charge");
		
		RequestDispatcher rd=null;
		

		PackageBean package1=new PackageBean();
		package1.setPackageName(packageName);
		package1.setDestination(destination);
		package1.setTimeDuration(timeDuration);
		package1.setCharge(charge);
		package1.setTransportationFacility(transportationFacility);
		
		
		boolean status=new PackageDao().insertPackage(package1);
		
		if(status==true)	
		{
			rd = request.getRequestDispatcher("ListPackageController");
			rd.forward(request, response);
		}
		else
		{
			rd = request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
		}
	}
	
}
