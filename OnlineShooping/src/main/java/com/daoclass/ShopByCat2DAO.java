package com.daoclass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.binclass.ProductBean;
import com.connection.DBConnection;

public class ShopByCat2DAO {
public ArrayList<ProductBean>al=new ArrayList<>();
	
	public ProductBean pb=null;
	 public ArrayList<ProductBean> showproduct1(ProductBean pb)
	   {
		   try {
			   Connection con=DBConnection.getcon();
			   PreparedStatement ps=con.prepareStatement("select*from product where CATAGORIE2=?");
			   ps.setString(1,pb.getPcatagorie2());
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
