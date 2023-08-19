package com.count;
import java.sql.*;
import java.util.ArrayList;

import com.binclass.*;
import com.connection.DBConnection;
public class CartCountByIdDAO {
	public int k=0;
	public int l=0;
	public int m=0;
	public ArrayList<AddToCartBean> al=new ArrayList<>();
	public int countCart(UserBean ub)
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("select count(*) from addtocart where userid=?");
			ps.setInt(1, ub.getCid());
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
	public ArrayList<AddToCartBean> getProductById(AddToCartBean ub)
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("select*from addtocart where userid=?");
			ps.setInt(1,ub.getUserid());
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				AddToCartBean	acb=new AddToCartBean();
				acb.setCartid(rs.getInt(1));
				acb.setUserid(rs.getInt(2));
				acb.setPid(rs.getInt(3));
				acb.setPname(rs.getString(4));
				acb.setPcompny(rs.getString(5));
				acb.setPprice(rs.getInt(6));
				acb.setPcatagori1(rs.getString(7));
				acb.setPcatagori2(rs.getString(8));
				acb.setPimage(rs.getString(9));
				acb.setUfname(rs.getString(10));
				acb.setPsize(rs.getString(11));
				acb.setPqntity(rs.getInt(12));
				al.add(acb);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return al;
	}
	

	

}
