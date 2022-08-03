<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 (중복확인)</title>
</head>
<body>
<form method="post" action="member_write_action.jsp">
	<table>
	<tr>
		<td>사용자 아이디</td>
		<td>
		<input onclick="idCheck();" type="text" name="userId" value="">&nbsp;
		<input type="button" value="아이디 중복 검사" onclick="idCheck();">
		</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td>
			<input type="password" name="passowrd" value=""><br>
		</td>
	</tr>
	<tr>
		<td>비밀번호확인</td>
		<td>
			<input type="password" name="password2" value=""><br>
		</td>
	</tr>
	<tr>
		<td>이름</td>
		<td>
			<input type="text" name="name" value=""><br>
		</td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td>
			<input type="text" name="phone" value=""><br>
		</td>
	</tr>
	<tr>
		<td>생년월일</td>
		<td>
			<input type="text" name="birth" value=""><br>
		</td>
	</tr>
	<tr>
		<td>주소</td>
		<td>
			<input type="text" name="address" value=""><br>
		</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td>
			<input type="text" name="email" value=""><br>
		</td>
	</tr>
	<tr>
		<td>취미</td>
		<td>
			<input type="text" name="interest" value=""><br>
		</td>
	</tr>
	</table>
</form>
<table>
	<tr>
		<td>
			<input type="button" value="회원가입" onclick="memberCreate();">&nbsp;
			<input type="button" value="목록" onclick="memberList();">
		</td>
	</tr>
</table>
</body>
</html>
