<%@page import="com.itwill.bookbread.service.ReviewBoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(request.getMethod().equalsIgnoreCase("GET")){
	response.sendRedirect("product_detail.jsp");
	return;
}
String userId = request.getParameter("userId");
String r_no = request.getParameter("r_no");

ReviewBoardService reviewBoardService = new ReviewBoardService();

boolean result = true;
String msg = "";

try {
	reviewBoardService.removeByUserId(userId);
	response.sendRedirect("review_board_list.jsp");
	if (userId == null) {
		result = false;
		msg = "삭제실패";
	}else {
		reviewBoardService.removeByUserId(userId);
		result = true;
		msg = "삭제성공";
	}
} catch (Exception e) {
	e.printStackTrace();
}






%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>