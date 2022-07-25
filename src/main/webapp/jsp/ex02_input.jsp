<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get input</title>
</head>
<body>

	<a href="/jsp/ex02.jsp?name=우영우&birthDay=20000823">링크로 이동</a>

	<form method="get" action="/jsp/ex02.jsp">
		<label>이름</label> <input type="text" name="name">
		<label>생년월일</label> <input type="text" name="birthDay">
		<button type="submit">입력</button>	
	</form>


</body>
</html>