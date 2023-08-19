package com.daoclass;
import java.sql.*;
import com.binclass.*;
import com.connection.DBConnection;

import java.util.*;
public class ShowProductDetailsDAO {
	public ProductBean pb=null;
	//public ArrayList<ProductBean>al=new ArrayList<>();
	public ArrayList<ProductBean>all=new ArrayList<>();
	public ProductBean showpDetails(ProductBean pb)
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM PRODUCT WHERE PID=?");
			ps.setInt(1,pb.getPid());
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				 pb=new ProductBean();
				 pb.setPid(rs.getInt(1));
				 pb.setPname(rs.getString(2));
				 pb.setPcompany(rs.getString(3));
				 pb.setPrice(rs.getInt(4));
				 pb.setPcatagori1(rs.getString(5));
				 pb.setPcatagorie2(rs.getString(6));
				 pb.setImage1(rs.getString(7));
				 pb.setImage2(rs.getString(8));
				
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return pb;
	}
	
	
	
	public ArrayList<ProductBean> showproductbyName(ProductBean pb)
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("select*from product where catagorie1=?");
			ps.setString(1,pb.getPcatagori1());
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				 pb=new ProductBean();
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
