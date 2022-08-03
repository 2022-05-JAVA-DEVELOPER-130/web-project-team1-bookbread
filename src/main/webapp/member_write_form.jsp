<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="member_write_action.jsp">
	<input type="text" name="userId" value="abc"><br>
	<input type="text" name="passowrd" value="abc"><br>
	<input type="text" name="name" value="엑스맨"><br>
	<input type="text" name="phone" value="010-1234-1234"><br>
	<input type="text" name="birth" value="2022-08-03"><br>
	<input type="text" name="address" value="경기도 시흥시"><br>
	<input type="text" name="email" value="xxx@mail.com"><br>
	<input type="text" name="interest" value="등산"><br>
	<input type="submit"><br>
</form>

</body>
</html>