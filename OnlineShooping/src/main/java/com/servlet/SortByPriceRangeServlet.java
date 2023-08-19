package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.daoclass.*;
import com.binclass.*;
import java.util.*;

@SuppressWarnings("serial")
@WebServlet("/rangebyprice")
public class SortByPriceRangeServlet extends HttpServlet{
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("status","session");
			req.getRequestDispatcher("index.jsp").forward(req, res);
		}
		else
		{
			
			ArrayList<ProductBean>al=new SortByRangeDAO().showProductbyrange(req);
			if(al.size()==0)
			{
				req.setAttribute("status","na");
				req.getRequestDispatcher("UserChoice.jsp").forward(req, res);
			}
			else
			{
				hs.setAttribute("sortbyrange", al);
				req.getRequestDispatcher("SortByRange.jsp").forward(req, res);
			}
			
			
		}
		
	}

}
