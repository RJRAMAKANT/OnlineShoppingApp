package com.daoclass;
import java.io.*;
import java.sql.*;
import com.connection.*;
import com.binclass.*;
import javax.servlet.http.*;
@SuppressWarnings("unused")
public class UserSignUpDAO {
	public int k=0;
	public int userSignup(UserBean ub)
	{
		
		try {
			Connection con=DBConnection.getcon();
			PreparedStatement ps=con.prepareStatement("insert into customer values(customer1.nextval,?,?,?,?,?,?,?)");
			ps.setString(1,ub.getFname());
			ps.setString(2, ub.getLname());
			ps.setString(3, ub.getEmail());
			ps.setLong(4,ub.getPhone());
			ps.setString(5,ub.getGender());
			ps.setString(6,ub.getCountry());
			ps.setString(7,ub.getPassword());
			k=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return k;
		
	}

}
