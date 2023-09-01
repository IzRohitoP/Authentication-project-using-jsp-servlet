package com.servlet;

import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.dao.UserDao;
import com.db.Dbconnect;
import com.entities.User;

/**
 * Servlet implementation class RegisterServlet
 */
//@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		//Adding data to user class
		PrintWriter out=response.getWriter();
		
		
		//Print the data from form
		out.println("Name : "+name+" Email : "+email+" password : "+password);
		
		
		User us=new User();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);
		
		
		//using the connection and adding data to DB
		
		UserDao dao=new UserDao(Dbconnect.getConnection());
	 boolean f = dao.userregister(us);
		
		if(f==true) {
			HttpSession session=request.getSession();
			session.setAttribute("reg-msg", "Registered Successfully");
			response.sendRedirect("register.jsp");
			
			
		}
		else {
			HttpSession session=request.getSession();
			session.setAttribute("error-msg", "Something went Wrong");
			response.sendRedirect("register.jsp");
			
			
		}
			
	}

}
