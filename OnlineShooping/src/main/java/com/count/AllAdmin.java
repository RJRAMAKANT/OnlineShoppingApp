package com.count;
import java.sql.*;
import com.binclass.*;

import com.connection.*;
public class AllAdmin {
	public int k=0;
	public int l=0;
	public int m=0;
	public int n=0;
	public int p=0;
	public int a=0;
	public int adminCount(){
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("select count(*)from ADMIN");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				k=rs.getInt(1);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
		
	}
	
	
	public int userCount(){
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("select count(*)from customer");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				l=rs.getInt(1);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return l;
		
	}
	public int userRemove(UserBean ub){
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("delete from customer where cid=?");
			ps.setInt(1,ub.getCid());
			@SuppressWarnings("unused")
			int m=ps.executeUpdate();
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return l;
		
	}
	public int productCount(){
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("select count(*)from product");
		
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				n=rs.getInt(1);
			}
			
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return n;
		
	}
	public int orderCount(){
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("select count(*)from orderproduct");
		
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				a=rs.getInt(1);
			}
			
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return a;
		
	}
	
	
	
	

}
