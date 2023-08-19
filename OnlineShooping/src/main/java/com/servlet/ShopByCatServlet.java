package com.servlet;
import java.io.*;
import java.util.ArrayList;

import com.binclass.*;
import com.daoclass.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/shop")
public class ShopByCatServlet extends HttpServlet{
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
			String catagories=req.getParameter("cat");
			ProductBean pb=new ProductBean();
			pb.setPcatagori1(catagories);
			ArrayList<ProductBean>al=new ShopByCatDAO().showproduct(pb);
			if(al.size()==0)
			{
				req.setAttribute("status","zero");
				req.getRequestDispatcher("UserPage.jsp").forward(req, res);
			}
			else
			{
				hs.setAttribute("catt", al);
				req.getRequestDispatcher("UserChoice.jsp").forward(req, res);
			}
			
		}
	}

}
