<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("member_modify_form.jsp");
		return;
	}
	MemberService memberService = new MemberService();
	Member member = memberService.findMember(sUserId);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
</head>
<body>
	<form method="post">
		<table>
			<tr>
				<td>사용자 아이디</td>
				<td ><%=sUserId %></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="password" value="<%=member.getPassword()%>"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value="<%=member.getName()%>"></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="text" name="birth" value="<%=member.getBirth()%>"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address" value="<%=member.getAddress()%>"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" value="<%=member.getEmail()%>"></td>
			</tr>
			<tr>
				<td>흥미</td>
				<td><input type="text" name="interest" value="<%=member.getInterest()%>"></td>
			</tr>
		</table>
	</form>
</body>
</html>
