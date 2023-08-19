package com.daoclass;
import java.sql.*;
import com.binclass.*;
import com.connection.DBConnection;
public class OrderDAO {
	public int k=0;
	public int m=0;
	public OrderBean ob=null;
	public int placeOrder(OrderBean ob)
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps= con.prepareStatement("insert into ORDERPRODUCT values(ORDERPRODUCT1.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setInt(1,ob.getUserid());
			ps.setString(2,ob.getUname());
			ps.setString(3,ob.getDelfee());
			ps.setString(4,ob.getSecfee());
			ps.setInt(5, ob.getTotal());
			ps.setString(6, ob.getProdname());
			ps.setInt(7, ob.getPqty());
			ps.setString(8,ob.getPsize());
			ps.setString(9,ob.getBrand());
			ps.setString(10,ob.getOrdername());
			ps.setString(11,ob.getHno());
			ps.setString(12,ob.getMobile());
			ps.setString(13,ob.getAt());
			ps.setString(14,ob.getDist());
			ps.setString(15,ob.getLandmark());
			ps.setLong(16,ob.getPin() );
			ps.setString(17,ob.getPayment());
			ps.setString(18,ob.getStatus());
		   k=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
		
	}
	
	public int updateOrder(OrderBean ob)
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps1= con.prepareStatement("update orderproduct set status=? where orderid=?");
			ps1.setString(1,ob.getStatus());
			ps1.setInt(2,ob.getOrderid());
			
		    m=ps1.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return m;
		
	}
	public OrderBean getorder(OrderBean obb)
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps1= con.prepareStatement("select*from orderproduct where orderid=?");
		    ps1.setInt(1,obb.getOrderid());
			ResultSet rs=ps1.executeQuery();
			while(rs.next())
			{
				obb.setOrderid(rs.getInt(1));
				obb.setUserid(rs.getInt(2));
				obb.setUname(rs.getString(3));
				obb.setDelfee(rs.getString(4));
				obb.setSecfee(rs.getString(5));
				obb.setTotal(rs.getInt(6));
				obb.setProdname(rs.getString(7));
				obb.setPqty(rs.getInt(8));
				obb.setPsize(rs.getString(9));
				obb.setBrand(rs.getString(10));
				obb.setOrdername(rs.getString(11));
				obb.setHno(rs.getString(12));
				obb.setMobile(rs.getString(13));
				
				obb.setAt(rs.getString(14));
				obb.setDist(rs.getString(15));
				obb.setLandmark(rs.getString(16));
				obb.setPin(rs.getLong(17));
				obb.setPayment(rs.getString(18));
				obb.setStatus(rs.getString(19));
				
			}
		    
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return obb;
	}

	

}
