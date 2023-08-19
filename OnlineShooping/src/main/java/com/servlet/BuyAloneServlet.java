package com.servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import com.binclass.*;
import com.daoclass.*;
import com.count.*;
@SuppressWarnings({ "serial", "unused" })
@WebServlet("/buyalone")
public class BuyAloneServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("status","session");
			req.getRequestDispatcher("index.jsp").forward(req, res);
		}
		else
		{
			int cartid=Integer.parseInt(req.getParameter("pid"));
			AddToCartBean ab=new AddToCartBean();
			ab.setCartid(cartid);
			AddToCartBean acb=new BuyAloneDAO().getdetails(ab);
			hs.setAttribute("buyalone", acb);
			req.getRequestDispatcher("BuyAlone.jsp").forward(req, res);
		}
	}
}
