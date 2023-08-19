package com.servlet;
import java.io.*;
import java.util.ArrayList;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import com.binclass.*;
import com.daoclass.*;
@SuppressWarnings("serial")
@WebServlet("/alladmin")
public class ShowAllAdminServlet  extends HttpServlet{
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg","SESSION EXPIRED");
			req.getRequestDispatcher("AdminLogin.jsp").forward(req, res);
		}
		else
		{
		 ArrayList<AdminBean>al=new AllAdminDAO().showAllAdmin();
		 hs.setAttribute("al", al);
		 req.getRequestDispatcher("ShowAllAdmin.jsp").forward(req, res);
		}
		
	}

}
