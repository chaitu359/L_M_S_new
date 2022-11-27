<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="try05.Weeks" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body{
margin:0;
padding:0;
font-family:montserrat;
background:linear-gradient(120deg,#2980b9,#8e44ad);
height: 100vh;
overflow:hidden;
}
</style>
<body>
<% int Week= Integer.parseInt(request.getParameter("Weeks"));
	Weeks w=new Weeks();
	int x=w.Bill_Calclation(Week);%>
<p> Enjoy Reading!!</p>
<p> Amount to be paid: x</p>
</body>
</html>