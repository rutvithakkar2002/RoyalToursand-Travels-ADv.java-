package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class loginauthenticationfilter implements Filter{

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		RequestDispatcher rd=null;
	/*	if (email.contains("admin@gmail.com") && password.contains("admin")) {
			rd = request.getRequestDispatcher("welcome.jsp");
			rd.forward(request, response);

		}

		else*/ if(email.trim().length()==0)
		{
			request.setAttribute("error", "please Enter your email");
			rd = request.getRequestDispatcher("AdminLogin.jsp");
			rd.forward(request, response);
		}
		else if(password.trim().length()==0)
		{
			request.setAttribute("error", "please Enter your password");
			rd = request.getRequestDispatcher("AdminLogin.jsp");
			rd.forward(request, response);
		}
		else if (email.contains("admin@gmail.com")==false || password.contains("admin")==false) {
			request.setAttribute("error", "Invalid Credentials");
			rd = request.getRequestDispatcher("AdminLogin.jsp");
			rd.forward(request, response);
		}
		else
		{
			chain.doFilter(request, response);
		}
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}

	
	
}
