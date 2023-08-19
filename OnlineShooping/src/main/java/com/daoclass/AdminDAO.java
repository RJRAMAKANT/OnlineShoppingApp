package com.daoclass;
import com.binclass.*;
import com.connection.*;

import java.sql.*;
import javax.servlet.http.*;
@SuppressWarnings("unused")
public class AdminDAO {
	public AdminBean ab=null;
	public AdminBean abb=null;
	public int k=0;
	public AdminBean login(HttpServletRequest req)
	{
		
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("SELECT*FROM ADMIN WHERE EMAIL=? AND PASSWORD=?");
		
			ps.setString(1, req.getParameter("email"));
			ps.setString(2,req.getParameter("password"));
			
			ResultSet result= ps.executeQuery();
			
			if(result.next())
			{
				ab=new AdminBean();
				ab.setId(result.getInt(1));
				ab.setName(result.getString(2));
				ab.setEmail(result.getString(3));
				ab.setPassword(result.getString(4));
				ab.setPhone(result.getLong(5));
				ab.setGender(result.getString(6));
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ab;
	}
	
	
	public AdminBean editAdmin(AdminBean abb)
	{
		
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("SELECT*FROM ADMIN WHERE aid=?");
		
			ps.setInt(1,abb.getId());
			
			ResultSet result= ps.executeQuery();
			
			if(result.next())
			{
				abb=new AdminBean();
				abb.setId(result.getInt(1));
				abb.setName(result.getString(2));
				abb.setEmail(result.getString(3));
				abb.setPassword(result.getString(4));
				abb.setPhone(result.getLong(5));
				abb.setGender(result.getString(6));
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return abb;
	}
	
	public int updatepassword(HttpServletRequest req)
	{
		try {
			Connection con=DBConnection.getcon();
			Long phone=Long.parseLong(req.getParameter("phonenumber"));
			String pass=req.getParameter("pass");
			System.out.println(pass);
			System.out.println(phone);
			
			PreparedStatement ps=con.prepareStatement("update admin set password=? where phone=?");
			ps.setString(1,req.getParameter("pass"));
			ps.setLong(2,Long.parseLong(req.getParameter("phonenumber")));
			k=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return k;
	}
	
	

}
