
package com;

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


@WebServlet("/AllpaitentServlet")
public class AllpaitentServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String docid = request.getParameter("docid");

		
		PDBservice db = new PDBservice();
		ArrayList<Paitent>al = db.getAllPaitent();
		System.out.println("hi");
		request.setAttribute("allpaitent", al);
		RequestDispatcher rd = request.getRequestDispatcher("/My-patient.jsp");
		rd.forward(request, response);
	
		
	}
}

