package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.AboutUsBean;

import com.dao.AboutUsDao;
@WebServlet("/ListContentController")
public class ListContentController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		AboutUsDao aboutUsDao = new AboutUsDao();
		ArrayList<AboutUsBean> contents = aboutUsDao.getAllContent();
		request.setAttribute("allContents", contents); // (data)--servlet to jsp

		RequestDispatcher rd = request.getRequestDispatcher("ListContent.jsp");
		rd.forward(request, response);

	}

}
