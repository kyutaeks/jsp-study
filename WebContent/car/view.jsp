<%@page import="test.jsp.study.db.DBCon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String carNum = request.getParameter("carNum");
    String sql = "select car_num, car_name, ci_year, ci_vendor from car where car_num=?";
    PreparedStatement ps = DBCon.getCon().prepareStatement(sql);
    ps.setString(1, carNum);
    ResultSet rs = ps.executeQuery();
    if(rs.next()){
    %>
    <form method="post" action="/jsp-study/req/user_update_ok.jsp" id="userForm">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
차량 번호 : <%=carNum%>
<form method ="post" action ="/jsp-study/car/update_ok.jsp">
	번호 : <input type = "number" name = "carNum" value = "<%=carNum%>" readonly = "readonly"><br>
	차량이름 : <input type = "text" name = "carName" value = "<%=rs.getString("car_name")%>"><br>
	차량연식  : <input type = "number" name = "carYear" value = "<%=rs.getString("car_year")%>"><br>
	제조회사  : <input type = "text" name = "carVendor" value = "<%=rs.getString("car_vendor")%>"><br>
	기타  : <input type = "text" name = "carEtc" value = "<%=rs.getString("car_etc")%>"><br>
	<button>수정</button>
	<button type="button" onclick="deleteUser()">유저삭제</button>
</form>
<a href ="/jsp-study/car/list.jsp">차량리스트</a>
 
</body>
</html>
<%
}else{
	out.write("<b>조회하신 " + carNum + " 번호는 존재하지 않습니다.</b>");
	out.write("<a href =\"/jsp-study/car/list.jsp\">차량리스트</a>");
}
%>