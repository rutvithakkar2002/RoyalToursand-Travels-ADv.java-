package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.ServiceBean;
import com.dao.ServiceDao;
@WebServlet("/ServiceController")

public class ServiceController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean iserror=false;
		String servicename=request.getParameter("servicename");
		String description=request.getParameter("description");
		
		if(servicename==null || servicename.trim().length()==0 || description==null || description.trim().length()==0)
		{
			iserror=true;
			request.setAttribute("Error", "Please Enter valid details properly");
			
		}
		else
		{
			ServiceBean sb=new ServiceBean();
			sb.setServicename(servicename);
			sb.setDescription(description);
			
			boolean status = new ServiceDao().insertservice(sb);
			if (status == true) {
				RequestDispatcher rd = request.getRequestDispatcher("ListServiceController");
				rd.forward(request, response);
			} else {
				// error
			}
			
		}
		
	
	}
	
}
