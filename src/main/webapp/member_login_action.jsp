<%@page import="com.itwill.bookbread.user.exception.UserNotFoundException"%>
<%@page import="com.itwill.bookbread.dto.Member"%>
<%@page import="com.itwill.bookbread.service.MemberService"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>

<%
	if (request.getMethod().equalsIgnoreCase("GET")) {
		response.sendRedirect("member_login_form.jsp");
		return;
	}
	String userId = request.getParameter("userId");
	String password =request.getParameter("password");
	MemberService memberService= new MemberService();
	int rowCount = memberService.login(userId, password);
	if(rowCount==0){
		 //0:아이디존재안함
		 String msg1 = userId+" 는 존재하지않는 아이디입니다.";
		 request.setAttribute("msg1", msg1);
		 Member fMember=new Member(userId,password,"","","","","","");
		 request.setAttribute("fMember", fMember);
		 
		 RequestDispatcher rd=
		 	request.getRequestDispatcher("member_login_form.jsp");
		 rd.forward(request, response);
	 }else if(rowCount==1){
		 //1:패쓰워드 불일치
		 String msg2 = "패쓰워드가 일치하지 않습니다.";
		 request.setAttribute("msg2", msg2);
		 Member fMember=new Member(userId,password,"","","","","","");
		 request.setAttribute("fMember", fMember);
		 
		 RequestDispatcher rd=
			request.getRequestDispatcher("member_login_form.jsp");
		rd.forward(request, response);
	 }else if(rowCount==2){
		 //2:로그인성공(세션)
		session.setAttribute("sUserId", userId);
		response.sendRedirect("shop_main.jsp");		 
	 }
%>			
			
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%=rowCount %>
</body>
</html>
