<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
	if(request.getMethod().equals("GET")){
		response.sendRedirect("member_modify_form.jsp");
		return;
	}
	try{
		request.setCharacterEncoding("UTF-8");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String birth = request.getParameter("birth");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String interst = request.getParameter("interest");
		Member member = new Member(sUserId,password,name,phone,birth,address,email,interst);
		MemberService memberService = new MemberService();
		
		int updateRowCount = memberService.update(member);
	}catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("member_error.jsp");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
