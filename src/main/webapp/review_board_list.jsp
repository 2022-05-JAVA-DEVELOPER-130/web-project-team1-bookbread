<%@page import="com.itwill.bookbread.dto.Product"%>
<%@page import="com.itwill.bookbread.service.ProductService"%>
<%@page import="com.itwill.bookbread.dto.ReviewBoard"%>
<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.bookbread.service.ReviewBoardService"%>
<%@page import="com.itwill.bookbread.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
	MemberService memberService = new MemberService();
	Member member = memberService.findMember(sUserId);

	String p_noStr = request.getParameter("p_no");
	/*
	if(p_noStr==null||p_noStr.equals("")){
		response.sendRedirect("shop_main.jsp");
		return;
	}
	*/
	ReviewBoardService reviewBoardService = new ReviewBoardService();
	ArrayList<ReviewBoard> reviewList = reviewBoardService.findReviewList();
	//ReviewBoard reviewBoard = reviewBoardService.countUpdate(p_no);
	
	ProductService productService = new ProductService();
	Product product = productService.selectByNO(Integer.parseInt(p_noStr));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 쓴 리뷰</title>
</head>
<body>
<h1> 리뷰 </h1>
	<table>
		<tr>
			<td>번호</td>
			<td><%=product.getP_no()%><br></td>
			
			<td>도서명</td>
			<%-- <td><%reviewBoard.getProduct().getP_name(); %><br></td> --%>					
			<td>
			저자			: 11<% %><br>
			
			회원 아이디	:<% if(member.getInterest().equalsIgnoreCase(sUserId)) %><br>
			
			제목			: 11<% session.getAttribute(sUserId); %><br>
			
			내용			: 내용<br>
	
	
	
			</td>
		</tr>
	</table>
	

	
	
	
	<input type="button" value="선택삭제" onClick="reviewRemove();"/>&nbsp;
	<input type="button" value="전체삭제" onClick="reviewRemoveAll();"/>&nbsp;
	

</body>
</html>