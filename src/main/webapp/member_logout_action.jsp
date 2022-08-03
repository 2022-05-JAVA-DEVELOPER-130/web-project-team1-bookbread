<%@page import="java.net.URLEncoder"%>
<%@page import="com.itwill.bookbread.user.exception.UserNotFoundException"%>
<%@page import="com.itwill.bookbread.dto.Member"%>
<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@page import="java.nio.file.attribute.UserPrincipalLookupService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	if(request.getMethod().equalsIgnoreCase("get")){
		response.sendRedirect("member_login_form.jsp");
		return;
	}

	String userId = null;
	String password = null;
	
	try{
	userId = request.getParameter("userId");
	password = request.getParameter("password");
	
	MemberService memberService = new MemberService();
	Member loginUser = memberService.login(userId, password);
	
	session.setAttribute("sUserId", userId);
	session.setAttribute("sUser", loginUser);
	response.sendRedirect("shop_main.jsp");
	}catch(UserNotFoundException e){
		response.sendRedirect("member_login_form.jsp?msg1="+URLEncoder.encode(e.getMessage(), "UTF-8"));
	}
%>
