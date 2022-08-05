<%@page import="com.itwill.bookbread.dto.Member"%>
<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
if(request.getMethod().equalsIgnoreCase("GET")){
	response.sendRedirect("order_create_form.jsp");
	return;
}
	String address = request.getParameter("address");
	
	MemberService memberService = new MemberService();
	
	Member addressModify = new Member(sUserId,"","","","",address,"","");

	memberService.update(addressModify);
	response.sendRedirect("order_create_form.jsp");


%>