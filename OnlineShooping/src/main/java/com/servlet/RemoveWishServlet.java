package com.servlet;
import javax.servlet.*;
import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import com.binclass.*;
import com.daoclass.*;
@SuppressWarnings("serial")
@WebServlet("/removewish")
public class RemoveWishServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("status","session");
			req.getRequestDispatcher("index.jsp").forward(req, res);
		}
		else
		{
			int cartid=Integer.parseInt(req.getParameter("cartid"));
			WishListBean wlb=new WishListBean();
			wlb.setCartid(cartid);
			int k=new RemoveWishCartDAO().removewish(wlb);
			if(k>0)
			{
				req.setAttribute("status","removed");
			}
			else
			{
				req.setAttribute("status","wrong");
			}
			req.getRequestDispatcher("UserPage.jsp").forward(req, res);
		}
		
	}

}
