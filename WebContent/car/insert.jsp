<%@page import="java.sql.ResultSet"%>
<%@page import="test.jsp.study.db.DBCon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 request.setCharacterEncoding("utf-8");
 String carName = request.getParameter("carName");
 String carYear = request.getParameter("carYear");
 String carVendor = request.getParameter("carVendor");
 String carEtc = request.getParameter("carEtc");
 if(carName==null){
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 등록</title>
</head>
<body>
<form method = "post">
	차량이름 : <input type ="text" name = "carName"><br>
	차량연식 : <input type ="number" name = "carYear"><br>
	제조회사 : <input type ="text" name = "carVendor"><br>
	기타 : <input type ="text" name = "carEtc"><br>
	<button>차량등록</button>
</form>
</body>
</html>
<%
}else{
	String sql = "insert into car(ci_num, ci_name, carYear, ci_vendor, ci_etc) values((select nvl(max(car_num),0)+1 from car),?,?,?,?)";
	System.out.println(sql);
		PreparedStatement ps = DBCon.getCon().prepareStatement(sql);
		ps.setString(1, carName);
		ps.setString(2, carYear);
		ps.setString(3, carVendor);
		ps.setString(4, carEtc);
	int cnt = ps.executeUpdate();
		if(cnt==1){
		out.println("메뉴등록성공!");
	}else {
		out.println("메뉴등록실패!");
	}
	out.println("<a href=\"/jsp-study/car/list.jsp\">차량리스트</a>");
	
}
%>