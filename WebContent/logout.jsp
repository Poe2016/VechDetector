<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
String username=(String)session.getAttribute("username");
if(username==null || username.equals("")){
	response.sendRedirect("./login-regist/login.jsp");
}else{
	session.removeAttribute("username");
	response.sendRedirect("index.jsp");
}
%>
