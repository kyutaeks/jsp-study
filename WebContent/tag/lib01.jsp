<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
<!--	<c:set var="name" value="홍길동" />
	<c:choose>
		<c:when test="${name=='홍길동' }">
	아 이름이 홍길동이네~~
	</c:when>
		<c:when test="${name=='임꺽정' }">
	아 이름이 임꺽정이네~~
	</c:when>
		<c:otherwise>
	내가 모르는 놈이네~
	</c:otherwise>
	</c:choose>
	<c:forEach var="i" begin="1" end="10" step="1">
	${i},
	</c:forEach>
<br>-->

${fn:length(userList)}
<c:forEach var="user" items="${userList}">
${user}
</c:forEach> 
</body>
</html>