<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<form action="/jsp-study/user/join_ok.jsp" method="post">
	이름 : <input type="text" name="name"><br>
	생년월일 : <input type="date" name="birth"><br>
	아이디 : <input type="text" name="id"><br>
	비밀번호 : <input type="password" name="pwd"><br>
	당신의 성별 : 남<input type="radio" name="trans" value="1">
	,여<input type="radio" name="trans" value="2">
	<br>
	당신의 취미 : 잠자기 <input type="checkbox" name="hobby" value="sleep">,
	게임<input type="checkbox" name="hobby" value="game">,
	먹기<input type="checkbox" name="hobby" value="eat">,
	여행<input type="checkbox" name="hobby" value="travle">
	<button type="submit">회원 가입1</button>
</form>
</body>
</html>