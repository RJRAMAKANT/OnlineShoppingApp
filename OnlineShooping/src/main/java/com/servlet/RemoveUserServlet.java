package com.servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import com.binclass.*;
import com.count.*;
@SuppressWarnings("serial")
@WebServlet("/remove")
public class RemoveUserServlet extends HttpServlet{
	
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("status", "session");
			req.getRequestDispatcher("index.jsp").forward(req, res);
		}
		else
		{
			int code=Integer.parseInt(req.getParameter("cid"));
			UserBean ub=new UserBean();
			ub.setCid(code);
			int m=new AllAdmin().userRemove(ub);
			if(m>0)
			{
				req.setAttribute("status", "removed");
			
			}
			
			req.getRequestDispatcher("ShowAllUser.jsp").forward(req, res);
		
		}
	}

}
