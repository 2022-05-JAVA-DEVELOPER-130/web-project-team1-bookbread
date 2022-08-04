<%@page import="com.itwill.bookbread.user.exception.ExistedUserException"%>
<%@page import="com.itwill.bookbread.dto.Member"%>
<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"%>

<%	
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("member_write_form.jsp");
		return;
	}
	
	String userId = (String) request.getParameter("userId");
	String password = (String) request.getParameter("password");
	String name = (String) request.getParameter("name");
	String phone = (String) request.getParameter("phone");
	String birth = (String) request.getParameter("birth");
	String address = (String) request.getParameter("address");
	String email = (String) request.getParameter("email");
	String interest = (String) request.getParameter("interest");
	Member newMember = null;	
	
	try{
		newMember = new Member(userId,password,name,phone,birth,address,email,interest);
		MemberService memberService = new MemberService();
		int rowCount = memberService.create(newMember);
		response.sendRedirect("member_login_form.jsp");
	}catch(ExistedUserException e){
		response.sendRedirect("member_write_form.jsp?msg="+URLEncoder.encode(e.getMessage(),"UTF-8"));
		
	}catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("member_error.jsp");
	}
%>
