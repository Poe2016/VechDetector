package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.QueryClass;

public class StuLoginServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userName = request.getParameter("username");
		String emAdres = request.getParameter("email");
		String pswd = request.getParameter("password");
		String sql="select password from users where username=\'"+userName+"\'";
		QueryClass query = new QueryClass();
		boolean flag = query.doQuery(sql);
		String password=null;
		if(flag) {
			password=query.getByString("password");
			query.close();
		}else {
			System.out.println("查询账户失败");
			response.sendRedirect("login.jsp");
		}
		if(password==null || !password.equals(pswd)) {
			System.out.println("账号或密码错误，登录失败");
			response.sendRedirect("login.jsp");
		}else if(password.equals(pswd)) {
			System.out.println("账号密码验证成功，登录成功");
			session.setAttribute("username", userName);
			response.sendRedirect("../index.jsp");
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
