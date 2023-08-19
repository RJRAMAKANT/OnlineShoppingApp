package com.servlet;

import java.io.*;
import java.util.ArrayList;

import com.binclass.*;
import com.daoclass.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/shopcat2")

public class ShopByCat2Servlet extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("status","session");
			req.getRequestDispatcher("index.jsp").forward(req, res);
		}
		else
		{
			String catagories2=req.getParameter("cat2");
			ProductBean pb=new ProductBean();
			pb.setPcatagorie2(catagories2);
			ArrayList<ProductBean>al=new ShopByCat2DAO().showproduct1(pb);
			if(al.size()==0)
			{
				req.setAttribute("status","zero");
				req.getRequestDispatcher("UserPage.jsp").forward(req, res);
			}
			else
			{
				hs.setAttribute("catt2", al);
				req.getRequestDispatcher("UserChoiceCat2.jsp").forward(req, res);
			}
			
		}
	}


}
