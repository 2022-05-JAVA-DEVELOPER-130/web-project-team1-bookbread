<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@page import="java.nio.file.attribute.UserPrincipalLookupService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
if(request.getMethod().equalsIgnoreCase("GET")){
	response.sendRedirect("shop_main.jsp");
	return;
}
try{
	MemberService memberService = new MemberService();
	int removeRowCount = memberService.remove(sUserId);
	response.sendRedirect("member_logout_action.jsp");
}catch(Exception e){
	e.printStackTrace();
	response.sendRedirect("member_error.jsp");
}


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
