package com.servlet;
import java.io.*;
import java.util.ArrayList;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import com.daoclass.*;
import com.binclass.*;
@SuppressWarnings("serial")
@WebServlet("/showallproduct")
public class AllProductServlet extends HttpServlet{
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
			ArrayList<ProductBean>al=new ShowAllProductDAO().showAllProduct();
			if(al.size()==0)
			{
				req.setAttribute("status", "notdone");
				req.getRequestDispatcher("AdminDashboard.jsp").forward(req, res);
			}
			else
			{
				hs.setAttribute("pb", al);
				req.getRequestDispatcher("AllProduct.jsp").forward(req, res);
			}
			
		}
		
	}

}
