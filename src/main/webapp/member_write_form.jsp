<%@page import="com.itwill.bookbread.dto.Member"%>
<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Member fmember = (Member)request.getAttribute("fmember");
	if (fmember == null) {
		fmember = new Member("", "", "", "", "", "", "", "");
	}
	String msg = (String)request.getAttribute("msg");
	if(msg==null)msg="";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>
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

<script type="text/javascript">
	
	function memberCreate() {
		if (document.f.userId.value == "") {
			alert("사용자 아이디를 입력하세요");
			f.userId.focus();
			return false;
		}
		if (f.password.value == "") {
			alert("비밀번호를 입력하세요");
			f.password.focus();
			return false;
		}
		if (f.password2.value == "") {
			alert("비밀번호확인을 입력하세요");
			f.password2.focus();
			return false;
		}
		if (f.name.value == "") {
			alert("사용자 이름을 입력하세요");
			f.name.focus();
			return false;
		}
		if (f.phone.value == "") {
			alert("전화번호를 입력하세요");
			f.phone.focus();
			return false;
		}
		if (f.birth.value == "") {
			alert("생년월일을 입력하세요");
			f.birth.focus();
			return false;
		}
		if (f.address.value == "") {
			alert("주소를 입력하세요");
			f.address.focus();
			return false;
		}
		if (f.email.value == "") {
			alert("이메일을 입력하세요");
			f.email.focus();
			return false;
		}
		if (f.interest.value == "") {
			alert("취미를 입력하세요");
			f.interest.focus();
			return false;
		}
		f.action = "member_wrtie_action.jsp";
		f.submit();
	}
	function shopMain() {
		f.action="shop_main.jsp";
		f.submit();
	}
	
</script>

</head>
<body>
	<!-- include_common_top_menu.jsp start-->
	<jsp:include page="include_common_top_menu.jsp" />
	<!-- include_common_top_menu.jsp end-->
	<!-- include_common_top.jsp start-->
	<jsp:include page="include_common_top.jsp" />
	<!-- include_common_top.jsp end-->

	<form name="f" method="post">
		<table>
			<tr>
				<td>사용자 아이디</td>
				<td><input type="text" name="userId" value="<%=fmember.getUserId()%>"><br><font color="red"><%=msg %></font>
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="passowrd" value="<%=fmember.getPassword()%>"><br>
				</td>
			</tr>
			<tr>
				<td>비밀번호확인</td>
				<td><input type="password" name="password2" value="<%=fmember.getPassword()%>"><br>
				</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value="<%=fmember.getName()%>"><br>
				</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone" value="<%=fmember.getPhone()%>"><br>
				</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="text" name="birth" value="<%=fmember.getBirth()%>"><br>
				</td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address" value="<%=fmember.getAddress()%>"><br>
				</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" value="<%=fmember.getEmail()%>"><br>
				</td>
			</tr>
			<tr>
				<td>취미</td>
				<td><input type="text" name="interest" value="<%=fmember.getInterest()%>"><br>
				</td>
			</tr>
		</table>
	</form>
	<table>
		<tr>
			<td><input type="button" value="회원가입" onClick="memberCreate();">&nbsp;
				<input type="button" value="목록" onClick="shopMain();">
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