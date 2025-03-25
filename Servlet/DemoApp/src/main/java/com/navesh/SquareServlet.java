package com.navesh;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class SquareServlet extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException {
//		int sum=(int)req.getAttribute("sum");
//		int sum=Integer.parseInt(req.getParameter("s"));
		
//		HttpSession session=req.getSession();
//		int sum = (int) session.getAttribute("sum");
		int sum=0;
		Cookie cookies[] = req.getCookies();
		for(Cookie c:cookies) {
			if(c.getName().equals("sum"))
					sum=Integer.parseInt(c.getValue());
		}
		
		int sq=sum*sum;
		
		PrintWriter out=res.getWriter();
		out.println("Square of sum is: "+sq);
		
		System.out.println("Sq Called");
		
	}
}
