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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Delicious Book MyPage</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!-- Google Font -->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Raleway:400,300,500,700,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css"
	type="text/css">
<!-- Theme Stylesheet -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
</head>
<body>
	<!-- include_common_top_menu.jsp start-->
	<jsp:include page="include_common_top_menu.jsp"/>
	<!-- include_common_top_menu.jsp end-->
	<!-- include_common_top.jsp start-->
	<jsp:include page="include_common_top.jsp"/>
	<!-- include_common_top.jsp end-->
	
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
			<td>관심 도서분야</td>
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


<!-- jQuery Library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<!-- Latest compiled and minified JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<!-- Script -->
	<script src="js/script.js"></script>
	<h1>&nbsp;</h1>
	<div id="footer">
		<!-- include_common_bottom.jsp start-->
		<jsp:include page="include_common_bottom.jsp" />
		<!-- include_common_bottom.jsp end-->
	</div>
</body>
</html>