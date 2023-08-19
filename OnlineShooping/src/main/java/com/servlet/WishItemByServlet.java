package com.servlet;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.*;
import com.binclass.*;
import com.daoclass.*;
import java.util.*;
@SuppressWarnings("serial")
@WebServlet("/wishitem")
public class WishItemByServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("status","session");
			req.getRequestDispatcher("index.jsp").forward(req, res);
		}
		else
		{
			int cid=Integer.parseInt(req.getParameter("cid"));
			WishListBean wsb=new WishListBean();
			wsb.setUserid(cid);
			ArrayList<WishListBean>al=new WishListByIdDAO().showwishlist(wsb);
			if(al.size()==0)
			{
				req.setAttribute("status","empty");
				req.getRequestDispatcher("UserPage.jsp").forward(req, res);
			}
			else
			{
				hs.setAttribute("wish", al);
				req.getRequestDispatcher("WishList.jsp").forward(req, res);
			}
		}
		
		
	}

}
