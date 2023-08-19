package com.servlet;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import javax.servlet.annotation.*;
import com.binclass.*;
import com.daoclass.*;
@WebServlet("/userlogin")
@SuppressWarnings("serial")
public class UserLoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		HttpSession hs=req.getSession();
		int Random1=Integer.parseInt(req.getParameter("random1"));
		int Random2=Integer.parseInt(req.getParameter("random2"));
		if(Random1 == Random2)
		{
			UserBean ub=new UserLoginDAO().getuser(req);
			if(ub==null)
			{
				req.setAttribute("status", "wrongp");
				req.getRequestDispatcher("Login.jsp").forward(req, res);
			}
			else
			{
				hs.setAttribute("user", ub);
				req.getRequestDispatcher("UserPage.jsp").forward(req, res);
			}
			
			
			
		}
		else
		{
			req.setAttribute("status","wrong");
			req.getRequestDispatcher("Login.jsp").forward(req, res);
		}
		
	}

}
