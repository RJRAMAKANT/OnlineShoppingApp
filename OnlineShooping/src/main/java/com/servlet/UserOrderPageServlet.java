package com.servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import com.binclass.*;
import com.daoclass.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;
@SuppressWarnings("serial")
@WebServlet("/oderpage")
public class UserOrderPageServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("status","session");
			req.getRequestDispatcher("index.jsp").forward(req, res);
		}
		else
		{
			int userid=Integer.parseInt(req.getParameter("uid"));
			OrderBean ob=new OrderBean();
			ob.setUserid(userid);
			ArrayList<OrderBean>al=new ShowAllOrderDAO().showAllOrderbyuid(ob);
			if(al.size()==0)
			{
				req.setAttribute("status", "nothing");
				req.getRequestDispatcher("UserPage.jsp").forward(req, res);
			}
			else
			{
				hs.setAttribute("uorder", al);
				req.getRequestDispatcher("AllOrderByUser.jsp").forward(req, res);
			}
			
		}
	}
}
