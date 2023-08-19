package com.daoclass;
import com.connection.*;
import java.sql.*;
import java.util.*;
import com.binclass.*;
public class AllAdminDAO {
  public ArrayList<AdminBean> al=new ArrayList<>();
  public ArrayList<AdminBean> showAllAdmin()
  {
	  try {
		  Connection con=DBConnection.getcon();
		  PreparedStatement ps=con.prepareStatement("SELECT * FROM ADMIN");
		  ResultSet rs=ps.executeQuery();
		  while(rs.next())
		  {
			  AdminBean ab=new AdminBean();
			  ab.setId(rs.getInt(1));
			  ab.setName(rs.getString(2));
			  ab.setEmail(rs.getString(3));
			  ab.setPassword(rs.getString(4));
			  ab.setPhone(rs.getLong(5));
			  ab.setGender(rs.getString(6));
			  al.add(ab);
		  }
		  
	  }
	  catch(Exception e)
	  {
		  e.printStackTrace();
	  }
	  return al;
  }

}
