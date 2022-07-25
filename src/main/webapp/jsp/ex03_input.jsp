<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post method input</title>
</head>
<body>

	<form method="post" action="/jsp/ex03.jsp">
	
		<label>닉네임</label> <input type="text" name="nickname">
		
		<h4>강아지 or 고양이 or 사자</h4>
		<label>강아지 <input type="radio" name="animal" value="dog"></label>
		<label>고양이 <input type="radio" name="animal" value="cat"></label>
		<label>사자 <input type="radio" name="animal" value="lion"></label>
		
		<button type="submit">입력</button>
	
	</form>

	





</body>
</html>