package com.daoclass;
import java.sql.*;
import java.util.ArrayList;

import com.binclass.*;
import com.connection.DBConnection;


public class ShopByCatDAO {
	public ArrayList<ProductBean>al=new ArrayList<>();
	
	public ProductBean pb=null;
	
   public ArrayList<ProductBean> showproduct(ProductBean pb)
   {
	   try {
		   Connection con=DBConnection.getcon();
		   PreparedStatement ps=con.prepareStatement("select*from product where CATAGORIE1=?");
		   ps.setString(1,pb.getPcatagori1());
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
			   al.add(pb);
			   
		   }
		   
		   
	   }
	   catch(Exception e){
		   e.printStackTrace();
		   
	   }
	   return al;
   }
   
   
  

}
