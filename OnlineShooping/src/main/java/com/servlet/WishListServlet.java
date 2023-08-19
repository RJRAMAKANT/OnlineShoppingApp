package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.binclass.ProductBean;
import com.binclass.*;
import com.binclass.UserBean;
import com.daoclass.AddProductByIdDAO;
import com.daoclass.*;
@SuppressWarnings({ "serial", "unused" })
@WebServlet("/wish")
public class WishListServlet extends HttpServlet{
	
protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		
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
				String uname=req.getParameter("uname");
				ProductBean pb=new ProductBean();
				pb.setPid(Pid);
				ProductBean pbb=new AddProductByIdDAO().getProductById(pb);
			    WishListBean wlb=new WishListBean();
			    wlb.setUserid(Cid);
			    wlb.setProdid(pbb.getPid());
			    wlb.setProdName(pbb.getPname());
			    wlb.setProdCompany(pbb.getPcompany());
			    wlb.setPrice(pbb.getPrice());
			    wlb.setPcatagori1(pbb.getPcatagori1());
			    wlb.setPcatagorie2(pbb.getPcatagorie2());
			    wlb.setPimage1(pbb.getImage1());
			    wlb.setPimage2(pbb.getImage2());
			    wlb.setUserfname(uname);
			    int k=new AddToWishListDAO().addtowishlist(wlb);
			    if(k>0)
			    {
			    	req.setAttribute("status","add");
					req.getRequestDispatcher("UserPage.jsp").forward(req, res);
			    }
			    else
				{
					req.setAttribute("status","wentwrong");
					req.getRequestDispatcher("UserPage.jsp").forward(req, res);
				}
				
				
			}
		}
      
     }

}
