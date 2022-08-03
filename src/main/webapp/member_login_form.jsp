
<%@page import="com.itwill.bookbread.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
<<<<<<< HEAD
String msg1 = (String) request.getAttribute("msg1");
if (msg1 == null)
	msg1 = "";
String msg2 = (String) request.getAttribute("msg2");
if (msg2 == null)
	msg2 = "";
Member fMember = (Member) request.getAttribute("fMember");
if (fMember == null)
	fMember = new Member("", "", "", "", "", "", "", "");
=======
String msg1=(String)request.getAttribute("msg1");
if(msg1==null)msg1="";
String msg2=(String)request.getAttribute("msg2");
if(msg2==null)msg2="";
Member fMember=(Member)request.getAttribute("fMember");
if(fMember==null)fMember=new Member("","","","","","","","");
>>>>>>> branch 'master' of https://github.com/2022-05-JAVA-DEVELOPER/web-project-team1-bookbread.git
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<<<<<<< HEAD
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
=======

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function memberCreateForm() {
		location.href = "member_write_form.jsp";
	}
	function login() {
		if (document.f.userId.value == "") {
			alert("사용자 아이디를 입력하십시요.");
			document.f.userId.focus();
			return;
		}
		if (document.f.password.value == "") {
			alert("비밀번호를 입력하십시요.");
			f.password.focus();
			return;
		}
		document.f.action = "member_login_action.jsp";
		document.f.method='POST';
		document.f.submit();
	}
</script>
>>>>>>> branch 'master' of https://github.com/2022-05-JAVA-DEVELOPER/web-project-team1-bookbread.git
<title>로그인화면</title>
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
	function userCreate(){
		f.action = "user_write_form.jsp";
		f.submit();
	}
	function login(){
		if(f.userId.value == ""){
			alert("아이디를 입력해주세요.")
			f.userId.focus();
			return false;
		}
	}
</script>
</head>
<body>
<<<<<<< HEAD
	<!-- include_common_top_menu.jsp start-->
	<jsp:include page="include_common_top_menu.jsp" />
	<!-- include_common_top_menu.jsp end-->
	<!-- include_common_top.jsp start-->
	<jsp:include page="include_common_top.jsp"/>
	<!-- include_common_top.jsp end-->
=======
<form method ='post' >
	아이디<input type="text" name="userId" value=<%=fMember.getUserId()%>><br>
	패스워드<input type="text" name="password" value=<%=fMember.getPassword()%>><br>
>>>>>>> branch 'master' of https://github.com/2022-05-JAVA-DEVELOPER/web-project-team1-bookbread.git

<<<<<<< HEAD
	<form method='post'>
		아이디<input type="text" name="userId" value="<%=fMember.getUserId()%>"><br>
		패스워드<input type="text" name="password"
			value=<%=fMember.getPassword()%>><br> <input
			type="button" value="로그인"> <input type="button" value="회원가입">
	</form>
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
=======
	<input type="button" value="로그인"	onclick="login()" >
	<input type="button" value="회원가입" onclick="memberCreateForm()">
</form>


>>>>>>> branch 'master' of https://github.com/2022-05-JAVA-DEVELOPER/web-project-team1-bookbread.git
</body>
</html>