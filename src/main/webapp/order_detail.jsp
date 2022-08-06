
<%@page import="com.itwill.bookbread.dto.OrderItem"%>
<%@page import="java.text.DecimalFormat"%>
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
Orders order = ordersService.detail(sUserId, Integer.parseInt(o_noStr));

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Delicious Book Order List</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!-- Google Font -->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Raleway:400,300,500,700,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css"
	type="text/css">
<!-- Theme Stylesheet -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
</head>
<body>
	<!-- include_common_top_menu.jsp start-->
	<jsp:include page="include_common_top_menu.jsp"/>
	<!-- include_common_top_menu.jsp end-->
	<!-- include_common_top.jsp start-->
	<jsp:include page="include_common_top.jsp"/>
	<!-- include_common_top.jsp end-->
		<div id="content" align="center">
				<table border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td><br />
						
						<td align="center" class=t1><font size=4 color=#000000><b>주문상세</b></font></td>
							</table>
							
							</table> <!--form-->
							<br>
							<form name="f" method="post" action="order_delete_action.jsp">
							<input type="hidden" value="<%=order.getO_no()%>"></input>
								<table align=center width=80%  border="0" cellpadding="0"
									cellspacing="1" bgcolor="BBBBBB">
									<tr>
										<td width=170 height=35 bgcolor=#ffe18f align=center class=t1><font color=#8d8d8d>주문번호</font></td>
										<td width=230 height=35 bgcolor=#ffe18f align=center class=t1><font color=#8d8d8d>주문날짜</font></td>
										<td width=200 height=35 bgcolor=#ffe18f align=center class=t1><font color=#8d8d8d>주문자</font></td>
										<td width=200 height=35 bgcolor=#ffe18f align=center class=t1><font color=#8d8d8d>주문가격</font></td>
									
										<td width=200 height=30 bgcolor=#ffe18f align=center class=t1><font></font></td>
									</tr>
									
									<tr>
										<td width=145 height=40 align=center bgcolor="ffffff" class=t1><%=order.getO_no()%></td>
										<td width=145 height=40 align=center bgcolor="ffffff" class=t1><%=order.getO_date()%></td>
										<td width=112 height=40 align=center bgcolor="ffffff" class=t1><%=order.getUserId()%></td>
										<td width=112 height=40 align=center bgcolor="ffffff" class=t1><%=new DecimalFormat("#,###").format(order.getO_price())%></td>
										<td width=136 height=40 align=center bgcolor="ffffff" class=t1>
												<input type="submit" value="삭제">
										</td>
									</tr>
									
								</table>
<br>
<br>
<br>

	<table align=center width=80%  border="0" cellpadding="0"
									cellspacing="1" bgcolor="BBBBBB">
									<tr>
										<td width=250 height=35 bgcolor=#ffe18f align=center class=t1><font color=#8d8d8d>책 제목</font></td>
										<td width=250 height=35 bgcolor=#ffe18f align=center class=t1><font color=#8d8d8d>수량</font></td>
										<td width=250 height=35 bgcolor=#ffe18f align=center class=t1><font color=#8d8d8d>가격</font></td>
										<td width=250 height=35 bgcolor=#ffe18f align=center class=t1><font color=#8d8d8d>비고</font></td>
									
									</tr>
									<%
									int tot_price=0;
									for(OrderItem orderItem : order.getOrderItemList()){
										tot_price+=orderItem.getOi_qty()*orderItem.getProduct().getP_price();
									
									%>
									<tr>
									<td width=145 height=40 align=center bgcolor="ffffff" class=t1><%=orderItem.getProduct().getP_name()%></td>
										<td width=145 height=40 align=center bgcolor="ffffff" class=t1><%=orderItem.getOi_qty()%></td>
										<td width=112 height=40 align=center bgcolor="ffffff" class=t1><%=new DecimalFormat("#,###").format(orderItem.getProduct().getP_price())%></td>
										<td width=136 height=40 align=center bgcolor="ffffff" class=t1></td>

									</tr>
<%} %>
</table>











</div>
			<!-- include_content.jsp end-->
			<!-- content end -->
		</div>
		<!--wrapper end-->
		<div id="footer">
			<!-- include_common_bottom.jsp start-->
			<jsp:include page="include_common_bottom.jsp"/>
			<!-- include_common_bottom.jsp end-->
		</div>
	</div>
	<!--container end-->

</body>
</html>
