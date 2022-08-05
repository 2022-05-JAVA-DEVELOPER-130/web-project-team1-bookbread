<%@page import="com.itwill.bookbread.dto.ReviewBoard"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.bookbread.service.ReviewBoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="login_check.jspf"%>
<%

String p_noStr = request.getParameter("p_no");
if (p_noStr == null || p_noStr.equals("")) {
		//response.sendRedirect("shop_main.jsp");
		return;
}

ReviewBoardService reviewBoardService = new ReviewBoardService();
List<ReviewBoard> reviewBoardList = reviewBoardService.findReviewListByPno(Integer.parseInt(p_noStr));
ReviewBoard rb = new ReviewBoard();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 쓴 리뷰</title>
<script type="text/javascript">
<%--
function myreview() {
	location.href = ''+'<%=%>';
}
--%>

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
		<tr>
			<%
			for (int i = 0; i < reviewBoardList.size(); i++) {
			%>
			<td><b><%=reviewBoardList.get(i).getR_no()%></b></td>
			<td><b><%=reviewBoardList.get(i).getMember().getUserId()%></b></td>
			<td><b><%=reviewBoardList.get(i).getR_title()%></b></td>
			<td><b><%=reviewBoardList.get(i).getR_content()%></b></td>
			<td><b><%=reviewBoardList.get(i).getR_date()%></b></td>
			<%
			}
			%>
		</tr>
		</form>
		<table>
			<tr>
				<td>
					<input type="button" value="선택삭제" onClick="reviewRemove();" >&nbsp;
					<input type="button" value="전체삭제" onClick="reviewRemoveAll();" >&nbsp;
				</td>
			</tr>
		</table>
	</table>

</body>
</html>