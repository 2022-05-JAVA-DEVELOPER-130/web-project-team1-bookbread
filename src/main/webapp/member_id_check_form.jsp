<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	boolean isDuplicate=false;
	String msg = "";
	String userId = request.getParameter("userId");
	if(userId==null||userId.equals("")){
		userId="";
		msg="";
		isDuplicate=true;
	}else{
		MemberService memberService = new MemberService();
		isDuplicate = memberService.existedUser(userId);
		if(isDuplicate){
			msg="사용 불가능한 아이디입니다";
		}else {
			msg="사용 가능한 아이디입니다";
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>

<script type="text/javascript">
	function idChecnk() {
		var userId = document.getElementBuId("userId").value;
		if(userId==null||userId==""){
			alert('사용하실 아이디를 입력하세요');
			return;
		}
		document.getElementBuId('checkForm').action="member_id_check_form.jsp";
		document.getElementBuId('checkForm').method="POST";
		document.getElementBuId('checkForm').submit();
	}
	
	function sendCheckvalue() {
		opener.document.f.userId.value = window.document.getElementBuId('userId').value;
		window.close();
	}
</script>

</head>
<body>

	<div id="chk">
		<form>
			<input type="text" name="uesrId" id="userId" value="<%=userId%>">
			<input type="button" value="ID중복확인" onClick="idCheck()">
		</form>
		<div id="msg"><%=msg %></div>
		<input id="cancel" type="button" value="취소" onClick="window.close();">
		<%if(!isDuplicate){ %>
		<input id="useButton" type="button" value="사용하기" onClick="sendCheckValue();">
		<%} %>
	</div>

</body>
</html>