package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AboutUsDao;
@WebServlet("/DeleteContentServlet")
public class DeleteContentServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int aboutusid=Integer.parseInt(request.getParameter("aboutusid"));
		AboutUsDao abdao=new AboutUsDao();
		abdao.deletecontent(aboutusid);
		response.sendRedirect("ListContentController");
	}
}
