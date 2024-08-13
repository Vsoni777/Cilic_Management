package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.Registration;

import com.DAO.Appointment;
import com.DAO.Clinic;
import com.DAO.Contact_details;
import com.DAO.Doctors;
import com.DAO.Education;
import com.DAO.Exprience;
import com.DAO.Login;
import com.DAO.Service;



 public class DBservice {
	Connection con=null;
	public DBservice(){
		
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","vivek","Vi_soni777@&");
		}catch(Exception e) {}
	}
	
	public int adddoctor(Doctors d){
		int a=0;
			try {
				PreparedStatement ps=con.prepareStatement("insert into doctors(profile_image,username,email,first_name,last_name,phone_number,gender,date_of_birth,biography)values(?,?,?,?,?,?,?,?,?)");				
				
				ps.setString(1, d.getProfile_img());
				ps.setString(2,d.getUsername());
				ps.setString(3, d.getEmail());
				ps.setString(4, d.getFname());
				ps.setString(5, d.getLname());
				ps.setString(6, d.getMno());
				ps.setString(7, d.getGender());
				ps.setString(8, d.getDob());
				ps.setString(9, d.getBiography());
				
				a=ps.executeUpdate();
				ps.close();
				System.out.println("in db method"+a);
				
			}catch(Exception e) {
				System.out.println(e);
			}
		return a;
	}
	
	
	public int addClinic(Clinic cli) {
		int b=0;
        System.out.println("cli.getDocid"+cli.getDoc_id());

		try {
			
			PreparedStatement ps=con.prepareStatement("insert into clinics (doctor_id,clinic_name,clinic_address)  values(?,?,?)");
				ps.setInt(1,cli.getDoc_id());
				ps.setString(2, cli.getClinic_name());
				ps.setString(3, cli.getClinic_address());
				
				b=ps.executeUpdate();
				ps.close();
		}catch(Exception e) {
			System.out.println("Contact me id nhi hai");
		}
		return b;
		
	}
	
	
	 public int addContact(Contact_details co) {
		 int c=0;
		 try {
				PreparedStatement ps=con.prepareStatement("insert into contact_details(doctor_id,address_line1,address_line2,city,state_province,country,postal_code) values(?,?,?,?,?,?,?)");
				
			
				
				ps.setInt(1, co.getDoc_id());
				ps.setString(2,co.getAddress_line1());
				ps.setString(3, co.getAddress_line2());
				ps.setString(4, co.getCity());
				ps.setString(6, co.getCountry());
				ps.setString(5, co.getState());
				ps.setString(7, co.getPostal_code());
				c=ps.executeUpdate();
				ps.close();
			}catch(Exception e) {
				System.out.println(e);
			}
		 return c;
	 }
	 
	 
	 public int addEducation(Education edu) {
		 int ed=0;
		 try {
			 PreparedStatement ps=con.prepareStatement("insert into education(doctor_id,degree,institute,completion_year)values(?,?,?,?)");
			ps.setInt(1, edu.getDoc_id());
			ps.setString(2, edu.getDegree());
			ps.setString(3, edu.getInstitue());
			ps.setString(4, edu.getCompletion_year());
			ed=ps.executeUpdate();	
			ps.close();
			}catch(Exception e) {
				System.out.println("error in addeducation");
			}
		 return ed;
	 }
	 public int addExprience(Exprience exp) {
		 int f=0;
		 try {
				PreparedStatement ps=con.prepareStatement("insert into experience(doctor_id,hospital_name,from_date,to_date,designation)values(?,?,?,?,?)");
				ps.setInt(1, exp.getDoc_id());
				ps.setString(2, exp.getHospital_name());
				ps.setString(3, exp.getFrom_date());
				ps.setString(4, exp.getTo_date());
				ps.setString(5,exp.getDesignation());
				f=ps.executeUpdate();
				ps.close();
				
				
			}catch(Exception e) {
				System.out.println("error in exprience section");
			}
		 return f;
	 }
	 

	public int current() throws Exception {
		int docid=0;
		try {
		PreparedStatement ps=con.prepareStatement("select max(doctor_id)from doctors");
		ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				docid=rs.getInt(1);
			}
			ps.close();
			rs.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return docid;
	}

	public int addService(Service s) {
		int h=0;
		 try {
				PreparedStatement ps=con.prepareStatement("insert into services_specialization(doctor_id,services,specialization)values(?,?,?)");
				ps.setInt(1, s.getDocid());
				ps.setString(2, s.getServices());
				ps.setString(3, s.getSpecialization());
				
				h=ps.executeUpdate();
				ps.close();
				
				
			}catch(Exception e) {
				System.out.println("error in service section");
			}
		return h;
	}
	 
	public int adduser(Login log) {
		int q=0;
		try {
			PreparedStatement ps=con.prepareStatement("insert into userdetail(username,password)values(?,?)");
			ps.setString(1, log.getUsername());
			ps.setString(2, log.getPassword());
			q=ps.executeUpdate();
			ps.close();
		}catch(Exception e) {
			System.out.println("Error in userdetail");
		}
		return q;
	}

	public int bookappoint(Appointment ap) {
		int x=0;
		try {
			PreparedStatement ps=con.prepareStatement("insert into appointment(doc_id,fname,lname,gender,pho_no,app_date,symptoms,status)values(?,?,?,?,?,?,?,?)");
			ps.setString(1, ap.getDoc_id());
			ps.setString(2, ap.getFname());
			ps.setString(3, ap.getLname());
			ps.setString(4, ap.getGender());
			ps.setString(5, ap.getM_no());
			ps.setString(6, ap.getApp_date());
			ps.setString(7, ap.getSymptoms());
			ps.setString(8, ap.getStatus());
			x=ps.executeUpdate();
			ps.close();
		}catch(Exception e) {
			System.out.println("Error in sql statement");
		}
		return x;
	}
	public ArrayList<Appointment> getAllAppointment() {
		ArrayList<Appointment> al1=new ArrayList<Appointment>();
		try {
			PreparedStatement ps=con.prepareStatement("select *from appointment");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Appointment ap=new Appointment();
				ap.setDoc_id(rs.getString("doc_id"));
				ap.setFname(rs.getString("fname"));
				ap.setLname(rs.getString("lname"));
				ap.setM_no(rs.getString("pho_no"));
				ap.setApp_date(rs.getString("app_date"));
				ap.setStatus(rs.getString("status"));
				al1.add(ap);
			}
			rs.close();
			ps.close();
		}catch(Exception e) {
			
		}
		return al1;
	}


}
