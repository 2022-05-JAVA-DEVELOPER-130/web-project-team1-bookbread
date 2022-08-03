<%@page import="com.itwill.bookbread.dto.Member"%>
<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>

<%
if (request.getMethod().equalsIgnoreCase("GET")) {
	response.sendRedirect("member_login_form.jsp");
	return;
}
String userId = request.getParameter("userId");
String password = request.getParameter("password");
MemberService memberService = new MemberService();

int result = memberService.login(userId, password);
if(result==0){
	String msg1=userId+"는 존재하지 않는아이디입니다.";
 	request.setAttribute("msg1",msg1);
 	Member fMember=new Member(userId,password,"","","","","","");
 	request.setAttribute("fMember", fMember);
 	RequestDispatcher rd= request.getRequestDispatcher("member_login_form.jsp");
 	rd.forward(request,response);
 	
}else if(result==1){
	String msg2="패스워드가 일치하지 않습니다.";
	request.setAttribute("msg2", msg2);
	Member fMember=new Member(userId,password,"","","","","","");
	request.setAttribute("fMember", fMember);
	RequestDispatcher rd= request.getRequestDispatcher("member_login_form.jsp");
	
}else if(result==2){
	session.setAttribute("userId",userId);
	response.sendRedirect("shop_main.jsp");
}

%>