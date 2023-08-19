package com.daoclass;
import java.sql.*;
import com.binclass.*;
import com.connection.DBConnection;

import java.util.*;
public class WishListByIdDAO {
	public ArrayList<WishListBean>al=new ArrayList<>();
	public WishListBean wlb=null;
	public int p=0;
	public ArrayList<WishListBean> showwishlist(WishListBean wlb)
	{
		
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("select*from wishlist where userid=?");
			ps.setInt(1,wlb.getUserid());
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				wlb=new WishListBean();
				wlb.setCartid(rs.getInt(1));
				wlb.setUserid(rs.getInt(2));
				wlb.setProdid(rs.getInt(3));
				wlb.setProdName(rs.getString(4));
				wlb.setProdCompany(rs.getString(5));
				wlb.setPrice(rs.getInt(6));
				wlb.setPcatagori1(rs.getString(7));
				wlb.setPcatagorie2(rs.getString(8));
				wlb.setPimage1(rs.getString(9));
				wlb.setPimage2(rs.getString(10));
				wlb.setUserfname(rs.getString(11));
				al.add(wlb);
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return al;
		
	}
	
	

}
