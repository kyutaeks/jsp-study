<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>랜덤</title>
</head>
<body>
<%
int b = (int) (Math.random() * 100) + 1;
%>
	<%
		out.write("<table border=\"5\">");
		for (int i = 0; i < 5; i++) {
			
			int a = (int) (Math.random() * 100) + 1;
			
			out.write("<tr>");
			out.write("<td>" + "첫번째" + "</td>");
			out.write("<td>" + "두번째" + "</td>");
			out.write("<td>" + "세번째" + "</td>");
			out.write("<td>" + "네번째" + "</td>");
			out.write("<td>" + "다섯번째" + "</td>");
			out.write("<td>" + "여섯번째" + "</td>");
			out.write("<tr>");
			out.write("<td>" + a + "</td>");
			out.write("<td>" + b + "</td>");
			out.write("<td>" + b + "</td>");
			out.write("<td>" + b + "</td>");
			out.write("<td>" + b + "</td>");
			out.write("<td>" + b + "</td>");
			out.write("<tr>");
		}
		out.write("</table>");
	%>


</body>
</html>