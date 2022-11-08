package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ServiceDao;

@WebServlet("/DeleteServiceServlet")
public class DeleteServiceServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int serviceid=Integer.parseInt(request.getParameter("serviceid"));
		ServiceDao servicedao=new ServiceDao();
		servicedao.deleteservice(serviceid);
		
		response.sendRedirect("ListServiceController");
	
	}
}
