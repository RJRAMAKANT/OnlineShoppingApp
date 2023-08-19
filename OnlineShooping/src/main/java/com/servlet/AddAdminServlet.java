package com.servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import com.daoclass.*;
@SuppressWarnings("serial")
@WebServlet("/addadmin")
public class AddAdminServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("status","expire");
			req.getRequestDispatcher("AdminLogin.jsp").forward(req, res);
		}
		else
		{
			
			int k=new AddAdminDAO().addAdmin(req);
			
			if(k>0)
			{
				req.setAttribute("status", "success");
				
			}
			else {
				req.setAttribute("status", "failed");
			}
			req.getRequestDispatcher("AddAdmin.jsp").forward(req, res);
		}
	}

}
