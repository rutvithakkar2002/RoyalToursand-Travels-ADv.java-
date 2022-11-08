package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.bean.ServiceBean;

import com.dao.ServiceDao;
@WebServlet("/ListServiceController")
public class ListServiceController extends HttpServlet{

	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ServiceDao serviceDao=new ServiceDao();
		ArrayList<ServiceBean>services=ServiceDao.getAllService();
		request.setAttribute("allServices",services);  //(data)--servlet to jsp 
		
		RequestDispatcher rd=request.getRequestDispatcher("ListService.jsp");
		rd.forward(request,response);
		
		
		
	}
	
	
}
