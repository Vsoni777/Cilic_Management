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
import com.DAO.Paitent;
import com.DB.PDBservice;

/**
 * Servlet implementation class ToUpdateServlet
 * @param <PDBService>
 */
@WebServlet("/ToUpdateServlet")
public class ToUpdateServlet<PDBService> extends HttpServlet {
    private PDBservice db = new PDBservice();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action1=request.getParameter("action");
		String docid = request.getParameter("docid");

		
		
		
        if ("accepted".equals(action1)) {
         db.UpdateStatus(docid,"Accept");
		request.setAttribute("sms","Accept");
		}else if("canceled".equals(action1)) {
              db.UpdateStatus(docid,"Canceled");
			request.setAttribute("sms","records Cancel");

		}else {
			System.out.println("update not");
		}
		RequestDispatcher rd = request.getRequestDispatcher("/SeeAppointment.jsp");
		rd.forward(request, response);
	
			
		}
	}

	


