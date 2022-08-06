<%@page import="com.itwill.bookbread.dto.ReviewBoard"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.bookbread.service.ReviewBoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%

String pageno = request.getParameter("pageno");
if(pageno==null||pageno.equals("")){
	pageno="1";
}

String userId=(String) session.getAttribute("userId");
if(userId==null){
	response.sendRedirect("shop_main.jsp");
	return;
}


ReviewBoardService reviewBoardService = new ReviewBoardService();
List<ReviewBoard> reviewBoardList = reviewBoardService.findReviewById(userId);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 쓴 리뷰</title>
<script type="text/javascript">

</script>
</head>
<body>
	<table>
		<form name="f" method="post">
		<tr>
			<td><b>리뷰번호</b></td>
			<td><b>아이디</b></td>
			<td><b>리뷰제목</b></td>
			<td><b>리뷰내용</b></td>
			<td><b>작성날짜</b></td>
		</tr>			
			<%
			for (int i = 0; i < reviewBoardList.size(); i++) {
			%>
		<tr>
			<td>
			<a href='product_detail.jsp?p_no='<%=reviewBoardList.get(i).getR_no()%>></a></td>
			<td>
			<a href='product_detail.jsp?p_no='<%=reviewBoardList.get(i).getMember().getUserId()%>></a></td>
			<td>
			<a href='product_detail.jsp?p_no='<%=reviewBoardList.get(i).getR_title()%>></a></td>
			<td>
			<a href='product_detail.jsp?p_no='<%=reviewBoardList.get(i).getR_content()%>></a></td>
			<td>
			<a href='product_detail.jsp?p_no='<%=reviewBoardList.get(i).getR_date()%>></a></td>
			<%
			}
			%>
			</tr>
		</form>
		
		<table>
			<tr>
				<td>
					<input type="button" value="수정" onClick="reviewupdate();" >&nbsp;
					<input type="button" value="선택삭제" onClick="reviewRemove();" >&nbsp;
					<input type="button" value="내정보" onClick="memberview();" >&nbsp;
				</td>
			</tr>
		</table>
		
	</table>

</body>
</html>