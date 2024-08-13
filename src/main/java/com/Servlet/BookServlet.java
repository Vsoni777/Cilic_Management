package com.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.Appointment;
import com.DB.DBservice;

/**
 * Servlet implementation class BookServlet
 */
@WebServlet("/BookServlet")
public class BookServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String target="";
		
			Appointment ap=new Appointment();
			ap.setDoc_id(req.getParameter("docid"));
			
			ap.setFname(req.getParameter("t1"));
			ap.setLname(req.getParameter("t2"));
			ap.setM_no(req.getParameter("t4"));
			ap.setGender(req.getParameter("inlineRadioOptions"));
			ap.setSymptoms(req.getParameter("t8"));
			ap.setApp_date(req.getParameter("t3"));
			ap.setStatus(req.getParameter("status"));
			DBservice db=new DBservice();
			int x=db.bookappoint(ap);
			if(x>=1) {
				
				req.setAttribute("sms", "records insert");


				target="/Success-booking.jsp";
			}else
			{
				req.setAttribute("sms"," Records could not be insert ");
				target="/Success-booking.jsp";
			}
			RequestDispatcher rd = getServletContext().getRequestDispatcher(target);
			rd.forward(req, resp);
		
	}

}
