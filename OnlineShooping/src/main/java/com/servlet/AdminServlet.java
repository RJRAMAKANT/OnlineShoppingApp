package com.servlet;
import com.binclass.*;
import com.daoclass.AdminDAO;

import javax.servlet.*;
import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/adminlogin")
public class AdminServlet extends HttpServlet {
	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		int random=Integer.parseInt(req.getParameter("randomnum"));
		int random1=Integer.parseInt(req.getParameter("randomnum1"));
		
		if(random == random1)
		{
			AdminBean ab=new AdminDAO().login(req);
	;
			if(ab==null)
			{
				req.setAttribute("status","expire");
				//req.getRequestDispatcher("index.jsp").forward(req, res);
				req.getRequestDispatcher("AdminLogin.jsp").forward(req, res);
			}
			else {
				HttpSession hs=req.getSession();
				hs.setAttribute("admin", ab);
			   req.getRequestDispatcher("AdminDashboard.jsp").forward(req, res);
			}
			
		}
		else {
			req.setAttribute("status","failed");
			req.getRequestDispatcher("AdminLogin.jsp").forward(req, res);

			
		}
	
	}

}
