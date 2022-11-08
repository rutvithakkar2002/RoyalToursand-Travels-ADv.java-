package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.PackageDao;
import com.dao.ServiceDao;
import com.dao.userDao;
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		ServletConfig config = getServletConfig();

		String correctEmail = config.getInitParameter("email");
		String correctPassword = config.getInitParameter("password");
		
		userDao ud=new userDao();
		int totalinquiry=ud.getAllUsers().size();
		System.out.println(totalinquiry);
		request.setAttribute("totalusers",totalinquiry);
		
		PackageDao pd=new PackageDao();
		int totalpackages=pd.getAllPackage().size();
		request.setAttribute("totalpackages",totalpackages);
		
		ServiceDao sd=new ServiceDao();
		int totalservices=sd.getAllService().size();
		request.setAttribute("totalservices",totalservices);
		
		RequestDispatcher rd=null;
		rd = request.getRequestDispatcher("AdminIndex.jsp");
		rd.forward(request, response);

	}
}
