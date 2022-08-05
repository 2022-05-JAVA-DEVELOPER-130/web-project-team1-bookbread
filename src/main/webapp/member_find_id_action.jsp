<%@page import="com.itwill.bookbread.user.exception.PasswordMismatchException"%>
<%@page import="com.itwill.bookbread.user.exception.UserNotFoundException"%>
<%@page import="com.itwill.bookbread.dto.Member"%>
<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>

<%

 
 if(mid != null){
	 response.sendRedirect("member_find_id_confirm_form.jsp");
 }

%>			
