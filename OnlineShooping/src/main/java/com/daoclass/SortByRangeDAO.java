
package com.daoclass;
import java.io.*;
import com.binclass.*;
import com.connection.DBConnection;

import java.sql.*;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
@SuppressWarnings("unused")
public class SortByRangeDAO  {
	public ArrayList<ProductBean>al=new ArrayList<>();
	public ArrayList<ProductBean>showProductbyrange(HttpServletRequest req)
	{
		try {
			Connection con=DBConnection.getcon();
			int ppp=Integer.parseInt(req.getParameter("rangenum"));
			String ppq=req.getParameter("cata1");
			System.out.println(ppp);
			System.out.println(ppq);
			if(ppp==500)
			{
				try {
					PreparedStatement ps=con.prepareStatement("select * from product where catagorie1=? and pprice<500");
					ps.setString(1,ppq);
					//ps.setInt(2,Integer.parseInt(req.getParameter("rangenum")));
					
					ResultSet rs=ps.executeQuery();
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
				//return al;
			}
			else if(ppp==1000)
			{
				try {
					PreparedStatement ps=con.prepareStatement("select * from product where catagorie1=? and pprice<1000");
					ps.setString(1,req.getParameter("cata1"));
					//ps.setInt(2,Integer.parseInt(req.getParameter("rangenum")));
					
					ResultSet rs=ps.executeQuery();
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
				//return al;
			}
			else
			{
				try {
					PreparedStatement ps=con.prepareStatement("select * from product where catagorie1=? and pprice>1000");
					ps.setString(1,req.getParameter("cata1"));
					//ps.setInt(2,Integer.parseInt(req.getParameter("rangenum")));
					
					ResultSet rs=ps.executeQuery();
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
				
				
				//return al;
				
				
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return al;
	}

}
