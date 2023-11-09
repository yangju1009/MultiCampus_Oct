<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//쿠키를 만들자
	Cookie c1 = new Cookie("name", "Yang");
	Cookie c2 = new Cookie("age", "100"); 
	// Cookie는 이름 + 값이 필요함
	// HttpServletResponse response = new HttpServletResponse();
	// 서버 ------> 브라우저
	//rsponse.out.print("<html><head>~~~~~~</head></html>")
	response.addCookie(c1);
	response.addCookie(c2);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>브라우저에 쿠키 넣기</h3>
	<a href="쿠키보기.jsp">쿠키보기</a>
</body>
</html>