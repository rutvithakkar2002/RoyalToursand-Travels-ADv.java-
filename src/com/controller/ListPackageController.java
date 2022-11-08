package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.PackageBean;

import com.dao.PackageDao;

@WebServlet("/ListPackageController")
public class ListPackageController extends HttpServlet{

	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PackageDao packageDao=new PackageDao();
		ArrayList<PackageBean>packages=packageDao.getAllPackage();
		request.setAttribute("allPackages",packages);  //(data)--servlet to jsp 
		
		RequestDispatcher rd=request.getRequestDispatcher("ListPackage.jsp");
		rd.forward(request,response);
		
		
		
		
	}
}
