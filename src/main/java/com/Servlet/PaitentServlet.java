package com.Servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.DAO.Paitent;
import com.DB.PDBservice;

/**
 * Servlet implementation class PaitentServlet
 */
@MultipartConfig
@WebServlet("/PaitentServlet")
public class PaitentServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part file=request.getPart("pimg");
		String imgfilename=file.getSubmittedFileName();

		try {
		System.out.println("selected image is"+imgfilename);
		String uploadpath="C:/Users/vivek/eclipse-workspace/Hospital/src/main/webapp/pupload/"+imgfilename;
		System.out.println("uploaded path:"+uploadpath);
		
		FileOutputStream fos=new FileOutputStream(uploadpath);
		InputStream is=file.getInputStream();
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		}
		catch(Exception e) {
			System.out.println("img not found");
		}
		
		
		try {
			Paitent p=new Paitent();
			p.setFilename(imgfilename);
			p.setFname(request.getParameter("fname"));
			p.setLname(request.getParameter("lname"));
			p.setDob(request.getParameter("t1"));
			p.setBlood_g(request.getParameter("t2"));
			p.setEmail(request.getParameter("t3"));
			p.setMno(request.getParameter("t4"));
			p.setAddress(request.getParameter("t5"));
			p.setCity(request.getParameter("t6"));
			p.setState(request.getParameter("t7"));
			p.setZipcode(request.getParameter("t8"));
			p.setCountry(request.getParameter("t9"));
			
			PDBservice pd=new PDBservice();
			String target="";
			int a=pd.addpaitent(p);
			if(a>=1) {
				request.setAttribute("sms", "records insert");


				target="/patient.jsp";
			}else
			{
				request.setAttribute("sms"," Records could not be insert ");
				target="/patient.jsp";
			}
			RequestDispatcher rd = getServletContext().getRequestDispatcher(target);
			rd.forward(request, response);
		
		}catch(Exception e) {
			
		}
		
		
	}

}
