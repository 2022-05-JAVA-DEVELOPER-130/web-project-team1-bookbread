<%@page import="com.itwill.bookbread.user.exception.ExistedUserException"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
	if(request.getMethod().equals("GET")){
		response.sendRedirect("shop_main.jsp");
		return;
	}
	request.setCharacterEncoding("UTF-8");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String birth = request.getParameter("birth");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	String interst = request.getParameter("interest");
	Member newMember = null;
	try{
		newMember =new Member(sUserId,password,name,phone,birth,address,email,interst);
		MemberService memberService = new MemberService();
		int rowCount = memberService.create(newMember);
		response.sendRedirect("member_login_form.jsp");
	}catch(ExistedUserException e){
		response.sendRedirect("member_write_form.jsp?msg="+URLEncoder.encode(e.getMessage(), "UTF-8"));
	}
	catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("member_error.jsp");
	}

%>
