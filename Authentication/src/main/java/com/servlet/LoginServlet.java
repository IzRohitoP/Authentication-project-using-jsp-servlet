package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
//import java.io.PrintWriter;

import com.dao.UserDao;
import com.db.Dbconnect;
import com.entities.User;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
//		PrintWriter out=response.getWriter();
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		UserDao dao=new UserDao(Dbconnect.getConnection());
	    User user=dao.getlogin(email, password);
	    
	    if(user!=null) {
	    	
	    	HttpSession session=request.getSession();
			session.setAttribute("user-ob", user);
			response.sendRedirect("profile.jsp");
	    
	    }
	    else {
	    	
	    	HttpSession session=request.getSession();
			session.setAttribute("error-msg", "Invalid Email and Password");
			response.sendRedirect("login.jsp");
	    	
	    }
		

	}

}
