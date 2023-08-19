package com.daoclass;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.binclass.WishListBean;
import com.connection.DBConnection;

public class AddToWishListDAO {
	public int k=0;
	public int addtowishlist(WishListBean wlb)
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("insert into wishlist values(wishlist1.nextval,?,?,?,?,?,?,?,?,?,?)");
		    ps.setInt(1,wlb.getUserid());
		    ps.setInt(2,wlb.getProdid());
		    ps.setString(3,wlb.getProdName());
		    ps.setString(4,wlb.getProdCompany());
		    ps.setInt(5,wlb.getPrice());
		    ps.setString(6, wlb.getPcatagori1());
		    ps.setString(7,wlb.getPcatagorie2());
		    ps.setString(8,wlb.getPimage1());
			ps.setString(9,wlb.getPimage2());
			ps.setString(10,wlb.getUserfname());
			k=ps.executeUpdate();
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
		
	}


}
