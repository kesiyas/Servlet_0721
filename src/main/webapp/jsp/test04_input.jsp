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
			<div class="d-flex">
				<input type="text" name="number1" class="form-control col-3 mr-2">
				<select name="calculation" class="form-control col-2 mr-2">
					<option>+</option>
					<option>-</option>
					<option>X</option>
					<option>/</option>						
				</select>
				<input type="text" name="number2" class="form-control col-3 mr-2">
				<button type="submit" class="btn btn-success">계산</button>
			</div>
		</form>
	
	</div>



</body>
</html>