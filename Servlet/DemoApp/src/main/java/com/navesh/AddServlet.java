package com.navesh;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class AddServlet extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException {
		int i = Integer.parseInt(req.getParameter("num1"));
		int j = Integer.parseInt(req.getParameter("num2"));
		int s=i+j;
//		System.out.println("Sum is: "+s);
//		PrintWriter out=res.getWriter();
//		out.println("Sum is : "+s);
		
//		req.setAttribute("sum", s);
//		RequestDispatcher rd=req.getRequestDispatcher("sq");
//		rd.forward(req,res);
		
		//URL Rewriting
//		res.sendRedirect("sq?s="+s);	
		
		// Session management
//		HttpSession session=req.getSession();
//		session.setAttribute("sum", s);
		
		//Session by Cookie
		Cookie cookie = new Cookie("sum", s+"");
		res.addCookie(cookie);
		res.sendRedirect("sq");
	}
}
