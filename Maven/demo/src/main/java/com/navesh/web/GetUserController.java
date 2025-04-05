package com.navesh.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.navesh.web.dao.UserDao;
import com.navesh.web.model.User;

/**
 * Servlet implementation class GetUserController
 */
@WebServlet("/getUser")
public class GetUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int uid = Integer.parseInt(request.getParameter("uid"));
	
		UserDao dao=new UserDao();
		User u1=dao.getUser(uid);
		
		request.setAttribute("user",u1); 
		
		RequestDispatcher rd=request.getRequestDispatcher("showUser.jsp");
		rd.forward(request,response);
	}

}
