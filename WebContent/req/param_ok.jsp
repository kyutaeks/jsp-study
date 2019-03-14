<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Map<String,String[]> map = request.getParameterMap();
String [] ids = map.get("id");
String id = request.getParameter("id");
String [] names =map.get("name");
String name = request.getParameter("name");
String [] credats = map.get("credat");
String credat = request.getParameter("credat");
String [] trans1 =map.get("trans");
String trans = request.getParameter("trans");
String [] contents =map.get("content");
String content = request.getParameter("content");

if(ids!=null){
out.println("id : " + ids[0] + "<br>");

out.println("name : " + names[0] + "<br>");

out.println("credat : " + credats[0] + "<br>");

out.println("trans : " + trans1[0] + "<br>");

out.println("content : " + contents[0] + "<br>");

}
%>

<a href = "/jsp-study/req/param.jsp"><button>이전페이지 </button></a>


</body>
</html>