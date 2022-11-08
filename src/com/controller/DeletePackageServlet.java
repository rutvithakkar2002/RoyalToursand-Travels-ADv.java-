package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.PackageDao;
@WebServlet("/DeletePackageServlet")
public class DeletePackageServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int packageId=Integer.parseInt(request.getParameter("packageId"));
		PackageDao packageDao=new PackageDao();
		packageDao.deletePackage(packageId);
		response.sendRedirect("ListPackageController");
	}
}
