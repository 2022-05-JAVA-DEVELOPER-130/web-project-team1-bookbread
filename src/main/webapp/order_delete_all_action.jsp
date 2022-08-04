<%@page import="com.itwill.bookbread.service.OrdersService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
if(request.getMethod().equals("GET")){
	response.sendRedirect("order_list.jsp");
	
}
OrdersService ordersService = new OrdersService();
ordersService.deleteAll(sUserId);
response.sendRedirect("order_list.jsp");

%>
