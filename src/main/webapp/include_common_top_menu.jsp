<%@page import="com.itwill.bookbread.service.CartService"%>
<%@page import="com.itwill.bookbread.dto.Member"%>
<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@page import="java.nio.file.attribute.UserPrincipalLookupService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String msg1 = request.getParameter("msg1");
String msg2 = request.getParameter("msg2");
if (msg1 == null)
	msg1 = "";
if (msg2 == null)
	msg2 = "";
%>
<script type="text/javascript">
	function login_message(){
		alert('로그인을 해주세요.');
		location.href = 'member_login_form.jsp';
	}	
</script>

<div class="top-bar">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="social pull-left"></div>
				</div>
				<div class="col-md-6">
					<div class="action pull-right">
						<ul>
						<%
						if(sUserId == null){
						%>
							<li><a href="member_write_form.jsp"> 회원가입</a></li>
							<li><a href="member_login_form.jsp">로그인</a></li>
						<%} else {
							Member sMember = new MemberService().findMember(sUserId);
						%>
							<li><a href="member_view.jsp"> 마이페이지</a></li>
							<li><a href="member_logout_action.jsp">로그아웃</a></li>
							<li><a href="cart_view.jsp">장바구니</a></li>
							<li><a href="order_list.jsp">주문조회</a></li>
						<%} %>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>