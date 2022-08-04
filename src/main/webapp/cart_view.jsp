<%@page import="java.text.DecimalFormat"%>
<%@page import="com.itwill.bookbread.dto.Cart"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.bookbread.service.CartService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>

<%
CartService cartService = new CartService();
List<Cart> cartList = cartService.cartItemList(sUserId);
Cart cart = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Delicious Book Cart</title>
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
<script type="text/javascript">
	function cart_view_form_order_submit() {
		document.cart_view_form.method = 'POST';
		document.cart_view_form.buyType.value = 'cart';
		document.cart_view_form.action = 'order_create_form.jsp';
		document.cart_view_form.submit();
	}
	/*
	 카트 아이템 카운트 체크박스
	*/
	function cart_item_select_count(){
		var cart_item_no_check_list = document.getElementsByName("cart_item_no_check");
		var cart_item_check_selected_count = 0;
		document.cart_view_form.innerHTML ='';
		document.cart_view_form.innerHTML +="<input type='hidden' name='buyType'>";
		var tot_order_price=0;
		for (var i = 0; i < cart_item_no_check_list.length; i++) {
			if (cart_item_no_check_list.item(i).checked === true) {
				document.cart_view_form.innerHTML += "<input type='hidden' name='cart_item_no' value='"+ cart_item_no_check_list.item(i).value + "'>";
				var updateFormId='cart_update_form_'+ cart_item_no_check_list.item(i).value;
				var cart_qty=document.getElementById(updateFormId).cart_qty.value;
				var cart_product_unit_price=document.getElementById(updateFormId).cart_product_unit_price.value;
				tot_order_price+=cart_qty*cart_product_unit_price;
				cart_item_check_selected_count++;
			}
		}
		document.getElementById('cart_item_select_count').innerHTML = cart_item_check_selected_count;
		document.getElementById('tot_order_price').innerHTML = tot_order_price.toLocaleString();
		
}
	
	function changeNumber(desc, formId) {
		console.log(formId);
		var form = document.getElementById(formId);
		if (desc == '+') {
			form.cart_qty.value = parseInt(form.cart_qty.value) + 1;

		} else if (desc == '-') {
			if (form.cart_qty.value - 1 >= 0) {
				form.cart_qty.value = parseInt(form.cart_qty.value) - 1;
			}
		}

		form.method = 'POST';
		form.action = 'cart_update_item_action.jsp';
		form.submit();
	}
</script>


</head>
<body onload="cart_item_select_count();" bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
<form name="cart_view_form" style="margin:0">
		<input type="hidden" name="buyType">
	</form>
	<!-- include_common_top_menu.jsp start-->
	<jsp:include page="include_common_top_menu.jsp" />
	<!-- include_common_top_menu.jsp end-->
	<!-- include_common_top.jsp start-->
	<jsp:include page="include_common_top.jsp" />
	<!-- include_common_top.jsp end-->
	<table style="margin: auto" border=0 width=70% align=center>
		<tr valign=bottom>
			<td width=30% align="center" class=t1><font size=4 color=#000000><b>내&nbsp장바구니</b></font></td>
	</table>
	<div class="slider">
		<div class="container">
			<div class="row">
				<%
				int cart_column_size = 4;
				int cart_line_count = 1;
				int tot_price = 0;

				for (int i=0;i<cartList.size();i++) {
					cart=cartList.get(i);
			%>
			
			<%
			if(i%cart_column_size==0){}
			%>
			
				<%
				
				
				%>
				<div class="col-md-4 col-sm-4">
					<div class="slider small-slider">
						<div id="small-featured" class="carousel slide"
							data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#small-featured" data-slide-to="0"
									class="active"></li>
							</ol>
							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<input type="checkbox" name="cart_item_no_check" >
								<!--내 장바구니타이틀이랑 체크박스가 들어가야할 것 같은.. -->
								<div class="item active"
									style="background-image: url('images/<%=cart.getProduct().getP_image()%>')">
									<div class="carousel-caption">
										<a
											href="product_detail.jsp?p_no=<%=cart.getProduct().getP_no()%>"
											class="btn btn-theme">자세히&nbsp;&nbsp;&nbsp;&nbsp;></a>
									</div>
								</div>
								<div align="center">
									가격:<%=cart.getProduct().getP_price()%><br> 
									
									
									<form method="post"
												id="cart_update_form_<%=cart.getCart_no()%>">
												<input type="hidden" name="cart_no"
													value="<%=cart.getCart_no()%>"> 
													<input type="button" value="-"
													onclick="changeNumber('-','cart_update_form_<%=cart.getCart_no()%>');"/>
												<input type="text" readonly="readonly" size="2"
													style="text-align: center; width: 15%" name="cart_qty"
													value="<%=cart.getCart_qty()%>"> <input
													type="button" value="+"
													onclick="changeNumber('+','cart_update_form_<%=cart.getCart_no()%>');"/>
												<input type="hidden" name="cart_product_unit_price" value="<%=cart.getProduct().getP_price()%>"/>	
									</form>
								</div>

							</div>
						</div>
						<h1>&nbsp;</h1>
					</div>
					<%
					if (i % cart_column_size == 3) {
					}
					%>

				</div>
				<%
				}
				%>
			</div>
		</div>
	</div>
	<table>
		<table align=center border="0" cellpadding=0">
			<tr>
				<td align>총&nbsp;가격&nbsp;:&nbsp;<%=tot_price%>&nbsp;원
				</td>
		</table>


		<table style="padding-left: 10px" border="0" cellpadding="0"
			cellspacing="1" width="1800">
			<tr>
				<td align=center>&nbsp;&nbsp; <a href="shop_main.jsp"
					class=m1>계속 구경하기</a>&nbsp;&nbsp; <%
 if (cartList.size() >= 1) {
 %> <a href="javascript:cart_view_form_order_submit();" class=m1>총 <span
						style="font-weight: bold;" id="cart_item_select_count"><%=cartList.size()%></span>개
						주문하기[주문폼]
				</a> 
				<form action="cart_delete_item_acion.jsp" method="post">
					<input type="submit" value="선택삭제"name="cart_no">
				</form>
				<form action="cart_delete_action.jsp" method="post">
					<input type="submit" value="전체삭제" name="cart_userId">
				</form>
				
<%
 }
 %>
				</td>
			</tr>
		</table>
		</td>
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
