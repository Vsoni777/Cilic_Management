package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.DAO.Appointment;
import com.DAO.DoctorData;
import com.DAO.Doctors;
import com.DAO.Paitent;

	public class PDBservice {
			Connection con=null;
			 public PDBservice(){
		
							try {
								Class.forName("com.mysql.cj.jdbc.Driver");
								con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","vivek","Vi_soni777@&");
							}catch(Exception e) {
								System.out.println("Error to loead driver");
							}
							
			 }
			 
			 public int addpaitent(Paitent p) {
				 int a=0;
				 try {
				 PreparedStatement ps=con.prepareStatement("insert into paitent(filename,fname,lname,dob,blood_g,email,m_no,address,city,state,zipcode,country)values(?,?,?,?,?,?,?,?,?,?,?,?)");
				 ps.setString(1, p.getFilename());
				 ps.setString(2,p.getFname());
				 ps.setString(3,p.getLname());
				 ps.setString(4, p.getDob());
				 ps.setString(5, p.getBlood_g());
				 ps.setString(6,p.getEmail());
				 ps.setString(7, p.getMno());
				 ps.setString(8, p.getAddress());
				 ps.setString(9, p.getCity());
				 ps.setString(10, p.getState());
				 ps.setString(11, p.getZipcode());
				 ps.setString(12, p.getCountry());
				 a=ps.executeUpdate();
				 ps.close();
					System.out.println("in db method"+a);

				 }catch(Exception e) {
					 System.out.println("Error in sql statement");
				 }
				 return a;
				 
			 }

			public ArrayList<Paitent> getAllPaitent() {
				ArrayList<Paitent> al=new ArrayList<Paitent>();
				try {
					
					PreparedStatement ps=con.prepareStatement("select *from paitent");
					ResultSet rs=ps.executeQuery();
					while(rs.next()) {
						Paitent p=new Paitent();
						p.setPid(rs.getInt("p_id"));
						p.setFilename(rs.getString("filename"));
						p.setFname(rs.getString("fname"));
						p.setLname(rs.getString("lname"));
						p.setBlood_g(rs.getString("blood_g"));
						p.setMno(rs.getString("m_no"));
						p.setDob(rs.getString("dob"));
						p.setCity(rs.getString("city"));
						p.setState(rs.getString("state"));
						al.add(p);
					}
					rs.close();
					ps.close();
				}catch(Exception e) {
					
				}
				
				return al;
			}

			public ArrayList<Doctors> getAllDoctor() {
				ArrayList<Doctors> al=new ArrayList<Doctors>();
				try {
					PreparedStatement ps=con.prepareStatement("select *from doctors");
					ResultSet rs=ps.executeQuery();
					while(rs.next()) {
						Doctors d=new Doctors();
						d.setDoctor_id(rs.getInt("doctor_id"));
						d.setProfile_img(rs.getString("profile_image"));
						d.setUsername(rs.getString("username"));
						d.setFname(rs.getString("first_name"));
						d.setLname(rs.getString("last_name"));
						d.setMno(rs.getString("phone_number"));
						d.setGender(rs.getString("gender"));
						d.setDob(rs.getString("date_of_birth"));
						d.setBiography(rs.getString("biography"));
						al.add(d);
					}
					rs.close();
					ps.close();
				}catch(Exception e) {
					System.out.println(e);
				}
				
				return al;
			}

			public int UpdateStatus(String docid, String ac) {
				int x=0;
				try {
					System.out.println(docid+""+ac);
					PreparedStatement ps=con.prepareStatement("update appointment set status=? where doc_id=?");
					ps.setString(1, ac);
					ps.setString(2, docid);
					x=ps.executeUpdate();
					System.out.println("value of"+x);
					ps.close();
				}catch(Exception e) {
					
				}
				return x;
			}

			
	
				
}
