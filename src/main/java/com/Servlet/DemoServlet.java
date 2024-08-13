package com.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.Login;
import com.DB.CheckDB;

/**
 * Servlet implementation class DemoServlet
 */
@WebServlet("/DemoServlet")
public class DemoServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Login log = new Login();
        log.setUsername(request.getParameter("username"));
        log.setPassword(request.getParameter("pass"));
        System.out.println("in demo");
        CheckDB db = new CheckDB();
        int rowsAffected = db.AddUser(log);
        
        String msg;
        if (rowsAffected == 1) {
            msg = "You have been registered successfully.";
        } else {
            msg = "Registration failed. Please try again.";
        }
        
        request.setAttribute("sms", msg);
        RequestDispatcher rd = request.getRequestDispatcher("/NewFile.jsp");
        rd.forward(request, response);
	}

}
