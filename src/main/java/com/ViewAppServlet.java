package com;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.Appointment;
import com.DB.DBservice;

/**
 * Servlet implementation class viewAppServlet
 */
@WebServlet("/ViewAppServlet")
public class ViewAppServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			DBservice db = new DBservice();
		ArrayList<Appointment>al1 = db.getAllAppointment();
		System.out.println("in this viewapp");
	
		request.setAttribute("allAppoint", al1);
		RequestDispatcher rd = request.getRequestDispatcher("/UpdateedAppointment.jsp");
		rd.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	

}
