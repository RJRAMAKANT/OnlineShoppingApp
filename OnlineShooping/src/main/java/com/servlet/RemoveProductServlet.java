package com.servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.binclass.*;
import com.connection.DBConnection;
import com.daoclass.*;
import com.connection.*;
import java.sql.*;
@SuppressWarnings({ "serial", "unused" })
@WebServlet("/removep")
public class RemoveProductServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("status","session");
			req.getRequestDispatcher("AdminLogin.jsp").forward(req, res);
		}
		else
		{
			int code=Integer.parseInt(req.getParameter("pid"));
			//ProductBean pb=new ProductBean();
			//pb.setPid(code);
			int k=0;
			try {
				Connection con=DBConnection.getcon();
				PreparedStatement ps=con.prepareStatement("delete from product where pid=?");
				ps.setInt(1, code);
			    k=ps.executeUpdate();
			    if(k>0)
			    {
			    	req.setAttribute("status","complete");
			    }
			    else
			    {
			    	req.setAttribute("status","notcomplete");
			    }
			    req.getRequestDispatcher("AllProduct.jsp").forward(req, res);
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	}

}
