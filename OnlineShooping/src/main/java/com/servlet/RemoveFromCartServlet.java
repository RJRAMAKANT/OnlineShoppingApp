package com.servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import com.binclass.*;
import com.daoclass.*;
@SuppressWarnings("serial")
@WebServlet("/removecart")
public class RemoveFromCartServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		
		if(hs==null){
			req.setAttribute("status","session");
			req.getRequestDispatcher("Login.jsp").forward(req, res);
			
		}
		else
		{
			int cartid=Integer.parseInt(req.getParameter("cartid"));
			AddToCartBean acb=new AddToCartBean();
			acb.setCartid(cartid);
			int k=new RemoveFromCartDAO().removecart(acb);
			 if(k>0)
				{
					req.setAttribute("status","removed");
					
				}
			 else {
				 req.setAttribute("status","failed");
				 
			 }
			req.getRequestDispatcher("UserPage.jsp").forward(req, res);
			
			
		}
		
		
	}

}
