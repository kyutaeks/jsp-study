<%@page import="test.jsp.study.db.DBCon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String uiNum = request.getParameter("ui_num");
String sql = "delete from user_info where ui_num=?";
PreparedStatement ps = DBCon.getCon().prepareStatement(sql);
ps.setString(1,uiNum);
int cnt = ps.executeUpdate();
String re = "삭제 실패!";
if(cnt==1){
	re = "삭제 성공!";
}
%>
<script>
	alert("<%=re%>");
	location.href="/jsp-study/req/user_list.jsp";
</script>



