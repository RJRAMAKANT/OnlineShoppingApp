package com.servlet;
import com.binclass.*;
import java.io.*;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import com.daoclass.*;
@SuppressWarnings("serial")
@WebServlet("/addproduct")
@MultipartConfig
public class AddProductServlet extends HttpServlet {
	

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession();
		if(hs==null)
		{
			req.setAttribute("status","session");
			req.getRequestDispatcher("AdminLogin.jsp").forward(req, res);
		}
		else {
		
		String productname=req.getParameter("pname");
		String pcompny=req.getParameter("pcompny");
		int price=Integer.parseInt(req.getParameter("pprice"));
		String catagori1=req.getParameter("catagori1");
		String catagori2=req.getParameter("catagori2");
		Part part=req.getPart("image1");
		Part part1=req.getPart("image2");
		String filename=part.getSubmittedFileName();
		String filename2=part1.getSubmittedFileName();
		ProductBean pb=new ProductBean();
		pb.setPname(productname);
		pb.setPcompany(pcompny);
		pb.setPrice(price);
		pb.setPcatagori1(catagori1);
		pb.setPcatagorie2(catagori2);
		pb.setImage1(filename);
		pb.setImage2(filename2);
		
		 int k=new AddProductDAO().addProduct(pb);
		 if(k>0)
		 {
			  String path=getServletContext().getRealPath("")+"product";
		
			 //System.out.println(path);
		
			File f=new File(path);
			part.write(path+File.separator+filename);
			part1.write(path+File.separator+filename2);
			req.setAttribute("status", "done");
		 }
		 else {
			 req.setAttribute("status","something");
			 
		 }
		 req.getRequestDispatcher("AddProduct.jsp").forward(req, res);
		}
		
		
	}

}
