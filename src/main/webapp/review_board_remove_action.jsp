
<%@page import="com.itwill.bookbread.service.ReviewBoardService"%>
<%@include file="login_check.jspf"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(request.getMethod().equalsIgnoreCase("GET")){
	response.sendRedirect("review_board_write.jsp");
	return;
}

try {
	ReviewBoardService reviewBoardService = new ReviewBoardService();
	//Integer r_no = Integer.parseInt(request.getParameter("r_no"));
	reviewBoardService.removeByUserId(sUserId);
	response.sendRedirect("review_board_list.jsp");
	
} catch (Exception e) {
	e.printStackTrace();
	response.sendRedirect("member_error.jsp");
}



%>
