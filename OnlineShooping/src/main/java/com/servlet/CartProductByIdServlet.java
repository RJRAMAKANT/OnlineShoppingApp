package com.servlet;
import java.io.*;
import java.util.ArrayList;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import com.binclass.*;
import com.count.*;

@SuppressWarnings("serial")
@WebServlet("/CartItembyId")
public class CartProductByIdServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("status","session");
			req.getRequestDispatcher("Login.jsp").forward(req, res);
		}
		else
		{
			int cid=Integer.parseInt(req.getParameter("cid"));
			AddToCartBean acb=new AddToCartBean();
			acb.setUserid(cid);
			ArrayList<AddToCartBean>al=new CartCountByIdDAO().getProductById(acb);
			if(al.size()==0)
			{
				req.setAttribute("status","empty");
				req.getRequestDispatcher("UserPage.jsp").forward(req, res);
			}
			else
			{
				hs.setAttribute("cart", al);
				req.getRequestDispatcher("CartItem.jsp").forward(req, res);
			}
		}
	}

}
