package com.daoclass;
import java.io.*;
import com.binclass.*;
import com.connection.DBConnection;

import java.sql.*;
import java.util.*;
@SuppressWarnings("unused")
public class ShowAllProductDAO {
	public ArrayList<ProductBean>al=new ArrayList<>();
	public ArrayList<ProductBean>showAllProduct()
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("Select*from product");
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
		return al;
	}

}
