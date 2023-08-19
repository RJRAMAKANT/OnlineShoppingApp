package com.daoclass;
import java.io.*;
import com.binclass.*;
import com.connection.DBConnection;

import java.sql.*;
import java.util.*;
@SuppressWarnings("unused")
public class ShowAllOrderDAO {
	public ArrayList<OrderBean>al=new ArrayList<>();
	public ArrayList<OrderBean>all=new ArrayList<>();
	public ArrayList<OrderBean>showAllOrder()
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("Select*from orderproduct");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				OrderBean ob=new OrderBean();
				ob.setOrderid(rs.getInt(1));
				ob.setUserid(rs.getInt(2));
				ob.setUname(rs.getString(3));
				ob.setDelfee(rs.getString(4));
				ob.setSecfee(rs.getString(5));
				ob.setTotal(rs.getInt(6));
				ob.setProdname(rs.getString(7));
				ob.setPqty(rs.getInt(8));
				ob.setPsize(rs.getString(9));
				ob.setBrand(rs.getString(10));
				ob.setOrdername(rs.getString(11));
				ob.setHno(rs.getString(12));
				ob.setMobile(rs.getString(13));
				ob.setAt(rs.getString(14));
				ob.setDist(rs.getString(15));
				ob.setLandmark(rs.getString(16));
				ob.setPin(rs.getLong(17));
				ob.setPayment(rs.getString(18));
				ob.setStatus(rs.getString(19));
				al.add(ob);
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return al;
	}
	
	
	public ArrayList<OrderBean>showAllOrderbyuid(OrderBean ob)
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("Select*from orderproduct where userid=?");
			ps.setInt(1,ob.getUserid());
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				 ob=new OrderBean();
				ob.setOrderid(rs.getInt(1));
				ob.setUserid(rs.getInt(2));
				ob.setUname(rs.getString(3));
				ob.setDelfee(rs.getString(4));
				ob.setSecfee(rs.getString(5));
				ob.setTotal(rs.getInt(6));
				ob.setProdname(rs.getString(7));
				ob.setPqty(rs.getInt(8));
				ob.setPsize(rs.getString(9));
				ob.setBrand(rs.getString(10));
				ob.setOrdername(rs.getString(11));
				ob.setHno(rs.getString(12));
				ob.setMobile(rs.getString(13));
				ob.setAt(rs.getString(14));
				ob.setDist(rs.getString(15));
				ob.setLandmark(rs.getString(16));
				ob.setPin(rs.getLong(17));
				ob.setPayment(rs.getString(18));
				ob.setStatus(rs.getString(19));
				all.add(ob);
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return all;
	}

}
