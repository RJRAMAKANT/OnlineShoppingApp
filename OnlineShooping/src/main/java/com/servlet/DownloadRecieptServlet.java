package com.servlet;
import javax.servlet.*;
import java.io.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import com.binclass.*;
import com.daoclass.*;
@SuppressWarnings("serial")
@WebServlet("/orderid")
public class DownloadRecieptServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("status","session");
			req.getRequestDispatcher("index.jsp").forward(req, res);
		}
		else 
		   {
			int Orderid=Integer.parseInt(req.getParameter("orderid1"));
			OrderBean ob=new OrderBean();
			ob.setOrderid(Orderid);
			OrderBean obb=new OrderDAO().getorder(ob);
			hs.setAttribute("orderbyoid", obb);
			req.getRequestDispatcher("DownloadReciept.jsp").forward(req, res);
		}
		
	}

}
