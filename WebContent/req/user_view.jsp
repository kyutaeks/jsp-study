<%@page import="java.sql.ResultSet"%>
<%@page import="test.jsp.study.db.DBCon"%>
<%@page import="java.sql.PreparedStatement"%>
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
		String uiNum = request.getParameter("ui_num");
		//out.write(uiNum);
		String sql = "select ui_num, ui_name, ui_id, ui_etc, ui_age from user_info";
		sql += " where ui_num=?";
		PreparedStatement ps = DBCon.getCon().prepareStatement(sql);
		ps.setString(1, uiNum);
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
	%>
	<form method="post" action="/jsp-study/req/user_update_ok.jsp" id="userForm">
	<table border ="5">
	<tr>
	<th>번호 :</th> <td><%=rs.getString("ui_num")%></td>
	</tr>
	<tr>
	<th>이름 :</th> <td><input type="text" name="ui_name" value="<%=rs.getString("ui_name")%>"></td> 
	</tr>
	<tr> 
	<th>아이디 :</th> <td><input type="text" name="ui_id" value="<%=rs.getString("ui_id")%>"></td>
	</tr>
	<tr> 
	<th>나이 :</th> <td><input type="number" name="ui_age" value="<%=rs.getString("ui_age")%>"></td>
	</tr>
	<tr>  
	<th>비고 :</th> <td><textarea name="ui_etc">
		<%=rs.getString("ui_etc")%>
		</textarea></td>
		</tr>
		<tr>
	<td colspan="2" align="center"><button>유저수정</button>
	<button type="button" onclick="deleteUser()">유저삭제</button>
	<input type="hidden" name="ui_num" value="<%=rs.getString("ui_num") %>"></td>
	</tr>
	</table>
	</form>
<script>
	function deleteUser(){
		document.getElementById("userForm").action="/jsp-study/req/user_delete_ok.jsp"
		document.getElementById("userForm").submit();
	}
</script>
	<a href ="/jsp-study/req/user_list.jsp"><button>←←←←←이전페이지</button></a>
	<%
		} else {
			out.write("데이터가 없다.");
		}
	%>
</body>
</html>