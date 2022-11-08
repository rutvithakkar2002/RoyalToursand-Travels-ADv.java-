package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.AboutUsBean;
import com.dao.AboutUsDao;


@WebServlet("/AboutUsServlet")
public class AboutUsServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		boolean isError = false;
		String aboutuscontent = request.getParameter("aboutuscontent");

		if (aboutuscontent == null || aboutuscontent.trim().length() == 0) {
			isError = true;
		} else {
			AboutUsBean ab = new AboutUsBean();
			ab.setAboutuscontent(aboutuscontent);

			boolean status = new AboutUsDao().insertcontent(ab);
			if (status == true) {
				RequestDispatcher rd = request.getRequestDispatcher("ListContentController");
				rd.forward(request, response);
			} else {
				// error
			}

		}
	}

}
