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
@WebServlet("/admineditprofile")
public class EditAdminServlet extends HttpServlet {
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
			int aid=Integer.parseInt(req.getParameter("aid"));
			AdminBean ab=new AdminBean();
			ab.setId(aid);
			AdminBean abb=new AdminDAO().editAdmin(ab);
			hs.setAttribute("editAdmin", abb);
			req.getRequestDispatcher("editAdmin.jsp").forward(req, res);
		}
		
	}

}
