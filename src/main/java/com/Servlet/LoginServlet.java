package com.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.Login;
import com.DB.CheckDB;

/**
 * Servlet implementation class LoginServlet
 */

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Login log=new Login();
		
		log.setUsername(request.getParameter("username"));
		log.setPassword(request.getParameter("pass"));
		CheckDB check=new CheckDB();
		int a=check.doctoruser(log);
		int b=check.Patientuser(log);
		System.out.println("log"+a);
		System.out.println("log"+b);
		String target="";

			if(a>=1) {
				boolean isvalid=check.check(log);
					if(isvalid==true)
						{
							HttpSession session = request.getSession(false);
						if(session!=null)
							{
								session.invalidate();
							}
						session = request.getSession(true);
						session.setAttribute("username", log.getUsername());
						target="/Doctor-dashbord.jsp";
						}
			}else
				
			if(b>=1) {
				boolean aisvalid=check.check(log);
				if(aisvalid==true)
				{
					HttpSession session = request.getSession(false);
					if(session!=null)
					{
						session.invalidate();
					}
					session = request.getSession(true);
					session.setAttribute("username", log.getUsername());
					target="/patient.jsp";
				}
				
			}else
			{
				request.setAttribute("sms","Invalid Username/Password");
				target="/login.jsp";
			}	

			
				RequestDispatcher rd = getServletContext().getRequestDispatcher(target);
				rd.forward(request, response);
		
	}

}
