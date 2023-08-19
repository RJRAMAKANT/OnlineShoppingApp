package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.binclass.*;
import com.daoclass.AllUserDAO;
@SuppressWarnings("serial")
@WebServlet("/alluser")
public class ShowAllUserServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg","SESSION EXPIRED");
			req.getRequestDispatcher("AdminLogin.jsp").forward(req, res);
		}
		else
		{
		 ArrayList<UserBean>ub=new AllUserDAO().showAllUser();
		 hs.setAttribute("user", ub);
		 req.getRequestDispatcher("ShowAllUser.jsp").forward(req, res);
		}
		
	}
}
