<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
	MemberService memberService = new MemberService();
	Member member = memberService.findMember(sUserId);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post">
	<table>
		<tr>
			<td>사용자 아이디</td>
			<td><%=sUserId %></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=member.getName() %></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><%=member.getPhone() %></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><%=member.getBirth() %></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><%=member.getAddress() %></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><%=member.getEmail() %></td>
		</tr>
		<tr>
			<td>취미</td>
			<td><%=member.getInterest() %></td>
		</tr>
	</table>
</form>
<table>
	<tr>
		<td>
			<input type="button" value="수정" onClick="memberModify()">&nbsp;
			<input type="button" value="탈퇴" onClick="memberRemove()">&nbsp;
		</td>
	</tr>
</table>

</body>
</html>