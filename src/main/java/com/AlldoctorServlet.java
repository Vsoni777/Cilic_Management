package com;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.Doctors;
import com.DB.PDBservice;

/**
 * Servlet implementation class AlldoctorServlet
 */
@WebServlet("/AlldoctorServlet")
public class AlldoctorServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PDBservice db = new PDBservice();
		ArrayList<Doctors>al = db.getAllDoctor();
		System.out.println("hi");
		request.setAttribute("alldoctor", al);
		RequestDispatcher rd = request.getRequestDispatcher("/book.jsp");
		rd.forward(request, response);
	}

	
}
