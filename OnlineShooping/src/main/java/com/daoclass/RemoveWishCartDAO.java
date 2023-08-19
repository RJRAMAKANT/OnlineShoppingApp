package com.daoclass;
import java.sql.*;
import com.binclass.*;
import com.connection.DBConnection;
public class RemoveWishCartDAO {
	public int k=0;
	public int removewish(WishListBean wlb)
	{
		
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("delete from wishlist where cartid=?");
			ps.setInt(1,wlb.getCartid());
			k=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
	}

}
