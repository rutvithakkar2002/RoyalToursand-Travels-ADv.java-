package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Packageformfilter implements Filter{

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
	
		String packageName=request.getParameter("packageName");
		String destination=request.getParameter("destination");
		String timeDuration=request.getParameter("timeDuration");
		String modeOfTransportation=request.getParameter("modeOfTransportation");
		String charge=request.getParameter("charge");
		
		RequestDispatcher rd=null;
		if(packageName.trim().length()==0)
		{
			request.setAttribute("error", "please Enter PackageName!");
			rd = request.getRequestDispatcher("packageform.jsp");
			rd.forward(request, response);
		}
		else if(destination.trim().length()==0)
		{
			request.setAttribute("error", "please Enter destination!");
			rd = request.getRequestDispatcher("packageform.jsp");
			rd.forward(request, response);
		}
		else if(timeDuration.trim().length()==0)
		{
			request.setAttribute("error", "please Enter timeduration!");
			rd = request.getRequestDispatcher("packageform.jsp");
			rd.forward(request, response);
		}
		else if(modeOfTransportation.trim().length()==0)
		{
			request.setAttribute("error", "please Enter mode of transportation!");
			rd = request.getRequestDispatcher("packageform.jsp");
			rd.forward(request, response);
		}
		else if(charge.trim().length()==0)
		{
			request.setAttribute("error", "please Enter charge to reach the destination!");
			rd = request.getRequestDispatcher("packageform.jsp");
			rd.forward(request, response);
		}
		else if(packageName.trim().length()==0 && destination.trim().length()==0 && timeDuration.trim().length()== 0 && modeOfTransportation.trim().length()==0 && charge.trim().length()==0)
		{
			request.setAttribute("error", "please Enter details carefully..");
			rd = request.getRequestDispatcher("packageform.jsp");
			rd.forward(request, response);
		}
		else
		{
			chain.doFilter(request, response);
		}
		
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	
	
}
