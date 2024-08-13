package com;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class ToAppointmentServlet
 */
@WebServlet("/ToAppointmentServlet")
public class ToAppointmentServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String docid = request.getParameter("docid");
        String tr="";
			
	        request.setAttribute("docid", docid);

	        tr="/MakeAppointment.jsp";
	    	RequestDispatcher rd = getServletContext().getRequestDispatcher(tr);
			rd.forward(request, response);
        
	}

	

	

	
}
