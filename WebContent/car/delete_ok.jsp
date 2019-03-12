<%@page import="java.sql.PreparedStatement"%>
<%@page import="test.jsp.study.db.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String carNum = request.getParameter("carNum");
String sql = "delete from car where car_num=?";

PreparedStatement ps = DBCon.getCon().prepareStatement(sql);
ps.setString(1, carNum);
int cnt = ps.executeUpdate();
String result = "삭제 실패";
if(cnt==1){
	result = "삭제 성공";
}
%>
<script>
alert("<%=result%>");
location.href="/jsp-study/car/list.jsp?carNum=<%=carNum%>";
</script>