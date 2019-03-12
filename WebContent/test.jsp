<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트입니다.</title>
</head>
<body>
<%
for(int i = 0; i < 10 ;i++){
out.write("<table border=\"5\">");
out.write("<tr>");
out.write("<td>" + "이름" + "</td>");
out.write("<td>" + "나이" + "</td>");
out.write("<td>" + "주소" + "</td>");
out.write("<td>" + "성별" + "</td>");
out.write("<tr>");
out.write("<td>" + "이름" + "</td>");
out.write("<td>" + "이름" + "</td>");
out.write("<td>" + "이름" + "</td>");

out.write("</table>");
}
%>

</body>
</html>