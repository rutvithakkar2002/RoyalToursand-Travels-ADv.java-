package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.UserBean;

import com.dao.userDao;
@WebServlet("/ListInquiryController")
public class ListInquiryController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		userDao userdao=new userDao();
		System.out.println("before function");
		ArrayList<UserBean>users=userdao.getAllUsers();
		System.out.println("after fuction");
		request.setAttribute("allusers",users);  //(data)--servlet to jsp 
		
		RequestDispatcher rd=request.getRequestDispatcher("ListInquiryUsers.jsp");
		rd.forward(request,response);
		
		
		
	}
	
	
}
