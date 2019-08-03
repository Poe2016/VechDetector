package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.InsertClass;

public class TeaLoginServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("username");
		String emAdres = request.getParameter("email");
		String pswd = request.getParameter("password");
		String sql="insert into users(username,email,password) values(\'"+userName+"\',\'"+emAdres+"\',\'"+pswd+"\')";
		System.out.println("管理员登录成功");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
