package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.InsertClass;

public class RegistServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("username");
		String emAdres = request.getParameter("email");
		String pswd = request.getParameter("password");
		System.out.println(userName+" "+emAdres+" "+pswd);
		String sql="insert into users(username,email,password) values(\'"+userName+"\',\'"+emAdres+"\',\'"+pswd+"\')";
		System.out.println(sql);
		InsertClass insert=new InsertClass();
		boolean flag=insert.doInsert(sql);
		if(flag) {
			System.out.println("注册成功");
			response.sendRedirect("registSuccess.jsp");
		}else {
			System.out.println("注册失败");
			response.sendRedirect("registfail.jsp");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
