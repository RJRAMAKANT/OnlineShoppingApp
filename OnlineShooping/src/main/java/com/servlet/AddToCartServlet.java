package com.servlet;
import javax.servlet.*;
import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import com.binclass.*;
import com.daoclass.*;
@SuppressWarnings("serial")
@WebServlet("/cart")
public class AddToCartServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		
		HttpSession hs=req.getSession(false);
		{
			if(hs==null)
			{
				req.setAttribute("status","session");
				req.getRequestDispatcher("index.jsp").forward(req, res);
				
			}
			else
			{
				int Pid=Integer.parseInt(req.getParameter("pid"));
				int Cid=Integer.parseInt(req.getParameter("uid"));
				String psizee=req.getParameter("size");
				int pqnty=Integer.parseInt(req.getParameter("qty"));
				//System.out.println(psizee);
				UserBean ub=new UserBean();
				ub.setCid(Cid);
				String uname=req.getParameter("uname");
				ProductBean pb=new ProductBean();
				pb.setPid(Pid);
				ProductBean pbb=new AddProductByIdDAO().getProductById(pb);
				AddToCartBean acb=new AddToCartBean();
				acb.setUserid(Cid);
				acb.setPid(pbb.getPid());
				acb.setPname(pbb.getPname());
				acb.setPcompny(pbb.getPcompany());
				acb.setPprice(pbb.getPrice());
				acb.setPcatagori1(pbb.getPcatagori1());
				acb.setPcatagori2(pbb.getPcatagorie2());
				acb.setPimage(pbb.getImage1());
				acb.setUfname(uname);
				acb.setPsize(psizee);
				acb.setPqntity(pqnty);
			
				int k=new AddToCartDAO().addtoCart(acb);
				if(k>0)
				{
					req.setAttribute("status","add");
					
				}
				else
				{
					req.setAttribute("status","wentwrong");
					//req.getRequestDispatcher("UserPage.jsp").forward(req, res);
				}
				req.getRequestDispatcher("UserPage.jsp").forward(req, res);
			}
		}
	}

}
