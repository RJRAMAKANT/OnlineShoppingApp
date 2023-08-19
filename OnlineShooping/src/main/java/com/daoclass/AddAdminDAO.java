package com.daoclass;
import java.sql.*;
import java.io.*;
import com.connection.*;
import com.binclass.*;
import javax.servlet.http.*;
@SuppressWarnings("unused")
public class AddAdminDAO {
  public int k=0;
  
  public int addAdmin(HttpServletRequest req) {
	  try {
		  Connection con=DBConnection.getcon();
		  PreparedStatement ps=con.prepareStatement("insert into admin values(admin1.nextval,?,?,?,?,?)");
		  ps.setString(1, req.getParameter("Name"));
		  ps.setString(2, req.getParameter("Mail"));
		  ps.setString(3, req.getParameter("Password"));
		  ps.setLong(4, Long.parseLong(req.getParameter("Phone")));
		  ps.setString(5, req.getParameter("gender"));
		  k=ps.executeUpdate();
		  
	  }
	  catch(Exception e)
	  {
		  e.printStackTrace();
	  }
	  return k;
	  
  }
}
