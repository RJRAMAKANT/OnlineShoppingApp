package com.servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import com.daoclass.*;
import com.binclass.*;
@SuppressWarnings("serial")
@WebServlet("/usersignup")
public class UserSignUpServlet extends HttpServlet {
	@SuppressWarnings("null")
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		  
		    String fname=req.getParameter("fname");
		    String lname=req.getParameter("lname");
		    String mail=req.getParameter("email");
		    long phone=Long.parseLong(req.getParameter("phone"));
		    String gender=req.getParameter("gender");
		    String country=req.getParameter("country");
			String password=req.getParameter("password1");
			String password2=req.getParameter("password2");
			//HttpSession hs1=req.getSession(true);
			if(password.equals(password2))
			{ 
				UserBean ub=new UserBean();
				ub.setFname(fname);
				ub.setLname(lname);
				ub.setEmail(mail);
				ub.setPhone(phone);
				ub.setGender(gender);
				ub.setCountry(country);
				ub.setPassword(password2);
				int k=new UserSignUpDAO().userSignup(ub);
				
				if(k>0)
				{
					
					req.setAttribute("status","success");
					req.getRequestDispatcher("UserSignup.jsp").forward(req, res);
				}
				else
				{
					req.setAttribute("status","failed");
					req.getRequestDispatcher("UserSignup.jsp").forward(req, res);
				}
				
			}
			else {
				req.setAttribute("status","failed1");
				req.getRequestDispatcher("UserSignup.jsp").forward(req, res);
				
			
		}
			//req.getRequestDispatcher("UserSignup.jsp").forward(req, res);
		
		
	}

}
