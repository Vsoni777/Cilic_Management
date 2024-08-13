package com.Servlet;

import java.awt.AWTException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


import com.DAO.Clinic;
import com.DAO.Contact_details;
import com.DAO.Doctors;
import com.DAO.Education;
import com.DAO.Exprience;
import com.DAO.Login;
import com.DAO.Service;
import com.DB.DBservice;

/**
 * Servlet implementation class Userinfo
 */
@SuppressWarnings("serial")
@MultipartConfig
@WebServlet("/Userinfo")
public class Userinfo extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*PrintWriter out=response.getWriter();
		out.println("Demo");*/

		Part file=request.getPart("image");
		String imgfilename=file.getSubmittedFileName();

		try {
		System.out.println("selected image is"+imgfilename);
		String uploadpath="C:/Users/vivek/eclipse-workspace/Hospital/src/main/webapp/Uploaded/"+imgfilename;
		System.out.println("uploaded path:"+uploadpath);
		
		FileOutputStream fos=new FileOutputStream(uploadpath);
		InputStream is=file.getInputStream();
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		}
		catch(Exception e) {
			
		}
		//doGet(request, response);
		try {
		Doctors d=new Doctors();
		d.setProfile_img(imgfilename);
		d.setUsername(request.getParameter("t1"));
		d.setEmail(request.getParameter("t2"));
		d.setFname(request.getParameter("t3"));
		d.setLname(request.getParameter("t4"));
		d.setMno(request.getParameter("t5"));
		d.setGender(request.getParameter("t6"));
		d.setDob(request.getParameter("t7"));
		d.setBiography(request.getParameter("t8"));
		
		
		Login log=new Login();
		log.setUsername(request.getParameter("t2"));
		
		Clinic cli=new Clinic();
		
		cli.setClinic_name(request.getParameter("t9"));
		cli.setClinic_address(request.getParameter("t10"));
		cli.setClinic_img(request.getParameter("clinicimg"));
		
		Contact_details co=new Contact_details();
		co.setAddress_line1(request.getParameter("t11"));
		co.setAddress_line2(request.getParameter("t12"));
		co.setCity(request.getParameter("t13"));
		co.setState(request.getParameter("t14"));
		co.setCountry(request.getParameter("t15"));
		co.setPostal_code(request.getParameter("t16"));
		
		
		
		Education edu=new Education();
		edu.setDegree(request.getParameter("t17"));
		edu.setInstitue(request.getParameter("t18"));
		edu.setCompletion_year(request.getParameter("t19"));
		
		Exprience exp=new Exprience();
		exp.setHospital_name(request.getParameter("t20"));
		exp.setDesignation(request.getParameter("t23"));
		exp.setFrom_date(request.getParameter("t21"));
		exp.setTo_date(request.getParameter("t22"));
		
		Service s=new Service();
		s.setServices(request.getParameter("services"));
		s.setSpecialization(request.getParameter("specialist"));
		
		
		DBservice db=new DBservice();
		
		
		int a=db.adddoctor(d);
		int maxid=0;
		
			maxid = db.current();
			s.setDocid(maxid);
			cli.setDoc_id(maxid);
			co.setDoc_id(maxid);
			
			edu.setDoc_id(maxid);
			exp.setDoc_id(maxid);
		
		System.out.println(a);
		int b=db.addClinic(cli);
		System.out.println(b);
		int c=db.addContact(co);
		System.out.println("value of c"+c);
		//int e=db.addPricing(pri);
		//System.out.println("value for price "+e);
		int f=db.addEducation(edu);
		System.out.print("value for education"+f);
		int g=db.addExprience(exp);
		System.out.print("value for exprience"+g);

		int h=db.addService(s);
		System.out.print("value for Service"+h);

		 String target="";
			//PrintWriter out = response.getWriter();
			if(a>=1){
				if(b>=1) {
					if(c>=1) {
						if(f>=1) {
							if(g>=1) {
								if(h>=1) {
									request.setAttribute("Username", log.getUsername());


									target="/doctor-reg.jsp";
								
								}
							}
						}
					}
				}
			}else
			{
				request.setAttribute("sms"," Records could not be insert ");
				target="/doctor-profile-settings.jsp";
			}
			
			
			
			
			
			RequestDispatcher rd = getServletContext().getRequestDispatcher(target);
			rd.forward(request, response);
		
			
			
			
			
			
		
		
		
		
		
		}catch(Exception e) {}
		
	}

}
