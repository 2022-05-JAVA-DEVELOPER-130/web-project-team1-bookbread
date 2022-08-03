<%@page import="com.itwill.bookbread.dto.Cart"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.bookbread.service.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- <@include file="login_check.jspf"> -->

<%
String sUserId = "soyoon";
CartService cartService = new CartService();
List<Cart> cartList = cartService.cartItemList(sUserId);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=cartList %>
</body>
</html>
