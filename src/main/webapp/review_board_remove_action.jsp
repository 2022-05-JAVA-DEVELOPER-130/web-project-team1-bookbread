<%@page import="com.itwill.bookbread.service.ReviewBoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(request.getMethod().equalsIgnoreCase("POST")){
	response.sendRedirect("review_board_write.jsp");
	return;
}

try {
	ReviewBoardService reviewBoardService = new ReviewBoardService();
	//Integer r_no = Integer.parseInt(request.getParameter("r_no"));
	String userId = request.getParameter("userId");
	reviewBoardService.removeByUserId(userId);
	response.sendRedirect("review_board_list.jsp");
	
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