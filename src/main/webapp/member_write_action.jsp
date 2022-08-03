<%@page import="com.itwill.bookbread.dto.Member"%>
<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"%>

<%
	String userId = (String) request.getParameter("userId");
	String password = (String) request.getParameter("password");
	String name = (String) request.getParameter("name");
	String phone = (String) request.getParameter("phone");
	String birth = (String) request.getParameter("birth");
	String address = (String) request.getParameter("address");
	String email = (String) request.getParameter("email");
	String interest = (String) request.getParameter("interest");
	
	MemberService memberService = new MemberService();
	int rowCount = memberService.create(new Member(userId,password,name,phone,birth,address,email,interest));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	memberService.create()--><%=rowCount %>
</body>
</html>
