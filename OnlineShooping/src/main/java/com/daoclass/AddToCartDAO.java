package com.daoclass;
import java.sql.*;
import com.binclass.*;
import com.connection.*;
public class AddToCartDAO {
	public int l=0;
	public int addtoCart(AddToCartBean acb)
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("insert into Addtocart values(cart1.nextval,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setInt(1,acb.getUserid());
			ps.setInt(2,acb.getPid());
			ps.setString(3,acb.getPname());
			ps.setString(4,acb.getPcompny());
			ps.setInt(5, acb.getPprice());
			ps.setString(6,acb.getPcatagori1());
			ps.setString(7,acb.getPcatagori2());
			ps.setString(8,acb.getPimage());
			ps.setString(9,acb.getUfname());
			ps.setString(10,acb.getPsize());
			ps.setInt(11,acb.getPqntity());
			//System.out.print(acb.getPsize());
			
			l=ps.executeUpdate();
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return l;
		
	}

}
