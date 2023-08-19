package com.servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import com.binclass.*;
import com.daoclass.*;
@SuppressWarnings("serial")
@WebServlet("/updateorderstatus")
public class UpdateStatusServlet extends HttpServlet{
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("status","session");
			req.getRequestDispatcher("index.jsp").forward(req, res);
		}
		else
		{
			int cartid=Integer.parseInt(req.getParameter("oid"));
			System.out.println(cartid);
			String oStatus=req.getParameter("orderstatus");
			System.out.println(oStatus);
			
			OrderBean ob=new OrderBean();
			ob.setOrderid(cartid);
			ob.setStatus(oStatus);
		
			int m=new OrderDAO().updateOrder(ob);
			if(m>0)
			{
				req.setAttribute("update","change");
				req.getRequestDispatcher("AdminDashboard.jsp").forward(req, res);
			}
		}
	}

}
