<%@page import="com.itwill.bookbread.service.CartService"%>
<%@page import="com.itwill.bookbread.service.ProductService"%>
<%@page import="com.itwill.bookbread.service.OrdersService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>

<%
if(request.getMethod().equalsIgnoreCase("GET")){
	response.sendRedirect("order_list.jsp");
	return;
}

String buyType = request.getParameter("buyType");
String p_noStr = request.getParameter("p_no");
String p_qtyStr = request.getParameter("p_qty");
String[] cart_no_array = request.getParameterValues("cart_item_no");

OrdersService orderService = new OrdersService();
CartService cartService = new CartService();

if(buyType.equals("cart")){
	orderService.createAll(sUserId);
}else if(buyType.equals("cart_select")){
	orderService.selectCreate(sUserId, cart_no_array);
}else if(buyType.equals("direct")){
	orderService.create(sUserId, Integer.parseInt(p_qtyStr), Integer.parseInt(p_noStr));
}
response.sendRedirect("order_list.jsp");




%>