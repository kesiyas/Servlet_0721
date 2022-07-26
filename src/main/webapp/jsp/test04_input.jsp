<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산 입력</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<h1>사칙 연산</h1>
		
		<form method="post" action="/jsp/test04.jsp">
			
			<input type="text" name="number">
			<select name="calculation">
				<option>+</option>
				<option>-</option>
				<option>X</option>
				<option>/</option>						
			</select>
			<button type="submit">계산</button>
		
		</form>
		
		
		
		
	</div>



</body>
</html>