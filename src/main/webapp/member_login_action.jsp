<%@page import="com.itwill.bookbread.user.exception.UserNotFoundException"%>
<%@page import="com.itwill.bookbread.dto.Member"%>
<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>

<%
	if (request.getMethod().equalsIgnoreCase("GET")) {
		response.sendRedirect("member_login_form.jsp");
		return;
	}
	String userId = request.getParameter("userId");
	String password =request.getParameter("password");
	MemberService memberService= new MemberService();
	Member rowCount = memberService.login(userId, password);
		 
	
%>			
			
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>
