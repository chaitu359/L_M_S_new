<%@ page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Available Books</title>
</head>
<style>
.c-t {
	border-collapse: collapse;
	margin: 25px 0;
	font-size: 0.9em;
	min-width: 400px;
}

.c-t tr {
	background-colour: #009879;
	colour: #fff;
}
</style>
<body>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/try01", "root", "qwertyuiop");
	String sql = "select * from try01.user ";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	%>
	while (rs.next()){
	<tr>
		<%
		String uname = rs.getString(1);
		String Email = rs.getString(2);
		String Phone = rs.getString(3);
		String address = rs.getString(4);
		%>
		<td><%=uname%></td>
		<td><%=Email%></td>
		<td><%=Phone%></td>
		<td><%=address%></td>
	</tr>}
</body>
</html>