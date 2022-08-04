<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@page import="com.itwill.bookbread.dto.ReviewBoard"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.bookbread.service.ReviewBoardService"%>
<%@page import="com.itwill.bookbread.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
	ReviewBoardService reviewBoardService = new ReviewBoardService();
	ArrayList<ReviewBoard> reviewList = reviewBoardService.findReviewList();
	
	MemberService memberService = new MemberService();
	Member member = memberService.findMember(sUserId);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 한줄평 </h1>

</body>
</html>