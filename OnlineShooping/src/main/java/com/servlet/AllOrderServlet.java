package com.servlet;
import java.io.*;
import java.util.ArrayList;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import com.daoclass.*;
import com.binclass.*;
@SuppressWarnings("serial")
@WebServlet("/vieworder")
public class AllOrderServlet extends HttpServlet{
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
			ArrayList<OrderBean>al=new ShowAllOrderDAO().showAllOrder();
			if(al.size()==0)
			{
				req.setAttribute("status", "notdone");
				req.getRequestDispatcher("AdminDashboard.jsp").forward(req, res);
			}
			else
			{
				hs.setAttribute("ob", al);
				req.getRequestDispatcher("AllOrder.jsp").forward(req, res);
			}
			
		}
		
	}

}
