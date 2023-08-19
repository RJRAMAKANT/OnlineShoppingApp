package com.count;
import javax.servlet.http.*;
import com.binclass.*;
import com.connection.DBConnection;

import java.sql.*;
public class BuyAloneDAO {
	//public ArrayList<UserBean>al=new ArrayList<>();
	public AddToCartBean acb=null;
	public AddToCartBean getdetails(AddToCartBean acb)
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("Select * from addtocart where cartid=?");
			ps.setInt(1, acb.getCartid());
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
				{
				    
				acb=new AddToCartBean();
				acb.setCartid(rs.getInt(1));
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
				
				
			     }
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		return acb;
		
	}
}

