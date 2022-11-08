package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.UserBean;
import com.dao.userDao;

@WebServlet("/inquiryFormController")
public class inquiryFormController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String mobileNo = request.getParameter("mobileNo");
		String placesToVisit = request.getParameter("placesToVisit");
		String yourLocation = request.getParameter("yourLocation");
		String budget = request.getParameter("budget");

		boolean isError = false;
				
		if (firstName == null || firstName.trim().length() == 0) {
			isError = true;
			request.setAttribute("firstNameError", "Please Enter FirstName");
		} else {
			
			
			request.setAttribute("firstName", firstName);
		}
		if (lastName == null || lastName.trim().length() == 0) {
			isError = true;
			request.setAttribute("lastNameError", "Please Enter lastName");
		} else {
			request.setAttribute("lastNameValue", lastName);
		}

		if (email == null || email.trim().length() == 0 || email.contains("gmail.com") == false) {
			isError = true;
			request.setAttribute("emailError", "Please Enter valid Email");
		} else {
			request.setAttribute("emailValue", email);
		}

		if (mobileNo == null || mobileNo.trim().length() == 0 || mobileNo.trim().length() > 10) {
			isError = true;
			request.setAttribute("mobileNoError", "<font color='red'>Please Enter valid MobileNo</font>");
		} else {
			request.setAttribute("mobileNoValue", mobileNo);
		}

		if (isError == true) {
			// List list = new ArrayList();
			RequestDispatcher rd = request.getRequestDispatcher("Inquiryform.jsp");
			rd.forward(request, response);
		} else {

			// new UserDao().insertUser(firstName, email, password);

			// after creating Bean

			UserBean user = new UserBean();
			user.setFirstName(firstName);
			user.setLastName(lastName);
			user.setEmail(email);
			user.setMobileNo(mobileNo);
			user.setPlacesToVisit(placesToVisit);
			user.setYourLocation(yourLocation);
			user.setBudget(budget);

			Cookie c = new Cookie("firstName", firstName);
			Cookie c1 = new Cookie("email", email);

			boolean status = new userDao().insertUser(user);
			if (status == true) {
				RequestDispatcher rd = request.getRequestDispatcher("ListInquiryController");
				rd.forward(request, response);
			} else {
				// error
			}
		}

	}

}
