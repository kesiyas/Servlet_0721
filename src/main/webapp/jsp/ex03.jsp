<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post method</title>
</head>
<body>

	<%
	
		// 닉네임을 전달 받고 출력
		String nickname = request.getParameter("nickname");
		
		String animal = request.getParameter("animal");
		
		String select = null;
		if(animal.equals("dog")) {
			select = "dog";
		}
	%>

	<div class="container"><%= nickname %></div>

	<div><%= select %></div>


</body>
</html>