package com.daoclass;
import com.binclass.*;
import com.connection.*;

import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.*;
import com.binclass.*;
@SuppressWarnings("unused")
public class AllUserDAO {
    
	public ArrayList<UserBean> al=new ArrayList<>();
	public UserBean ubb=null;
	public int k=0;
	  public ArrayList<UserBean> showAllUser()
	  {
		  try {
			  Connection con=DBConnection.getcon();
			  PreparedStatement ps=con.prepareStatement("SELECT * FROM CUSTOMER");
			  ResultSet rs=ps.executeQuery();
			  while(rs.next())
			  {
				UserBean ub=new UserBean();
				 ub.setCid(rs.getInt(1));
				 ub.setFname(rs.getString(2));
				 ub.setLname(rs.getString(3));
				 ub.setEmail(rs.getString(4));
				 ub.setPhone(rs.getLong(5));
				 ub.setGender(rs.getString(6));
				 ub.setCountry(rs.getString(7));
				 ub.setPassword(rs.getString(8));
				 al.add(ub);
			  }
			  
		  }
		  catch(Exception e)
		  {
			  e.printStackTrace();
		  }
		  return al;
	  }
	  
	  public UserBean showUser(UserBean ubb)
	  {
		  try {
			  Connection con=DBConnection.getcon();
			  PreparedStatement ps=con.prepareStatement("SELECT * FROM CUSTOMER where cid=?");
			  ps.setInt(1, ubb.getCid());
			  ResultSet rs=ps.executeQuery();
			  while(rs.next())
			  {
				 ubb=new UserBean();
				 ubb.setCid(rs.getInt(1));
				 ubb.setFname(rs.getString(2));
				 ubb.setLname(rs.getString(3));
				 ubb.setEmail(rs.getString(4));
				 ubb.setPhone(rs.getLong(5));
				 ubb.setGender(rs.getString(6));
				 ubb.setCountry(rs.getString(7));
				 ubb.setPassword(rs.getString(8));
				 
			  }
			  
		  }
		  catch(Exception e)
		  {
			  e.printStackTrace();
		  }
		  return ubb;
	  }
	  
	  public int updateuserpass(HttpServletRequest req)
	  {
		  
		  try {
				Connection con=DBConnection.getcon();
				Long phone=Long.parseLong(req.getParameter("phonenumber2"));
				String pass=req.getParameter("pass1");
				System.out.println(pass);
				System.out.println(phone);
				
				PreparedStatement ps=con.prepareStatement("update customer set password=? where phone=?");
				ps.setString(1,req.getParameter("pass1"));
				ps.setLong(2,Long.parseLong(req.getParameter("phonenumber2")));
				k=ps.executeUpdate();
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		  
		  return k;
	  }

}
