<%@page import="com.itwill.bookbread.dto.BookType"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itwill.bookbread.dto.ReviewBoard"%>
<%@page import="com.itwill.bookbread.service.ReviewBoardService"%>
<%@page import="com.itwill.bookbread.dto.Product"%>
<%@page import="com.itwill.bookbread.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
  <%
  
  String p_noStr = request.getParameter("p_no");
  if (p_noStr == null || p_noStr.equals("")) {
		response.sendRedirect("shop_main.jsp");
		return;
  }
  
  boolean isLogin = false;
  if (session.getAttribute("sUserId") != null) {
  	isLogin = true;
  }
  
  ProductService productService = new ProductService();
  Product product = productService.selectByNO(Integer.parseInt(p_noStr));
  ReviewBoardService reviewBoardService = new ReviewBoardService();
  ReviewBoard reviewBoard = new ReviewBoard();
  
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Delicious Book Detail</title>
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
	function add_cart_popup_window(){
		if (<%=!isLogin%>) {
			alert('로그인 하세요');
			location.href = 'member_login_form.jsp';
		} else {
			
			var left = Math.ceil(( window.screen.width)/3);
			var top = Math.ceil(( window.screen.height)/3); 
			console.log(left);
			console.log(top);
			var cartWin = window.open("about:blank","cartForm","width=300,height=200,top="+top+",left="+left+",location=no, directories=no, status=no, menubar=no, scrollbars=no,copyhistory=no");
			document.add_cart_form.action = 'cart_add_action_popup_window.jsp';
			document.add_cart_form.target = 'cartForm';
			document.add_cart_form.method = 'POST';
			document.add_cart_form.submit();
		}
	}
	
	function add_cart_action(){
		if (<%=!isLogin%>) {
			alert('로그인 하세요');
			location.href = 'member_login_form.jsp';
		} else {
			document.add_cart_form.action = 'cart_add_action.jsp';
			document.add_cart_form.target = 'cartForm';
			document.add_cart_form.method = 'POST';
			document.add_cart_form.submit();
		}
	}

	function order_create_form() {
		if (<%=!isLogin%>) {
			alert('로그인 하세요');
			location.href = 'member_login_form.jsp';
		} else {
			document.product_detail_form.method = 'POST';
			document.product_detail_form.action = 'order_create_form.jsp';
			document.product_detail_form.submit();
		}
	}
	function productList() {
		location.href = 'product_list1.jsp?type_no='+'<%=product.getBookType().getType_no()%>';
	}
</script>
</head>
<body>
	<!-- include_common_top_menu.jsp start-->
	<jsp:include page="include_common_top_menu.jsp"/>
	<!-- include_common_top_menu.jsp end-->
	<!-- include_common_top.jsp start-->
	<jsp:include page="include_common_top.jsp"/>
	<!-- include_common_top.jsp end-->

<form name="product_detail_form">
<input type="hidden" name="p_no" value=<%=product.getP_no() %>>
<input type="hidden" name="p_qty" value="1">
<input type="hidden" name="buyType" value="direct">
</form>


<table style="margin: auto" border=0 width=70% height=400
								align=center>
								<tr valign=bottom>
									<td width=15% align=center class=t1><font size=2
										color=#000000><b>도&nbsp;&nbsp;서</b></font></td>
									<td width=45% align=center class=t1><font size=2
										color=#000000><b>도서 소개</b></font></td>
									<td width=40% align=center class=t1><font size=2
										color=#000000><b>주&nbsp;&nbsp;문</b></font></td>
								</tr>
								<tr width=100%>
									<td colspan=3 height=5><hr color=#556b2f></td>
								</tr>
								<tr>
									<td align=center><img border=0
										src='images/<%=product.getP_image()%>'></td>
									<td width=30% height=300 class=t1>
										<ul type="disc">
											<li type="none"><font size=6px><b><%=product.getP_name()%></b></font>&nbsp;&nbsp;&nbsp;
											</b></li><br/>
											<li><font size=3px><b>저&nbsp;&nbsp;&nbsp;자 : <%=product.getP_author()%></b></font> &nbsp;&nbsp;&nbsp;
											</b></li>
											<li><font size=3px><b>출판사 : <%=product.getP_publisher()%></b></font>&nbsp;&nbsp;&nbsp;
											</b></li>
											<li><font size=3px><b>출판일 : <%=product.getP_publish_date()%></b></font>&nbsp;&nbsp;&nbsp;
											</b></li>
											<li><font size=3px><b>분&nbsp;&nbsp;&nbsp;류 : <%=product.getBookType().getP_type()%></b></font>&nbsp;&nbsp;&nbsp;
											</b></li>
											<li><b><font size=3px color=#000000>도서가격 : <%=product.getP_price()%>원</font></b>&nbsp;&nbsp;&nbsp;
											</font></b></li><br/>
											<li><font color=#848484>[MD리뷰]&nbsp;<%=product.getP_detail()%></font></li><br/><br/>
										</ul>
									</td>
									<td width=30% height=300 align=center class=t1>
										<form name="add_cart_form" method="post" action="cart_add_action.jsp">
											수량 :
											<!-- 
											 <input type=text name="cart_qty" value=1 size=4 class=TXTFLD>  
											-->
											<select name="cart_qty">
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
												<input type=submit value="장바구니에담기[장바구니보여주기]"/><br><br> 
												<input type=button onclick="add_cart_popup_window();" value="장바구니에담기[계속쇼핑팝업]" />
												<input type="hidden" name=p_no value="<%=product.getP_no()%>">
										</form>
									</td>
								</tr>
								<tr>
									<td colSpan=3 height=21><hr color=#556b2f></td>
								</tr>
							</table>

							<table style="margin: auto" border="0" cellpadding="0" cellspacing="1">
								<tr valign=bottom>
									<td align=center><input type="button" value="주문하기[주문폼]"
										onClick="order_create_form();"> &nbsp; <input
										type="button" value="상품리스트" onClick="productList();"></td>
								</tr>
							</table><br/><br/><br/>
							
							
							
<table style="margin: auto" border=0 width=70% height=376
								align=center>
								<tr valign=top>
									<td width=120 align=center class=t1><font size=2
										color=#000000><b>리뷰 번호</b></font></td>
									<td width=120 align=center class=t1><font size=2
										color=#000000><b>작성 날짜</b></font></td>
									<td width=280 align=center class=t1><font size=2
										color=#000000><b>도서 이름</b></font></td>
									<td width=400 align=center class=t1><font size=2
										color=#000000><b>리뷰 내용</b></font></td>
									<td width=120 align=center class=t1><font size=2
										color=#000000><b>조회수 </b></font></td>
									<td width=120 align=center class=t1><font size=2
										color=#000000><b>아이디</b></font></td>
								</tr>
								<tr>
										<td width=280 bgcolor="ffffff" style="padding-left: 10px" align="left">
										
										</a>
										</td>
										<td width=120 align=center bgcolor="ffffff"><%=reviewBoard.getR_title()%>
										</td>
										<td width=120 bgcolor="ffffff" style="padding-left: 10px" align="left">
											
										</td>
										<td width=70 align=center bgcolor="ffffff" align="left"><%=reviewBoard.getR_content()%>
										</td>
									</tr>
								
								
								
								</table>
									
							




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