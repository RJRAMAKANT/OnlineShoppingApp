package com.daoclass;
import java.sql.*;
import com.binclass.*;
import com.connection.DBConnection;
public class AddProductByIdDAO {
	public ProductBean pb=null;
	public ProductBean getProductById(ProductBean pb)
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("SELECT*FROM product where pid=?");
			ps.setInt(1, pb.getPid());
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

}
