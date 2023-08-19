package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.binclass.*;
import com.daoclass.*;


@SuppressWarnings("serial")

@WebServlet("/edituserpass")
public class EditUserServlet  extends HttpServlet{
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
			int cid=Integer.parseInt(req.getParameter("cid"));
			UserBean ub=new UserBean();
			ub.setCid(cid);
			UserBean ubb=new AllUserDAO().showUser(ub);
			hs.setAttribute("edituser",ubb);
			req.getRequestDispatcher("EditUser.jsp").forward(req, res);
		}
		
	}
}
