<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@page import="com.itwill.bookbread.dto.ReviewBoard"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.bookbread.service.ReviewBoardService"%>
<%@page import="com.itwill.bookbread.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
MemberService memberService = new MemberService();
Member member = memberService.findMember(sUserId);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원정보 수정</title>
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
function boardCreate() {
	if (f.title.value == "") {
		alert("제목을 입력하십시요.");
		f.title.focus();
		return false;
	}
	if (f.content.value == "") {
		alert("내용을 입력하십시요.");
		f.content.focus();
		return false;
	}
	f.action = "review_board_write_action.jsp";
	f.method="POST";
	f.submit();
}

function boardList() {
	f.action = "board_list.jsp";
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
	<br/><br/>
		<table>
			<form name="f" method="post">
				<table align=center width="30%" border="1" cellpadding="0" bordercolor="#fff">
					<tr width="40%" height=60 align=center bgcolor="#f4bf6f" class=t1>
						<td><font color="#fff" size=4px><b>리뷰게시판</b></font></td>
					</tr>
				</table>
				
				<table align=center width="30%" border="1" cellpadding="0"
					cellspacing="1" bgcolor="BBBBBB" bordercolor="#fff">
					<tr>
						<td width="40%" height=40 align=center bgcolor="#f4bf6f" class=t1>
							<font color="#fff"><b>번 호</b></font>
						</td>
						<td style="padding-left: 15px"><input type="text" name="no"
							value="1" readonly></td>

				</tr>
					
				<table align=center width="30%" border="1" cellpadding="0"
					cellspacing="1" bgcolor="BBBBBB" bordercolor="#fff">
					<tr>
						<td width="40%" height=40 align=center bgcolor="#f4bf6f" class=t1>
							<font color="#fff"><b>회원아이디</b></font>
						</td>
						<td style="padding-left: 15px"><input type="text" name="userId"
							value="<%=member.getUserId() %>" readonly></td>

					</tr>
					<tr>
						<td width=100 height=40 align=center bgcolor="#f4bf6f" class=t1>
							<font color="#fff"><b>제 목</b></font>
							<td width=490 bgcolor="ffffff" style="padding-left: 10px"
								align="left"><input type="text" style="width: 350px"
								name="title"></td>
					</tr>
					<tr>
						<td width=100 height=40 align=center bgcolor="#f4bf6f" class=t1>
						<font color="#fff"><b>내 용</b></font>
						</td>
						<td width=490 bgcolor="ffffff" style="padding-left: 10px"
							align="left"><textarea name="content" class="textarea"
							style="width: 350px" rows="14"></textarea></td>
					</tr>
				</table>
	</form>
	<br/><br/>
		<table width=590 border=0 cellpadding=0 cellspacing=0>
			<tr>
				<td align=center><input type="button" value="게시판 쓰기"
					onClick="boardCreate()"> &nbsp; <input type="button"
					value="게시판 목록" onClick="boardList()"></td>
			</tr>
		</table>
		</td>


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