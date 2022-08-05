<%@page import="com.itwill.bookbread.dto.ReviewBoard"%>
<%@page import="com.itwill.bookbread.dao.ReviewBoardDao"%>
<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.bookbread.service.ReviewBoardService"%>
<%@page import="com.itwill.bookbread.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
	ReviewBoardService reviewBoardService = new ReviewBoardService();
	ArrayList<ReviewBoard> reviewList = reviewBoardService.findReviewById(sUserId);
	
	MemberService memberService = new MemberService();
	Member member = memberService.findMember(sUserId);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 쓴 리뷰</title>
</head>
<body>
<h1> 리뷰 </h1>
	<div>
	
	회원 아이디	: <%=member.getUserId()%> &nbsp;
	
	책 이미지		:
	
	작성일		:
	
	내용			: <%=reviewBoardService.findReviewList() %>
	
	</div>
	

	
	
	
	<input type="button" value="선택삭제" onClick="reviewRemove();"/>&nbsp;
	<input type="button" value="전체삭제" onClick="reviewRemoveAll();"/>&nbsp;
	

</body>
</html>