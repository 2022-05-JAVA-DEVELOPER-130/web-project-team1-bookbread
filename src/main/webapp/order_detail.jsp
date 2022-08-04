
<%@page import="java.util.List"%>
<%@page import="com.itwill.bookbread.dto.Orders"%>
<%@page import="com.itwill.bookbread.service.OrdersService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
String o_noStr=request.getParameter("o_no");
if(o_noStr==null|| o_noStr.equals("")){
	response.sendRedirect("order_list.jsp");
	return;
}
OrdersService ordersService= new OrdersService();
List<Orders> orders = ordersService.ordersList(sUserId);

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

</html>
