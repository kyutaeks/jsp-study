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
out.write(ids[0]);
out.print(id);
out.write(names[0]);
out.write(name);
out.write(credats[0]);
out.write(credat);
out.write(trans1[0]);
out.write(trans);
out.write(contents[0]);
out.write(content);
}
%>

	<form method="get" action = "/jsp-study/req/param_ok.jsp">	
		<input type="text" name="id" value = "lgt8879"><br>
		<input type="text" name="name" value = "이규택"><br>
		<input type="date" name="credat" value	= "2019-04-13"><br>
		<select name ="trans">
		<option value="남자입니다.">남자</option>
		<option value="여자입니다.">여자</option>
		</select><br>
		<textarea name="content" cols ="5"rows="5"></textarea><br>
		<button>전송</button>
	</form>
</body>
</html>