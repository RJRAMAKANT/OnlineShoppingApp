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

@SuppressWarnings({ "serial", "unused" })
@WebServlet("/edituserpassword")
public class UpdateUserPasswordServlet extends HttpServlet {
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
			int k=new AllUserDAO().updateuserpass(req);
			if(k>0)
			{
				req.setAttribute("status","uupdate");
				req.getRequestDispatcher("PasswordUpdated.jsp").forward(req, res);
			}
		}
	}
}
