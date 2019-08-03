package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.Update;

public class ModifyInfo extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
		String name=request.getParameter("username");
		String phone=request.getParameter("phone");
		String password=request.getParameter("password");
		String sex=request.getParameter("sex");
		System.out.println(phone);
		String sql="";
		Update up=new Update();
		if(name!=null&&!name.equals(username)) {
			sql="update users set username=\'" + name + "\'";
			up.doUpdate(sql);
			session.setAttribute(username, name);
		}
		if(phone!=null) {
			sql="update users set phonenumber=\'" + phone + "\'";
			up.doUpdate(sql);
		}
		if(password!=null) {
			sql="update users set password=\'" + password + "\'";
			up.doUpdate(sql);	
		}
		if(sex!=null) {
			sql="update users set sex=\'" + sex + "\'";
			up.doUpdate(sql);
		}
		response.getWriter().print("1");
	}

}
