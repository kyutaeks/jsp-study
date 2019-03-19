<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("난", "누구인가?");
request.setAttribute("이름", "홍길동");
session.setAttribute("backend", "뒤끝");
application.setAttribute("반가워", "잘가");
//response.sendRedirect("/jsp-study/req/req2.jsp");
RequestDispatcher rd = request.getRequestDispatcher("/req/req2.jsp");
rd.forward(request, response);
%>
