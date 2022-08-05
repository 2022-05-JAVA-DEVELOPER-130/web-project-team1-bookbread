<%@page import="com.itwill.bookbread.dto.Product"%>
<%@page import="com.itwill.bookbread.dto.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.bookbread.service.CartService"%>
<%@page import="com.itwill.bookbread.service.ProductService"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.bookbread.dto.Orders"%>
<%@page import="com.itwill.bookbread.service.OrdersService"%>
<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%
if(request.getMethod().equalsIgnoreCase("GET")){
	response.sendRedirect("order_list.jsp");
	return;
}
String buyType = request.getParameter("buyType");
String p_no = request.getParameter("p_no");
String p_qty = request.getParameter("p_qty");
String[] cart_no_array = request.getParameterValues("cart_no");

if(buyType==null)buyType="";
if(p_no==null)p_no="";
if(p_qty==null)p_qty="";
if(cart_no_array==null)cart_no_array=new String[]{};


MemberService memberService = new MemberService();
Member member =memberService.findMember(sUserId);

OrdersService orderService = new OrdersService();

ProductService productService = new ProductService();

CartService cartService = new CartService();
List<Cart> cartList = new ArrayList<Cart>();
//3가지 방법 모두 카트리스트에 임시로 담아서 뽑아낸다.
if(buyType.equals("cart")){
	cartList = cartService.cartItemList(sUserId);
}else if(buyType.equals("cart_select")){
	for(String cart_no_select : cart_no_array){
		cartList.add(cartService.getCartItem(Integer.parseInt(cart_no_select)));
	}
}else if(buyType.equals("direct")){
	Product product = productService.selectByNO(Integer.parseInt(p_no));
	cartList.add(new Cart(0,Integer.parseInt(p_qty),member,product));
}
%>

<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Delicious Book Order</title>
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
<script type="text/javascript">
/*
수량변경
*/
function change_cart_qty(select_cart_id){
	//alert('확인');

	var cart_qty_select= document.getElementById("cart_qty_select_"+selectId);
	cart_qty_select_value= cart_qty_select.options[cart_qty_select.selectedIndex].value;
	var tot_price=0;
	/*
	for(var i=0; i<cart_qty_list.item(i).length; i++){
		var order_qty = console.log(option_values[i].value);
		var product_price = update_order_count.p_price;
		tot_price+= order_qty*product_price;
		
	}
	*/
	
	document.getElementById("tot_price_select_"+selectId).innerHTML = tot_price;
}

function addressModifyAction() {
	f.action = "address_modify_action.jsp";
	f.method = 'POST';
	f.submit();
	alert("주소가 변경되었습니다.");
}


</script>
<body>
	<!-- include_common_top_menu.jsp start-->
	<jsp:include page="include_common_top_menu.jsp"/>
	<!-- include_common_top_menu.jsp end-->
	<!-- include_common_top.jsp start-->
	<jsp:include page="include_common_top.jsp"/>
	<!-- include_common_top.jsp end-->
	<form name="order_create_form" method="post">
		<input type="hidden" name="buyType" value="<%=buyType%>"> <input
			type="hidden" name="p_no" value="<%=p_no%>"> <input
			type="hidden" name="p_qty" value="<%=p_qty%>">
		<%
		for (String cart_no : cart_no_array) {
		%>
		<input type="hidden" name="cart_item_no" value="<%=cart_no%>">
		<%
		}
		%>
	</form>
	<table>
		<center>
	<b><font size=4>주문/결제</font></b>
	</center>
	</table>
	
	<br>
	

	<table width=50% align=center>
	<tr>
	<td bgcolor=#ffe18f align=center height=50><font color=#8d8d8d size=3.5>구매자정보</font></td>
	</tr>
	</table>

	

	<br>
	
	<form name="f" method="post">
	<table align=center width=50%  border="0" cellpadding="0"
			cellspacing="1" bgcolor="BBBBBB";>
			
	<tr>
	<td width=200 height=40 bgcolor="white" align=center class=t1><font color=#8d8d8d size=3>아이디</font></td>
	<td width=200 height=40 bgcolor="white" align=center class=t1 colspan="2"><font color=black size=3><%=member.getUserId() %></font></td>
	</tr>
	
	<tr>
	<td width=200 height=40 bgcolor="white" align=center class=t1><font color=#8d8d8d size=3>이름</font></td>
	<td width=200 height=40 bgcolor="white" align=center class=t1 colspan="2"><font color=black size=3><%=member.getName() %></font></td>
	</tr>
	
	<tr>
	
	<td width=200 height=40 bgcolor="white" align=center class=t1><font color=#8d8d8d size=3>주소</font></td>
	<td width=150 height=40 bgcolor="white" align=center class=t1><font color=black size=3>
	<input type="text" name="address" value="<%=member.getAddress()%>" align=center>
	</font>
	</td>
	
	<td width=50 align=center>
	<input type="button" value="변경" onClick="addressModifyAction()">
	</td>
	
	</tr>
	
</table>
<br>
</form>

<table width=50% align=center>
	<tr>
	<td bgcolor=#ffe18f align=center height=50><font color=#8d8d8d size=3.5>주문제품목록</font></td>
	</tr>
	</table>

<form name="update_order_count" method="post" action="order_create_action">
<table align=center width=50%  border="0" cellpadding="0"
			cellspacing="1" bgcolor="BBBBBB";>
			
	<tr>
	<td width=200 height=40 bgcolor="white" align=center class=t1><font color=#8d8d8d size=3>책&nbsp;제목</font></td>
	<td width=200 height=40 bgcolor="white" align=center class=t1><font color=black size=3>수량</font></td>
	<td width=200 height=40 bgcolor="white" align=center class=t1><font color=black size=3>가격</font></td>
	</tr>
	<%
	int tot_price=0;
	for(Cart cart:cartList){
		tot_price+=cart.getCart_qty()*cart.getProduct().getP_price();
	%>
	<tr>
	<td width=200 height=40 bgcolor="white" align=center class=t1><font color=#8d8d8d size=3><%=cart.getProduct().getP_name() %></font></td>
	<td width=200 height=40 bgcolor="white" align=center class=t1><font color=black size=3>
	
	<select name="cart_qty_select_<%=cart.getCart_no() %>" onChange="change_cart_qty('<%=cart.getCart_no() %>');">
	<option value="1">1
	<option value="2">2
	<option value="3">3
	<option value="4">4
	<option value="5">5
	<option value="6">6
	<option value="7">7 
	<option value="8">8
	<option value="9">9
	<option value="10">10
	</select> 권<br><br> 
	</input></font></td>
	<input type="hidden" name = "p_price" value=<%=cart.getProduct().getP_price() %>>
	<td width=200 height=40 bgcolor="white" align=center class=t1><font color=black size=3><span id="tot_price_span_<%=cart.getCart_no()%>"><%=tot_price %></span></font></td>
	</tr>
	<%} %>
	
</table>
</form>






	<!-- jQuery Library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<!-- Latest compiled and minified JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<!-- Script -->
	<script src="js/script.js"></script>
	<h1>&nbsp;</h1>
	<div id="footer">
		<!-- include_common_bottom.jsp start-->
		<jsp:include page="include_common_bottom.jsp" />
		<!-- include_common_bottom.jsp end-->
	</div>
</body>
</html>
