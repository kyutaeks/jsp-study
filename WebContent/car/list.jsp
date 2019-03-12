<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="test.jsp.study.db.DBCon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차량 종류</title>
</head>
<body>
<%
String carName = request.getParameter("car_name");
String carYear = request.getParameter("car_year");
String carVendor = request.getParameter("car_vendor");
String carEtc = request.getParameter("car_etc");
if(carName != null){
%>
<%=carName%><br> 차량이름 :
<%=carYear%><br> 차량연식 :
<%=carVendor%><br> 제조회사 :
<%=carEtc%><br> 기타 :
<%
}
%>
<form>
<input type="text" name ="car_name"> <br>
<input type="text" name ="car_year"> <br>
<input type="text" name ="car_vendor"> <br>
<input type="text" name ="car_etc"> <br>
<button>검색</button>
</form>
<%
		String sql = "select ci_num, ci_name, ci_year, ci_vendor, ci_etc from car";
		sql += " where 1=1";
		if (carName != null && !"".equals(carName)) {
			sql += " and car_name like '%' || ? || '%' ";
		}
		if (carYear != null && !"".equals(carYear)) {
			sql += " and car_year=?";
		}
		if (carVendor != null && !"".equals(carVendor)) {
			sql += " and ci_vendor=?";
		}
		if (carEtc != null && !"".equals(carEtc)) {
			sql += " and ci_etc=?";
		}
		sql += "order by car_num";
		try {
			PreparedStatement ps = DBCon.getCon().prepareStatement(sql);
			int cnt = 1;
			if(carName != null && !"".equals(carName)){
				ps.setString(cnt++, carName);
			}
			if(carYear != null && !"".equals(carYear)){
				ps.setString(cnt++, carYear);
			}
			if(carVendor != null && !"".equals(carVendor)){
				ps.setString(cnt++, carVendor);
			}
			if(carEtc != null && !"".equals(carEtc)){
				ps.setString(cnt++, carEtc);
			}
			Result rs = ps.executeQuery();
			out.write("<table border=\"1\">");
			while (rs.next()) {
				out.write("<tr>");
				out.write("<td>" + ("car_num") + "</td>");
				out.write("<td>");
				out.write("<a href =\"/jsp-study/car/view.jsp?carNum="+rs.getInt("car_num")+"\">");
				out.write(rs.getString("car_name") + "</a></td>");
				out.write("<td>" + rs.getInt("car_year") + "</td>");
				out.write("<td>" + ("ci_vendor") + "</td>");
				out.write("<td>" + ("ci_etc") + "</td>");
				out.write("<td><button onclick=\"carDelete(" + rs.getInt("car_num") + ")\">삭제</button></td>");
				out.write("</tr>");
			}
			out.write("</table>");
		} catch (Exception e) {
			out.println(e);
		} finally {
			DBCon.close();
		}
%>
<a href ="/jsp-study/car/insert.jsp"><button>차량등록</button> </a>
<script>
	function carDelete(carNum){
		var isDelete = confirm("삭제하시겠습니까?");
		if(isDelete){
			location.href = "/jsp-study/car/delete_ok.jsp?carNum=" + carNum;
		}
	}
</script>
</body>
</html>