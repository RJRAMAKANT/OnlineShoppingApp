package com.daoclass;
import java.sql.*;
import com.binclass.*;
import com.connection.DBConnection;
public class RemoveFromCartDAO {
	public int k=0;
	@SuppressWarnings("unused")
	public int removecart(AddToCartBean acb)
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("delete from addtocart where cartid=?");
			ps.setInt(1, acb.getCartid());
			int k=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
	}

}
