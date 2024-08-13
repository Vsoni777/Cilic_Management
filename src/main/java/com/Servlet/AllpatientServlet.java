package com.Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.Paitent;
import com.DB.PDBservice;


@WebServlet("/AllpatientServlet")
public class AllpatientServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PDBservice db = new PDBservice();
		ArrayList<Paitent>al = db.getAllPaitent();
		System.out.println("hi");
		request.setAttribute("allpaitent", al);
		RequestDispatcher rd = request.getRequestDispatcher("/My-patient.jsp");
		rd.forward(request, response);
	}

}
