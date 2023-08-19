package com.daoclass;
import com.binclass.*;
import com.connection.*;
import java.sql.*;
public class AddProductDAO {
   public int k=0;
   public int addProduct(ProductBean pb)
   {
	   try {
		   Connection con=DBConnection.getcon();
		   PreparedStatement ps=con.prepareStatement("insert into product values(product1.nextval,?,?,?,?,?,?,?)");
		   ps.setString(1, pb.getPname());
		   ps.setString(2, pb.getPcompany());
		   ps.setInt(3, pb.getPrice());
		   ps.setString(4, pb.getPcatagori1());
		   ps.setString(5, pb.getPcatagorie2());
		   ps.setString(6, pb.getImage1());
		   ps.setString(7, pb.getImage2());
		   k=ps.executeUpdate();
		   
		   
	   }
	   catch(Exception e)
	   {
		   e.printStackTrace();
	   }
	   return k;
   }
}
