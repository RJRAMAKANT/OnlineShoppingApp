package com.servlet;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.*;
import com.binclass.*;
import com.daoclass.*;
@WebServlet("/pdetails")
public class ShowProductDetailsServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = -773802991640242335L;

	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("status","session");
			req.getRequestDispatcher("index.jsp").forward(req, res);
		}
		else
		{
			int pid=Integer.parseInt(req.getParameter("pid"));
			String pname=req.getParameter("pname");
			ProductBean pb=new ProductBean();
			pb.setPid(pid);
			pb.setPcatagori1(pname);
			
			ProductBean al=new ShowProductDetailsDAO().showpDetails(pb);
			
				hs.setAttribute("pdetails", al);
				req.getRequestDispatcher("ProductDeatils.jsp").forward(req, res);
			
			
			
			
		}
		
	}
	

}
