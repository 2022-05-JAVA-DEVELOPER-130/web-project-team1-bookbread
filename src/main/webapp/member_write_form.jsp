<%@page import="com.itwill.bookbread.dto.Member"%>
<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member fmember = (Member)request.getAttribute("fmember");
	if(fmember==null){
		fmember = new Member("","","","","","","","");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<form method="post" action="member_write_action.jsp">
	<table>
	<tr>
		<td>사용자 아이디</td>
		<td>
		<input type="text" name="userId" value="<%= fmember.getUserId() %>"><br>
		</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td>
			<input type="password" name="passowrd" value="<%= fmember.getPassword() %>"><br>
		</td>
	</tr>
	<tr>
		<td>비밀번호확인</td>
		<td>
			<input type="password" name="password2" value="<%= fmember.getPassword() %>"><br>
		</td>
	</tr>
	<tr>
		<td>이름</td>
		<td>
			<input type="text" name="name" value="<%= fmember.getName() %>"><br>
		</td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td>
			<input type="text" name="phone" value="<%= fmember.getPhone() %>"><br>
		</td>
	</tr>
	<tr>
		<td>생년월일</td>
		<td>
			<input type="text" name="birth" value="<%= fmember.getBirth() %>"><br>
		</td>
	</tr>
	<tr>
		<td>주소</td>
		<td>
			<input type="text" name="address" value="<%= fmember.getAddress() %>"><br>
		</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td>
			<input type="text" name="email" value="<%= fmember.getEmail() %>"><br>
		</td>
	</tr>
	<tr>
		<td>취미</td>
		<td>
			<input type="text" name="interest" value="<%= fmember.getInterest() %>"><br>
		</td>
	</tr>
	</table>
</form>
<table>
	<tr>
		<td>
			<input type="button" value="회원가입" onclick="memberCreate();">&nbsp;<br>
			<input type="button" value="목록" onclick="memberList();">&nbsp;<br>
		</td>
	</tr>
</table>
</body>
</html>