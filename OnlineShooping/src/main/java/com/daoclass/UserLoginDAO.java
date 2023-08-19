package com.daoclass;
import javax.servlet.http.*;
import com.binclass.*;
import com.connection.DBConnection;

import java.sql.*;
public class UserLoginDAO {
	//public ArrayList<UserBean>al=new ArrayList<>();
	public UserBean ub=null;
	public UserBean getuser(HttpServletRequest req)
	{
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("Select * from customer where email=? and password=?");
			ps.setString(1, req.getParameter("email"));
			ps.setString(2, req.getParameter("password"));
			ResultSet rs=ps.executeQuery();
			while(rs.next())
				{
				    
				  ub=new UserBean();
				   ub.setCid(rs.getInt(1));
				   ub.setFname(rs.getString(2));
				   ub.setLname(rs.getString(3));
				   ub.setEmail(rs.getString(4));
				   ub.setPhone(rs.getLong(5));
				   ub.setGender(rs.getString(6));
				   ub.setCountry(rs.getString(7));
				   ub.setPassword(rs.getString(8));

				   
				
				
			     }
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		return ub;
		
	}
}
