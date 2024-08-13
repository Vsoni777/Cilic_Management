package com;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.Login;
import com.DB.CheckDB;
@WebServlet("/Createuser")

public class Createuser extends HttpServlet {
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Login log=new Login();
		int x=0;
		String target="/NewFile.jsp";
		System.out.println("in login");
		log.setUsername(request.getParameter("username"));
		log.setPassword(request.getParameter("pass"));
		CheckDB db=new CheckDB();
	    x=db.AddUser(log);
		String msg;
		if(x>1) {
			msg="Now registered";


	
		}else {
			msg=" you not registered";


	
		}
		request.setAttribute("sms",msg);
		RequestDispatcher rd =request.getRequestDispatcher(target);
		rd.forward(request, response);
	}

}
