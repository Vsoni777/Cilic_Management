package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DAO.Doctors;
import com.DAO.Login;

public class CheckDB {
	
		Connection con=null;
		public CheckDB(){
			
			try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","vivek","Vi_soni777@&");
			}catch(Exception e) {}
		}
		
		
	public int doctoruser(Login log) {
		int a=0;
		try {
		PreparedStatement ps=con.prepareStatement("select *from doctors where email=?");
		ps.setString(1, log.getUsername());
		ResultSet rs=ps.executeQuery();
			if(rs.next()==true) {
					a=rs.getInt(1);
			}
			ps.close();
			rs.close();
		}catch(Exception e) {
			System.out.println("Error yha");
		}

		return a;
	}
	public int Patientuser(Login log) {
		int b=0;
		try {
		PreparedStatement ps=con.prepareStatement("select *from Paitent where email=?");
		ps.setString(1, log.getUsername());
		ResultSet rs=ps.executeQuery();
			if(rs.next()==true) {
				b=rs.getInt(1);
			}
			ps.close();
			rs.close();
		}catch(Exception e) {
			e.printStackTrace();
		}

		return b;
	}
	
	public boolean check(Login log)
	{
		boolean isValid=false;
		try 
		{
			PreparedStatement ps = con.prepareStatement("select * from Userdetail where username = ? and password = ?");
			ps.setString(1, log.getUsername());
			ps.setString(2, log.getPassword());
			ResultSet rs = ps.executeQuery();
			if(rs.next()==true)
			{
				isValid=true;
			}
		}
		catch (Exception e) 
		{
			// TODO: handle exception
		}
		return isValid;
	}
	public ArrayList<Doctors> getAllStudent()
	{
		ArrayList<Doctors>al = new ArrayList<Doctors>();
	
	try{
		
		PreparedStatement ps = con.prepareStatement("select *from doctors where username=?,email=?");
		ResultSet rs =  ps.executeQuery();
		while(rs.next())
		{
			Doctors d=new Doctors();
			d.setUsername(rs.getString("username"));
			d.setEmail(rs.getString("name"));
			
			al.add(d);
		}
		
}
catch(SQLException e)
{
System.out.print("Error in sql statements");
}
	return al;

}


	public int AddUser(Login log) {
		int x=0;
		try {
			PreparedStatement ps=con.prepareStatement("insert into Userdetail(username,password)values(?,?)");
			ps.setString(1, log.getUsername());
			ps.setString(2, log.getPassword());
			x=ps.executeUpdate();
			ps.close();
		}catch(Exception e) {
			System.out.println(e);
		}
		return x;
	}
}
