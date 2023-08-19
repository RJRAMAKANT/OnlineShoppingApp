
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
@WebServlet("/sortingbycat2")
public class SortByCatagori2Servlet extends HttpServlet {
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("status","session");
			req.getRequestDispatcher("index.jsp").forward(req, res);
		}
		else
		{
			
		//	String catagorie=req.getParameter("cata");
		//	String Sort=req.getParameter("select");
		//	System.out.println(Sort);
		//	System.out.println(catagorie);
			ArrayList<ProductBean>al=new SortingDAO().sotyBycat2(req);
			hs.setAttribute("sortbycat2", al);
			req.getRequestDispatcher("SortingByCat2Page.jsp").forward(req, res);
		}
	}
}

