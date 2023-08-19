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
@SuppressWarnings("serial")
@WebServlet("/orderproduct")
public class OrderServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("status","session");
			req.getRequestDispatcher("index.jsp").forward(req, res);
		}
		else
		{
			int userid=Integer.parseInt(req.getParameter("userid"));
			int total=Integer.parseInt(req.getParameter("totalprice"));
			int pqty=Integer.parseInt(req.getParameter("pqty"));
			long pin=Long.parseLong(req.getParameter("pin"));
			String uname=req.getParameter("username");
			String pname=req.getParameter("prdname");
			String delfee=req.getParameter("dcharges");
			String psize=req.getParameter("psize");
			String secfee=req.getParameter("packingfee");
			String ordername=req.getParameter("ousername");
			String hno=req.getParameter("houseno");
			String mobile=req.getParameter("mobile");
			String at=req.getParameter("atpo");
			String dist=req.getParameter("dist");
			String landmark=req.getParameter("landmark");
			String paymethod=req.getParameter("paymentmethod");
			String brand=req.getParameter("pbrand");
			
			OrderBean ob=new OrderBean();
			ob.setAt(at);
			ob.setDelfee(delfee);
			ob.setDist(dist);
			ob.setHno(hno);
			ob.setLandmark(landmark);
			ob.setMobile(mobile);
			ob.setOrdername(ordername);
			ob.setPayment(paymethod);
			ob.setPin(pin);
			ob.setSecfee(secfee);
			ob.setUname(uname);
			ob.setTotal(total);
			ob.setUserid(userid);
			ob.setProdname(pname);
			ob.setPqty(pqty);
			ob.setPsize(psize);
			ob.setBrand(brand);
			
			int k=new OrderDAO().placeOrder(ob);
			if(k>0)
			{
				req.getRequestDispatcher("OrderSuccessfull.jsp").forward(req, res);
			}
			
		}
	}

}
