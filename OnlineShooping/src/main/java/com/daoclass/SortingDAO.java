package com.daoclass;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;
import com.binclass.*;
import com.connection.DBConnection;
public class SortingDAO {
	public ArrayList<ProductBean>al=new ArrayList<>();
	public ArrayList<ProductBean>all=new ArrayList<>();
	public ArrayList<ProductBean>sotyBy(HttpServletRequest req)
	{
		try {
			Connection con=DBConnection.getcon();
			String cata=req.getParameter("cata");
			String select=req.getParameter("select");
			System.out.println(select);
			if(select.equals("asc"))
			{
				try {
					PreparedStatement ps=con.prepareStatement("select*from product where catagorie1=? order by pprice asc");
					//Statement stmt=con.createStatement();
					
					ps.setString(1, req.getParameter("cata"));
				//ps.setString(2,req.getParameter("select"));
					ResultSet rs=ps.executeQuery();
				//	ResultSet rs=stmt.executeQuery("select*from product where catagorie1='cata' order by pprice desc");
					while(rs.next())
					{
						ProductBean pb=new ProductBean();
						pb.setPid(rs.getInt(1));
						pb.setPname(rs.getString(2));
						pb.setPcompany(rs.getString(3));
						pb.setPrice(rs.getInt(4));
						pb.setPcatagori1(rs.getString(5));
						pb.setPcatagorie2(rs.getString(6));
						pb.setImage1(rs.getString(7));
						pb.setImage2(rs.getString(8));
						al.add(pb);
						
					}
					
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
				return al;
				
			}
			else
			{
				try {
					PreparedStatement ps=con.prepareStatement("select*from product where catagorie1=? order by pprice desc");
					//Statement stmt=con.createStatement();
					
					ps.setString(1, req.getParameter("cata"));
				//ps.setString(2,req.getParameter("select"));
					ResultSet rs=ps.executeQuery();
				//	ResultSet rs=stmt.executeQuery("select*from product where catagorie1='cata' order by pprice desc");
					while(rs.next())
					{
						ProductBean pb=new ProductBean();
						pb.setPid(rs.getInt(1));
						pb.setPname(rs.getString(2));
						pb.setPcompany(rs.getString(3));
						pb.setPrice(rs.getInt(4));
						pb.setPcatagori1(rs.getString(5));
						pb.setPcatagorie2(rs.getString(6));
						pb.setImage1(rs.getString(7));
						pb.setImage2(rs.getString(8));
						al.add(pb);
						
					}
					
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
				return al;
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return al;
	}
	
	public ArrayList<ProductBean>sotyBycat2(HttpServletRequest req)
	{
		try {
			Connection con=DBConnection.getcon();
			//String cata=req.getParameter("cata2");
			String select1=req.getParameter("select2");
			System.out.println(select1);
			if(select1.equals("asc"))
			{
				try {
					PreparedStatement ps=con.prepareStatement("select*from product where catagorie2=? order by pprice asc");
					//Statement stmt=con.createStatement();
					
					ps.setString(1, req.getParameter("cata2"));
				//ps.setString(2,req.getParameter("select"));
					ResultSet rs=ps.executeQuery();
				//	ResultSet rs=stmt.executeQuery("select*from product where catagorie1='cata' order by pprice desc");
					while(rs.next())
					{
						ProductBean pb=new ProductBean();
						pb.setPid(rs.getInt(1));
						pb.setPname(rs.getString(2));
						pb.setPcompany(rs.getString(3));
						pb.setPrice(rs.getInt(4));
						pb.setPcatagori1(rs.getString(5));
						pb.setPcatagorie2(rs.getString(6));
						pb.setImage1(rs.getString(7));
						pb.setImage2(rs.getString(8));
						all.add(pb);
						
					}
					
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
				return all;
				
			}
			else
			{
				try {
					PreparedStatement ps=con.prepareStatement("select*from product where catagorie2=? order by pprice desc");
					//Statement stmt=con.createStatement();
					
					ps.setString(1, req.getParameter("cata2"));
				//ps.setString(2,req.getParameter("select"));
					ResultSet rs=ps.executeQuery();
				//	ResultSet rs=stmt.executeQuery("select*from product where catagorie1='cata' order by pprice desc");
					while(rs.next())
					{
						ProductBean pb=new ProductBean();
						pb.setPid(rs.getInt(1));
						pb.setPname(rs.getString(2));
						pb.setPcompany(rs.getString(3));
						pb.setPrice(rs.getInt(4));
						pb.setPcatagori1(rs.getString(5));
						pb.setPcatagorie2(rs.getString(6));
						pb.setImage1(rs.getString(7));
						pb.setImage2(rs.getString(8));
						all.add(pb);
						
					}
					
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
				return all;
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return all;
	}

}
